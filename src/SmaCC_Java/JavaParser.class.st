Class {
	#name : 'JavaParser',
	#superclass : 'SmaCCGLRParser',
	#classInstVars : [
		'keywords'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaParser class >> ambiguousTransitions [
^#(
#[ 0 6 0 37]
#[ 0 14 0 217]
#[ 0 14 0 225]
#[ 0 14 0 233]
#[ 0 14 0 237]
#[ 0 14 0 249]
#[ 0 14 0 53]
#[ 0 14 0 253]
#[ 0 14 1 9]
#[ 0 14 1 13]
#[ 0 14 1 25]
#[ 0 14 0 18 1 93]
#[ 0 18 2 117]
#[ 0 22 0 225]
#[ 0 22 0 233]
#[ 0 22 0 237]
#[ 0 22 0 249]
#[ 0 22 0 253]
#[ 0 22 1 9]
#[ 0 22 1 13]
#[ 0 22 1 25]
#[ 0 22 3 9]
#[ 0 26 2 241]
#[ 0 26 0 37]
#[ 0 26 0 41]
#[ 0 22 0 26 0 225]
#[ 0 22 0 26 0 233]
#[ 0 22 0 26 0 237]
#[ 0 22 0 26 0 249]
#[ 0 26 0 53]
#[ 0 22 0 26 0 253]
#[ 0 22 0 26 1 9]
#[ 0 22 0 26 1 13]
#[ 0 26 0 69]
#[ 0 26 0 73]
#[ 0 26 0 81]
#[ 0 26 0 85]
#[ 0 26 0 89]
#[ 0 26 0 97]
#[ 0 22 0 26 1 25]
#[ 0 26 3 5]
#[ 0 26 0 105]
#[ 0 26 0 109]
#[ 0 26 0 113]
#[ 0 22 0 26]
#[ 0 26 0 117]
#[ 0 22 0 26 3 9]
#[ 0 18 3 217]
#[ 0 18 1 93]
#[ 0 18 0 218]
#[ 0 18 0 213 0 218]
#[ 0 226 4 125]
#[ 0 18 1 6 4 145]
#[ 0 213 0 254 1 6]
#[ 1 114 4 169]
#[ 1 110 1 114]
#[ 1 122 1 126]
#[ 1 198 4 241]
#[ 0 14 0 18 2 117]
#[ 0 18 0 218 1 214]
#[ 0 218 1 214]
#[ 1 254 5 77]
#[ 1 254 5 81]
#[ 1 254 5 85]
#[ 2 2 5 89]
#[ 2 2 5 93]
#[ 2 6 5 97]
#[ 2 6 5 101]
#[ 2 6 5 105]
#[ 2 10 5 109]
#[ 2 10 5 113]
#[ 2 10 5 117]
#[ 2 10 5 121]
#[ 2 10 5 125]
#[ 2 14 5 129]
#[ 2 14 5 133]
#[ 2 18 5 137]
#[ 2 22 5 141]
#[ 2 26 5 145]
#[ 2 30 5 149]
#[ 2 34 5 153]
#[ 2 34 5 157]
#[ 2 46 2 50]
#[ 0 18 0 213]
#[ 2 54 2 82]
#[ 2 62 2 90]
#[ 0 14 0 18 3 217]
#[ 0 18 6 221]
#[ 3 66 3 98]
#[ 0 18 8 137]
#[ 0 213 1 6]
#[ 0 14 5 201]
#[ 4 70 5 77]
#[ 4 70 5 81]
#[ 4 70 5 85]
#[ 4 74 5 77]
#[ 4 74 5 81]
#[ 4 74 5 85]
#[ 4 78 5 89]
#[ 4 78 5 93]
#[ 4 82 5 89]
#[ 4 82 5 93]
#[ 4 86 5 89]
#[ 4 86 5 93]
#[ 4 90 5 97]
#[ 4 90 5 101]
#[ 4 90 5 105]
#[ 4 94 5 97]
#[ 4 94 5 101]
#[ 4 94 5 105]
#[ 4 98 5 97]
#[ 4 98 5 101]
#[ 4 98 5 105]
#[ 4 106 5 97]
#[ 4 106 5 101]
#[ 4 106 5 105]
#[ 4 110 5 109]
#[ 4 110 5 113]
#[ 4 110 5 117]
#[ 4 110 5 121]
#[ 4 110 5 125]
#[ 4 114 5 109]
#[ 4 114 5 113]
#[ 4 114 5 117]
#[ 4 114 5 121]
#[ 4 114 5 125]
#[ 4 118 5 129]
#[ 4 118 5 133]
#[ 4 122 5 137]
#[ 4 126 5 141]
#[ 4 130 5 145]
#[ 4 134 5 149]
#[ 1 114 10 117]
#[ 0 218 10 193]
#[ 0 26 0 101]
#[ 0 18 12 25]
#[ 2 101 5 110]
#[ 2 105 5 110]
#[ 0 213 5 110]
	).
]

{ #category : 'generated-accessing' }
JavaParser class >> cacheId [
	^'2026-10-17T20:50:48.315143+02:00'
]

{ #category : 'generated' }
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
	| module
	;
module
	: ""open"" 'openToken'? ""module"" 'moduleToken' name 'name' ""{"" 'leftBrace' module_body ""}"" 'rightBrace' {{}}
	;
module_body
	: module_body_item 'directive'*
	;
module_body_item
	: ""requires"" 'requiresToken' (""static"" 'staticToken' | ""transitive"" 'transitiveToken')? name 'name' "";"" 'semicolon' {{ModuleRequires}}
	| ""opens"" 'opensToken' name 'name' (""to"" 'toToken' name 'toName')? "";"" 'semicolon' {{ModuleOpens}}
	| ""exports"" 'exportsToken' name 'name' (""to"" 'toToken' export_to_names)? "";"" 'semicolon' {{ModuleExports}}
	| ""uses"" 'usesToken' name 'name' "";"" 'semicolon' {{ModuleUses}}
	| ""provides"" 'providesToken' name 'name' ""with"" 'withToken' with_names "";"" 'semicolon' {{ModuleProvides}}
	;
with_names
	: (name 'withName' "","" 'comma')* name 'withName'
	;
export_to_names
	: (name 'toName' "","" 'comma')* name 'toName'
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
	| name
	| field_access
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

{ #category : 'file types' }
JavaParser class >> fileExtension [
	^ '.java'
]

{ #category : 'file types' }
JavaParser class >> fileExtensionType [
	^ 'Java files'
]

{ #category : 'private' }
JavaParser class >> keywords [
	^ keywords
		ifNil: [ keywords := (Set new: 100)
				addAll:
					#('abstract' 'assert' 'boolean' 'break' 'byte' 'case' 'catch' 'char' 'class' 'const' 'continue' 'default' 'do' 'double' 'else' 'enum' 'extends' 'final' 'finally' 'float' 'for' 'goto' 'if' 'implements' 'import' 'instanceof' 'int' 'interface' 'long' 'native' 'new' 'package' 'private' 'protected' 'public' 'return' 'short' 'static' 'strictfp' 'super' 'switch' 'synchronized' 'this' 'throw' 'throws' 'transient' 'try' 'void' 'volatile' 'while');
				yourself ]
]

{ #category : 'generated' }
JavaParser class >> reduceTable [
^#(
	#(310 0 #reduceActionForannotations1: 32310273 false)
	#(140 0 #reduceActionForcompilation_unit1: 5160961 false)
	#(336 0 #reduceActionForannotations1: 35038209 false)
	#(328 0 #reduceActionFortype_arguments_opt1: 34134017 false)
	#(323 0 #nil 33602561 false)
	#(212 0 #reduceActionForannotations1: 15214593 false)
	#(157 1 #reduceActionFortype_declaration5: 6925317 false)
	#(166 1 #reduceActionFormodifier5: 8019973 false)
	#(166 1 #reduceActionFormodifier5: 8019974 false)
	#(166 1 #reduceActionFormodifier5: 8019975 false)
	#(166 1 #reduceActionFormodifier5: 8019981 false)
	#(166 1 #reduceActionFormodifier5: 8019971 false)
	#(166 1 #reduceActionFormodifier5: 8019970 false)
	#(166 1 #reduceActionFormodifier5: 8019969 false)
	#(166 1 #reduceActionFormodifier5: 8019980 false)
	#(166 1 #reduceActionFormodifier5: 8019972 false)
	#(166 1 #reduceActionFormodifier5: 8019979 false)
	#(166 1 #reduceActionFormodifier5: 8019976 false)
	#(166 1 #reduceActionFormodifier5: 8019977 false)
	#(166 1 #reduceActionFormodifier5: 8019978 false)
	#(125 1 #liftFirstValue: 3765249 false)
	#(140 1 #liftFirstValue: 5160969 false)
	#(140 1 #reduceActionForcompilation_unit3: 5160963 false)
	#(140 1 #reduceActionForcompilation_unit2: 5160962 false)
	#(140 1 #reduceActionForcompilation_unit5: 5160965 false)
	#(151 1 #reduceActionForimport_declarations1: 6152193 false)
	#(154 1 #liftFirstValue: 6500353 false)
	#(154 1 #liftFirstValue: 6500354 false)
	#(152 1 #reduceActionForimport_declarations1: 6261761 false)
	#(157 1 #liftFirstValue: 6925316 false)
	#(165 1 #reduceActionForimport_declarations1: 7948289 false)
	#(157 1 #liftFirstValue: 6925313 false)
	#(157 1 #liftFirstValue: 6925314 false)
	#(157 1 #liftFirstValue: 6925315 false)
	#(166 1 #liftFirstValue: 8019982 false)
	#(167 1 #liftFirstValue: 8669201 false)
	#(226 1 #reduceActionForempty_statement1: 17402881 false)
	#(128 1 #reduceActionForprimitive_type2: 4209666 false)
	#(130 1 #reduceActionForintegral_type1: 4343809 false)
	#(130 1 #reduceActionForintegral_type5: 4343813 false)
	#(131 1 #reduceActionForfloating_point_type2: 4520962 false)
	#(131 1 #reduceActionForfloating_point_type1: 4520961 false)
	#(130 1 #reduceActionForintegral_type3: 4343811 false)
	#(130 1 #reduceActionForintegral_type4: 4343812 false)
	#(130 1 #reduceActionForintegral_type2: 4343810 false)
	#(262 1 #reduceActionForprimary_no_new_array2: 22161410 false)
	#(187 1 #reduceActionForvoid1: 10892289 false)
	#(126 1 #reduceActionForliteral1: 3823617 false)
	#(126 1 #reduceActionForliteral2: 3823618 false)
	#(126 1 #reduceActionForliteral3: 3823619 false)
	#(126 1 #reduceActionForliteral4: 3823620 false)
	#(126 1 #reduceActionForliteral5: 3823621 false)
	#(126 1 #reduceActionForliteral6: 3823622 false)
	#(138 1 #reduceActionForprimary_no_new_array2: 5003265 false)
	#(262 1 #liftFirstValue: 22161409 false)
	#(127 1 #liftFirstValue: 4162561 false)
	#(128 1 #liftFirstValue: 4209665 false)
	#(129 1 #liftFirstValue: 4284417 false)
	#(129 1 #liftFirstValue: 4284418 false)
	#(127 1 #liftFirstValue: 4162562 false)
	#(132 1 #liftFirstValue: 4615169 false)
	#(132 1 #liftFirstValue: 4615170 false)
	#(285 1 #liftFirstValue: 27053058 false)
	#(306 1 #liftFirstValue: 32000001 false)
	#(338 1 #liftFirstValue: 35185666 false)
	#(137 1 #liftFirstValue: 4959233 false)
	#(137 1 #liftFirstValue: 4959234 false)
	#(220 1 #liftFirstValue: 16386051 false)
	#(220 1 #liftFirstValue: 16386052 false)
	#(224 1 #liftFirstValue: 16985089 false)
	#(220 1 #liftFirstValue: 16386049 false)
	#(220 1 #liftFirstValue: 16386050 false)
	#(223 1 #liftFirstValue: 16772097 false)
	#(224 1 #liftFirstValue: 16985097 false)
	#(224 1 #liftFirstValue: 16985090 false)
	#(223 1 #liftFirstValue: 16772098 false)
	#(224 1 #liftFirstValue: 16985091 false)
	#(223 1 #liftFirstValue: 16772099 false)
	#(223 1 #liftFirstValue: 16772100 false)
	#(224 1 #liftFirstValue: 16985092 false)
	#(223 1 #liftFirstValue: 16772101 false)
	#(224 1 #liftFirstValue: 16985093 false)
	#(223 1 #liftFirstValue: 16772102 false)
	#(224 1 #liftFirstValue: 16985094 false)
	#(224 1 #liftFirstValue: 16985095 false)
	#(224 1 #liftFirstValue: 16985096 false)
	#(224 1 #liftFirstValue: 16985099 false)
	#(224 1 #liftFirstValue: 16985098 false)
	#(224 1 #liftFirstValue: 16985100 false)
	#(224 1 #liftFirstValue: 16985101 false)
	#(285 1 #liftFirstValue: 27053057 false)
	#(338 1 #liftFirstValue: 35185665 false)
	#(261 1 #liftFirstValue: 22092801 false)
	#(223 1 #liftFirstValue: 16772104 false)
	#(262 1 #liftFirstValue: 22161421 false)
	#(262 1 #liftFirstValue: 22161420 false)
	#(229 1 #liftFirstValue: 17675271 false)
	#(262 1 #liftFirstValue: 22161412 false)
	#(261 1 #liftFirstValue: 22092802 false)
	#(262 1 #liftFirstValue: 22161413 false)
	#(306 1 #liftFirstValue: 32000002 false)
	#(229 1 #liftFirstValue: 17675270 false)
	#(262 1 #liftFirstValue: 22161414 false)
	#(262 1 #liftFirstValue: 22161415 false)
	#(306 1 #liftFirstValue: 32000003 false)
	#(229 1 #liftFirstValue: 17675268 false)
	#(285 1 #liftFirstValue: 27053059 false)
	#(229 1 #liftFirstValue: 17675269 false)
	#(285 1 #liftFirstValue: 27053060 false)
	#(229 1 #liftFirstValue: 17675266 false)
	#(229 1 #liftFirstValue: 17675267 false)
	#(229 1 #liftFirstValue: 17675265 false)
	#(133 1 #reduceActionForclass_or_interface_type1: 4678657 false)
	#(332 1 #liftFirstValue: 34557953 false)
	#(332 1 #liftFirstValue: 34557954 false)
	#(223 1 #liftFirstValue: 16772103 false)
	#(183 1 #reduceActionForvariable_declarator_id1: 10297345 false)
	#(272 1 #reduceActionForuntyped_lambda_parameter1: 23953409 false)
	#(308 1 #liftFirstValue: 32201730 false)
	#(269 1 #reduceActionForlambda_parameters3: 23633923 false)
	#(291 1 #liftFirstValue: 27873281 false)
	#(293 1 #liftFirstValue: 28548097 false)
	#(288 1 #liftFirstValue: 27380737 false)
	#(288 1 #liftFirstValue: 27380738 false)
	#(288 1 #liftFirstValue: 27380741 false)
	#(291 1 #liftFirstValue: 27873284 false)
	#(294 1 #liftFirstValue: 28941313 false)
	#(295 1 #liftFirstValue: 29230081 false)
	#(296 1 #liftFirstValue: 29636609 false)
	#(297 1 #liftFirstValue: 30409729 false)
	#(298 1 #liftFirstValue: 30688257 false)
	#(299 1 #liftFirstValue: 30837761 false)
	#(300 1 #liftFirstValue: 30995457 false)
	#(301 1 #liftFirstValue: 31171585 false)
	#(302 1 #liftFirstValue: 31354881 false)
	#(303 1 #liftFirstValue: 31542273 false)
	#(304 1 #liftFirstValue: 31824897 false)
	#(308 1 #liftFirstValue: 32201729 false)
	#(288 1 #liftFirstValue: 27380742 false)
	#(304 1 #liftFirstValue: 31824898 false)
	#(178 1 #liftFirstValue: 9628675 false)
	#(177 1 #liftFirstValue: 9485313 false)
	#(178 1 #liftFirstValue: 9628673 false)
	#(178 1 #liftFirstValue: 9628674 false)
	#(177 1 #liftFirstValue: 9485314 false)
	#(177 1 #liftFirstValue: 9485315 false)
	#(177 1 #reduceActionForclass_body_declaration4: 9485316 false)
	#(208 1 #liftFirstValue: 14743556 false)
	#(339 1 #liftFirstValue: 35226625 false)
	#(209 1 #liftFirstValue: 14888961 false)
	#(339 1 #liftFirstValue: 35226626 false)
	#(208 1 #liftFirstValue: 14743553 false)
	#(208 1 #liftFirstValue: 14743555 false)
	#(208 1 #liftFirstValue: 14743554 false)
	#(311 2 #reduceActionForannotation1: 32368641 false)
	#(140 2 #reduceActionForcompilation_unit4: 5160964 false)
	#(151 2 #reduceActionForimport_declarations2: 6152194 false)
	#(152 2 #reduceActionForimport_declarations2: 6261762 false)
	#(140 2 #reduceActionForcompilation_unit7: 5160967 false)
	#(140 2 #reduceActionForcompilation_unit6: 5160966 false)
	#(165 2 #reduceActionForimport_declarations2: 7948290 false)
	#(310 2 #reduceActionForimport_declarations2: 32310274 false)
	#(289 2 #reduceActionForpreincrement_expression1: 27658241 false)
	#(290 2 #reduceActionForpredecrement_expression1: 27764737 false)
	#(331 0 #reduceActionFortype_argument_type3: 34466819 false)
	#(328 2 #reduceActionFortype_arguments_opt3: 34134019 false)
	#(329 1 #reduceActionFortype_arguments1: 34241537 false)
	#(246 2 #reduceActionForbreak_statement1: 20131841 false)
	#(247 2 #reduceActionForcontinue_statement1: 20240385 false)
	#(134 1 #liftFirstValue: 4742145 false)
	#(248 2 #reduceActionForreturn_statement1: 20361217 false)
	#(225 2 #reduceActionForyield_statement1: 17297409 false)
	#(218 2 #reduceActionForblock1: 16205825 false)
	#(219 1 #reduceActionForimport_declarations1: 16281601 false)
	#(333 2 #reduceActionForsimple_type_name1: 34617345 false)
	#(136 2 #reduceActionForarray_type1: 4836353 false)
	#(280 1 #reduceActionFordims1: 25815041 false)
	#(221 2 #reduceActionForlocal_variable_declaration_statement1: 16512001 false)
	#(228 2 #reduceActionForexpression_statement1: 17570817 false)
	#(286 2 #reduceActionForpostincrement_expression1: 27157505 false)
	#(287 2 #reduceActionForpostdecrement_expression1: 27268097 false)
	#(307 1 #liftFirstValue: 32063492 false)
	#(307 1 #liftFirstValue: 32063498 false)
	#(307 1 #liftFirstValue: 32063490 false)
	#(307 1 #liftFirstValue: 32063493 false)
	#(307 1 #liftFirstValue: 32063494 false)
	#(307 1 #liftFirstValue: 32063491 false)
	#(307 1 #liftFirstValue: 32063495 false)
	#(307 1 #liftFirstValue: 32063489 false)
	#(307 1 #liftFirstValue: 32063496 false)
	#(307 1 #liftFirstValue: 32063497 false)
	#(307 1 #liftFirstValue: 32063499 false)
	#(307 1 #liftFirstValue: 32063500 false)
	#(136 2 #reduceActionForarray_type1: 4836354 false)
	#(337 1 #reduceActionFormodifier5: 35117057 false)
	#(337 1 #liftFirstValue: 35117058 false)
	#(336 2 #reduceActionForimport_declarations2: 35038210 false)
	#(291 2 #reduceActionForunary_expression_not_plus_minus3: 27873283 false)
	#(269 2 #reduceActionForlambda_parameters1: 23633921 false)
	#(271 1 #liftFirstValue: 23883777 false)
	#(270 1 #reduceActionFortype_arguments1: 23757825 false)
	#(271 1 #liftFirstValue: 23883778 false)
	#(288 2 #reduceActionForunary_expression3: 27380739 false)
	#(288 2 #reduceActionForunary_expression4: 27380740 false)
	#(291 2 #reduceActionForunary_expression_not_plus_minus2: 27873282 false)
	#(325 1 #reduceActionFortype_parameter1: 33807361 false)
	#(324 1 #reduceActionFortype_arguments1: 33697793 false)
	#(193 1 #reduceActionFormethod_body2: 11771906 false)
	#(185 2 #reduceActionFormethod_declaration1: 10558465 false)
	#(193 1 #liftFirstValue: 11771905 false)
	#(194 2 #reduceActionForstatic_initializer1: 11869185 false)
	#(180 1 #reduceActionFortype_arguments1: 9863169 false)
	#(181 1 #liftFirstValue: 10015746 false)
	#(181 1 #reduceActionForvariable_declarator1: 10015745 false)
	#(195 2 #reduceActionForconstructor_declaration1: 11992065 false)
	#(215 2 #reduceActionForabstract_method_declaration1: 15594497 false)
	#(210 2 #reduceActionForinterface_method_declaration1: 15087617 false)
	#(214 1 #reduceActionFormodifier5: 15538177 false)
	#(213 1 #liftFirstValue: 15460353 false)
	#(212 2 #reduceActionForimport_declarations2: 15214594 false)
	#(213 1 #liftFirstValue: 15460354 false)
	#(312 0 #reduceActionForannotation_args1: 32478209 false)
	#(318 3 #reduceActionForenum_declaration1: 33068033 false)
	#(155 3 #reduceActionForsingle_type_import_declaration1: 6598657 false)
	#(143 0 #reduceActionForannotations1: 5437441 false)
	#(140 3 #reduceActionForcompilation_unit8: 5160968 false)
	#(262 3 #reduceActionForprimary_no_new_array3: 22161411 false)
	#(330 2 #reduceActionFortype_argument2: 34344962 false)
	#(330 2 #reduceActionFortype_argument1: 34344961 false)
	#(328 3 #reduceActionFortype_arguments_opt2: 34134018 false)
	#(260 3 #reduceActionForassert_statement1: 21822465 false)
	#(246 3 #reduceActionForbreak_statement2: 20131842 false)
	#(247 3 #reduceActionForcontinue_statement2: 20240386 false)
	#(243 1 #liftFirstValue: 19807234 false)
	#(245 1 #reduceActionForstatement_expression_list1: 19929089 false)
	#(243 1 #liftFirstValue: 19807233 false)
	#(277 3 #reduceActionForarray_creation_expression1: 25244673 false)
	#(278 1 #reduceActionForimport_declarations1: 25627649 false)
	#(277 3 #reduceActionForarray_creation_expression1: 25244675 false)
	#(248 3 #reduceActionForreturn_statement2: 20361218 false)
	#(282 3 #reduceActionForfield_access2: 25925634 false)
	#(274 3 #reduceActionFormethod_reference_expression3: 24093699 false)
	#(249 3 #reduceActionForthrow_statement1: 20471809 false)
	#(254 1 #liftFirstValue: 21204994 false)
	#(253 1 #reduceActionFortype_arguments1: 21090305 false)
	#(254 1 #liftFirstValue: 21204995 false)
	#(251 3 #reduceActionFortry_statement1: 20743169 false)
	#(255 1 #reduceActionForimport_declarations1: 21365761 false)
	#(251 3 #reduceActionFortry_statement3: 20743171 false)
	#(251 3 #reduceActionFortry_statement7: 20743175 false)
	#(225 3 #reduceActionForyield_statement2: 17297410 false)
	#(218 3 #reduceActionForblock2: 16205826 false)
	#(219 2 #reduceActionForimport_declarations2: 16281602 false)
	#(227 3 #reduceActionForlabeled_statement1: 17462273 false)
	#(262 3 #reduceActionForprimary_no_new_array10: 22161418 false)
	#(262 3 #reduceActionForprimary_no_new_array10: 22161416 false)
	#(281 2 #reduceActionForempty_dim_expr1: 25866241 false)
	#(280 2 #reduceActionFordims2: 25815042 false)
	#(262 3 #reduceActionForprimary_no_new_array11: 22161419 false)
	#(139 3 #reduceActionForqualified_name1: 5052417 false)
	#(262 3 #reduceActionForprimary_no_new_array10: 22161417 false)
	#(282 3 #reduceActionForfield_access1: 25925633 false)
	#(305 3 #reduceActionForassignment1: 31894529 false)
	#(222 3 #reduceActionForlocal_variable_declaration1: 16654337 false)
	#(269 3 #reduceActionForlambda_parameters2: 23633922 false)
	#(183 3 #reduceActionForvariable_declarator_id2: 10297346 false)
	#(273 1 #liftFirstValue: 24034305 false)
	#(268 3 #reduceActionForlambda_expression1: 23534593 false)
	#(273 1 #liftFirstValue: 24034306 false)
	#(293 3 #reduceActionFormultiplicative_expression4: 28548100 false)
	#(293 3 #reduceActionFormultiplicative_expression4: 28548098 false)
	#(293 3 #reduceActionFormultiplicative_expression4: 28548099 false)
	#(294 3 #reduceActionFormultiplicative_expression4: 28941314 false)
	#(294 3 #reduceActionFormultiplicative_expression4: 28941315 false)
	#(295 3 #reduceActionFormultiplicative_expression4: 29230082 false)
	#(295 3 #reduceActionFormultiplicative_expression4: 29230083 false)
	#(295 3 #reduceActionFormultiplicative_expression4: 29230084 false)
	#(296 3 #reduceActionFormultiplicative_expression4: 29636610 false)
	#(296 3 #reduceActionFormultiplicative_expression4: 29636612 false)
	#(296 3 #reduceActionFormultiplicative_expression4: 29636613 false)
	#(296 3 #reduceActionFormultiplicative_expression4: 29636614 false)
	#(296 3 #reduceActionFormultiplicative_expression4: 29636611 false)
	#(297 3 #reduceActionFormultiplicative_expression4: 30409731 false)
	#(297 3 #reduceActionFormultiplicative_expression4: 30409730 false)
	#(298 3 #reduceActionFormultiplicative_expression4: 30688258 false)
	#(299 3 #reduceActionFormultiplicative_expression4: 30837762 false)
	#(300 3 #reduceActionFormultiplicative_expression4: 30995458 false)
	#(301 3 #reduceActionFormultiplicative_expression4: 31171586 false)
	#(302 3 #reduceActionFormultiplicative_expression4: 31354882 false)
	#(323 3 #reduceActionFortype_parameters_opt2: 33602562 false)
	#(186 3 #reduceActionFormethod_header1: 10641409 false)
	#(186 3 #reduceActionFormethod_header1: 10641413 false)
	#(179 3 #reduceActionForfield_declaration1: 9754625 false)
	#(195 3 #reduceActionForconstructor_declaration3: 11992067 false)
	#(192 1 #reduceActionFortype_arguments1: 11668481 false)
	#(191 2 #reduceActionForthrows1: 11602945 false)
	#(197 2 #reduceActionForblock1: 12276740 false)
	#(195 3 #reduceActionForconstructor_declaration2: 11992066 false)
	#(200 4 #reduceActionForannotation_interface_declaration1: 13444097 false)
	#(315 1 #liftFirstValue: 32757761 false)
	#(315 1 #liftFirstValue: 32757762 false)
	#(312 1 #reduceActionForannotation_args2: 32478210 false)
	#(313 1 #reduceActionFortype_arguments1: 32547841 false)
	#(312 1 #reduceActionFortype_arguments1: 32478211 false)
	#(315 1 #liftFirstValue: 32757763 false)
	#(167 4 #reduceActionForclass_declaration1: 8669185 false)
	#(135 1 #liftFirstValue: 4786177 false)
	#(174 1 #reduceActionFortype_arguments1: 9149441 false)
	#(173 2 #reduceActionForinterfaces1: 9078785 false)
	#(322 1 #reduceActionForenum_body_declarations1: 33530881 false)
	#(319 2 #reduceActionForenum_body1: 33185793 false)
	#(320 1 #reduceActionFortype_arguments1: 33290241 false)
	#(318 4 #reduceActionForenum_declaration2: 33068034 false)
	#(155 4 #reduceActionForsingle_type_import_declaration2: 6598658 false)
	#(199 4 #reduceActionForinterface_declaration1: 13249537 false)
	#(142 1 #reduceActionForannotation_args2: 5422081 false)
	#(318 4 #reduceActionForenum_declaration3: 33068035 false)
	#(153 4 #reduceActionForpackage_declaration1: 6382593 false)
	#(331 2 #reduceActionForempty_dim_expr1: 34466817 false)
	#(331 2 #reduceActionForempty_dim_expr1: 34466818 false)
	#(329 3 #reduceActionFortype_arguments2: 34241538 false)
	#(278 2 #reduceActionForimport_declarations2: 25627650 false)
	#(277 4 #reduceActionForarray_creation_expression2: 25244674 false)
	#(277 4 #reduceActionForarray_creation_expression5: 25244677 false)
	#(277 4 #reduceActionForarray_creation_expression2: 25244676 false)
	#(277 4 #reduceActionForarray_creation_expression5: 25244678 false)
	#(275 4 #reduceActionForclass_instance_creation_expression1: 24493057 false)
	#(276 1 #reduceActionFortype_arguments1: 25143297 false)
	#(252 3 #reduceActionFortype_arguments_opt2: 20999169 false)
	#(259 2 #reduceActionForfinally1: 21748737 false)
	#(255 2 #reduceActionForimport_declarations2: 21365762 false)
	#(251 4 #reduceActionFortry_statement4: 20743172 false)
	#(251 4 #reduceActionFortry_statement2: 20743170 false)
	#(251 4 #reduceActionFortry_statement5: 20743173 false)
	#(274 4 #reduceActionFormethod_reference_expression2: 24093698 false)
	#(284 4 #reduceActionForarray_access1: 26828801 false)
	#(284 4 #reduceActionForarray_access1: 26828802 false)
	#(283 4 #reduceActionFormethod_invocation1: 26206209 false)
	#(334 4 #reduceActionForqualified_type_name1: 34695169 false)
	#(274 4 #reduceActionFormethod_reference_expression2: 24093697 false)
	#(292 4 #reduceActionForcast_expression1: 28078081 false)
	#(292 4 #reduceActionForcast_expression1: 28078084 false)
	#(292 4 #reduceActionForcast_expression1: 28078082 false)
	#(270 3 #reduceActionFortype_arguments2: 23757826 false)
	#(190 3 #reduceActionForformal_parameter1: 11375617 false)
	#(296 4 #reduceActionForrelational_expression7: 29636615 false)
	#(303 4 #reduceActionForconditional_expression3: 31542275 false)
	#(326 1 #reduceActionFortype_arguments1: 33909761 false)
	#(325 3 #reduceActionFortype_parameter2: 33807362 false)
	#(324 3 #reduceActionFortype_arguments2: 33697794 false)
	#(186 4 #reduceActionFormethod_header3: 10641411 false)
	#(186 4 #reduceActionFormethod_header3: 10641415 false)
	#(186 4 #reduceActionFormethod_header2: 10641410 false)
	#(186 4 #reduceActionFormethod_header2: 10641414 false)
	#(180 3 #reduceActionFortype_arguments2: 9863170 false)
	#(182 3 #reduceActionForinitialized_variable_declarator1: 10138625 false)
	#(184 1 #liftFirstValue: 10464258 false)
	#(184 1 #liftFirstValue: 10464257 false)
	#(179 4 #reduceActionForfield_declaration2: 9754626 false)
	#(195 4 #reduceActionForconstructor_declaration4: 11992068 false)
	#(197 3 #reduceActionForconstructor_body2: 12276738 false)
	#(197 3 #reduceActionForblock2: 12276739 false)
	#(196 4 #reduceActionForconstructor_declarator1: 12131329 false)
	#(189 1 #reduceActionFortype_arguments1: 11246593 false)
	#(211 4 #reduceActionForinterface_method_header1: 15185921 false)
	#(211 4 #reduceActionForinterface_method_header1: 15185923 false)
	#(201 2 #reduceActionForannotation_interface_body1: 13611009 false)
	#(203 1 #liftFirstValue: 13924354 false)
	#(203 1 #liftFirstValue: 13924355 false)
	#(202 1 #reduceActionForimport_declarations1: 13720577 false)
	#(203 1 #liftFirstValue: 13924353 false)
	#(204 1 #liftFirstValue: 14044161 false)
	#(316 2 #reduceActionForelementValueArrayInitializer1: 32847873 false)
	#(317 1 #reduceActionFortype_arguments1: 32974849 false)
	#(311 5 #reduceActionForannotation2: 32368642 false)
	#(172 2 #reduceActionForempty_dim_expr1: 9015297 false)
	#(171 0 #reduceActionForannotation_args1: 8972289 false)
	#(168 2 #reduceActionForinterfaces1: 8867841 false)
	#(175 2 #reduceActionForannotation_interface_body1: 9270273 false)
	#(176 1 #reduceActionForimport_declarations1: 9348097 false)
	#(167 5 #reduceActionForclass_declaration3: 8669187 false)
	#(167 5 #reduceActionForclass_declaration5: 8669189 false)
	#(167 5 #reduceActionForclass_declaration2: 8669186 false)
	#(319 3 #reduceActionForenum_body3: 33185795 false)
	#(322 2 #reduceActionForenum_body_declarations2: 33530882 false)
	#(321 2 #reduceActionForenum_constant1: 33393665 false)
	#(319 3 #reduceActionForenum_body5: 33185797 false)
	#(319 3 #reduceActionForenum_body2: 33185794 false)
	#(156 5 #reduceActionFortype_import_on_demand_declaration1: 6747137 false)
	#(205 2 #reduceActionForextends_interfaces1: 14343169 false)
	#(206 2 #reduceActionForannotation_interface_body1: 14495745 false)
	#(207 1 #reduceActionForimport_declarations1: 14583809 false)
	#(199 5 #reduceActionForinterface_declaration2: 13249538 false)
	#(141 5 #reduceActionFormodule1: 5301249 false)
	#(143 2 #reduceActionForimport_declarations2: 5437442 false)
	#(200 5 #reduceActionForannotation_interface_declaration2: 13444098 false)
	#(167 5 #reduceActionForclass_declaration9: 8669193 false)
	#(318 5 #reduceActionForenum_declaration4: 33068036 false)
	#(199 5 #reduceActionForinterface_declaration3: 13249539 false)
	#(260 5 #reduceActionForassert_statement2: 21822466 false)
	#(244 1 #liftFirstValue: 19883009 false)
	#(245 3 #reduceActionForstatement_expression_list2: 19929090 false)
	#(230 5 #reduceActionForif_then_statement1: 17895425 false)
	#(279 3 #reduceActionFordim_expr1: 25711617 false)
	#(216 2 #reduceActionForarray_initializer4: 15708164 false)
	#(217 1 #reduceActionFortype_arguments1: 16033793 false)
	#(275 5 #reduceActionForclass_instance_creation_expression3: 24493059 false)
	#(275 5 #reduceActionForclass_instance_creation_expression2: 24493058 false)
	#(232 5 #reduceActionForswitch_statement1: 18239489 false)
	#(263 5 #reduceActionForswitch_expression1: 22726657 false)
	#(250 5 #reduceActionForsynchronized_statement1: 20577281 false)
	#(252 4 #reduceActionFortry_resources2: 20999170 false)
	#(253 3 #reduceActionFortype_arguments2: 21090306 false)
	#(254 3 #reduceActionFortry_resource1: 21204993 false)
	#(251 5 #reduceActionFortry_statement6: 20743174 false)
	#(240 5 #reduceActionForwhile_statement1: 19264513 false)
	#(282 5 #reduceActionForfield_access3: 25925635 false)
	#(283 5 #reduceActionFormethod_invocation2: 26206210 false)
	#(327 0 #reduceActionFortype_arguments_opt1: 33976321 false)
	#(190 4 #reduceActionForformal_parameter2: 11375618 false)
	#(303 5 #reduceActionForconditional_expression4: 31542276 false)
	#(303 5 #reduceActionForconditional_expression4: 31542274 false)
	#(186 5 #reduceActionFormethod_header4: 10641412 false)
	#(186 5 #reduceActionFormethod_header4: 10641416 false)
	#(188 3 #reduceActionFormethod_declarator1: 10943489 false)
	#(188 3 #reduceActionFormethod_declarator3: 10943491 false)
	#(192 3 #reduceActionFortype_arguments2: 11668482 false)
	#(197 4 #reduceActionForconstructor_body1: 12276737 false)
	#(196 5 #reduceActionForconstructor_declarator2: 12131330 false)
	#(211 5 #reduceActionForinterface_method_header2: 15185922 false)
	#(211 5 #reduceActionForinterface_method_header2: 15185924 false)
	#(201 3 #reduceActionForannotation_interface_body2: 13611010 false)
	#(202 2 #reduceActionForimport_declarations2: 13720578 false)
	#(316 3 #reduceActionForelementValueArrayInitializer2: 32847874 false)
	#(316 3 #reduceActionForelementValueArrayInitializer3: 32847875 false)
	#(314 3 #reduceActionForelementValuePair1: 32657409 false)
	#(313 3 #reduceActionFortype_arguments2: 32547842 false)
	#(169 2 #reduceActionForpermits_type_list1: 8926209 false)
	#(175 3 #reduceActionForannotation_interface_body2: 9270274 false)
	#(176 2 #reduceActionForimport_declarations2: 9348098 false)
	#(167 6 #reduceActionForclass_declaration4: 8669188 false)
	#(167 6 #reduceActionForclass_declaration7: 8669191 false)
	#(167 6 #reduceActionForclass_declaration6: 8669190 false)
	#(174 3 #reduceActionFortype_arguments2: 9149442 false)
	#(319 4 #reduceActionForenum_body4: 33185796 false)
	#(321 3 #reduceActionForenum_constant2: 33393666 false)
	#(319 4 #reduceActionForenum_body7: 33185799 false)
	#(320 3 #reduceActionFortype_arguments2: 33290242 false)
	#(319 4 #reduceActionForenum_body6: 33185798 false)
	#(156 6 #reduceActionFortype_import_on_demand_declaration2: 6747138 false)
	#(206 3 #reduceActionForannotation_interface_body2: 14495746 false)
	#(207 2 #reduceActionForimport_declarations2: 14583810 false)
	#(205 3 #reduceActionForextends_interfaces2: 14343170 false)
	#(141 6 #reduceActionFormodule2: 5301250 false)
	#(161 0 #reduceActionForannotations1: 7426049 false)
	#(158 6 #reduceActionForrecord_declaration1: 7096321 false)
	#(167 6 #reduceActionForclass_declaration11: 8669195 false)
	#(167 6 #reduceActionForclass_declaration13: 8669197 false)
	#(167 6 #reduceActionForclass_declaration10: 8669194 false)
	#(199 6 #reduceActionForinterface_declaration4: 13249540 false)
	#(242 6 #reduceActionForfor_statement1: 19586049 false)
	#(216 3 #reduceActionForarray_initializer3: 15708163 false)
	#(216 3 #reduceActionForarray_initializer2: 15708162 false)
	#(275 6 #reduceActionForclass_instance_creation_expression4: 24493060 false)
	#(276 3 #reduceActionFortype_arguments2: 25143298 false)
	#(283 6 #reduceActionFormethod_invocation5: 26206213 false)
	#(233 2 #reduceActionForswitch_block4: 18387972 false)
	#(234 1 #reduceActionForimport_declarations1: 18708481 false)
	#(236 1 #reduceActionForimport_declarations1: 18975745 false)
	#(265 1 #reduceActionForimport_declarations1: 22975489 false)
	#(258 1 #reduceActionFortype_arguments1: 21680129 false)
	#(274 6 #reduceActionFormethod_reference_expression4: 24093700 false)
	#(283 6 #reduceActionFormethod_invocation3: 26206211 false)
	#(292 6 #reduceActionForcast_expression5: 28078085 false)
	#(292 6 #reduceActionForcast_expression5: 28078083 false)
	#(326 3 #reduceActionFortype_arguments2: 33909762 false)
	#(188 4 #reduceActionFormethod_declarator2: 10943490 false)
	#(198 4 #reduceActionForexplicit_constructor_invocation3: 12614659 false)
	#(198 4 #reduceActionForexplicit_constructor_invocation1: 12614657 false)
	#(189 3 #reduceActionFortype_arguments2: 11246594 false)
	#(316 4 #reduceActionForelementValueArrayInitializer4: 32847876 false)
	#(317 3 #reduceActionFortype_arguments2: 32974850 false)
	#(171 2 #reduceActionFordims2: 8972290 false)
	#(167 7 #reduceActionForclass_declaration8: 8669192 false)
	#(321 4 #reduceActionForenum_constant3: 33393667 false)
	#(319 5 #reduceActionForenum_body8: 33185800 false)
	#(144 3 #reduceActionFormodule_body_item6: 5471238 false)
	#(150 0 #reduceActionForannotation_args1: 6105089 false)
	#(144 3 #reduceActionFormodule_body_item4: 5471236 false)
	#(147 0 #reduceActionForannotation_args1: 6034433 false)
	#(144 3 #reduceActionFormodule_body_item1: 5471233 false)
	#(144 3 #reduceActionFormodule_body_item8: 5471240 false)
	#(160 1 #reduceActionForannotation_args2: 7397377 false)
	#(158 7 #reduceActionForrecord_declaration2: 7096322 false)
	#(158 7 #reduceActionForrecord_declaration3: 7096323 false)
	#(167 7 #reduceActionForclass_declaration12: 8669196 false)
	#(167 7 #reduceActionForclass_declaration15: 8669199 false)
	#(167 7 #reduceActionForclass_declaration14: 8669198 false)
	#(158 7 #reduceActionForrecord_declaration5: 7096325 false)
	#(241 7 #reduceActionFordo_statement1: 19409921 false)
	#(242 7 #reduceActionForfor_statement2: 19586050 false)
	#(242 7 #reduceActionForfor_statement3: 19586051 false)
	#(242 7 #reduceActionForfor_statement5: 19586053 false)
	#(231 7 #reduceActionForif_then_else_statement1: 18037761 false)
	#(216 4 #reduceActionForarray_initializer1: 15708161 false)
	#(217 3 #reduceActionFortype_arguments2: 16033794 false)
	#(283 7 #reduceActionFormethod_invocation6: 26206214 false)
	#(309 1 #liftFirstValue: 32265217 false)
	#(239 0 #reduceActionForannotation_args1: 19127297 false)
	#(267 2 #reduceActionForswitch_expression_labels2: 23339010 false)
	#(237 2 #reduceActionForswitch_label2: 19058690 false)
	#(233 3 #reduceActionForswitch_block2: 18387970 false)
	#(234 2 #reduceActionForimport_declarations2: 18708482 false)
	#(233 3 #reduceActionForswitch_block3: 18387971 false)
	#(235 2 #reduceActionForswitch_block_statement_group1: 18876417 false)
	#(236 2 #reduceActionForimport_declarations2: 18975746 false)
	#(264 3 #reduceActionForswitch_expression_block1: 22879233 false)
	#(265 2 #reduceActionForimport_declarations2: 22975490 false)
	#(266 2 #reduceActionForswitch_block_expression_group2: 23146498 false)
	#(266 2 #reduceActionForswitch_block_expression_group2: 23146500 false)
	#(256 5 #reduceActionForcatch_clause1: 21435393 false)
	#(257 3 #reduceActionForcatch_parameter1: 21570561 false)
	#(327 2 #reduceActionFortype_arguments_opt3: 33976323 false)
	#(283 7 #reduceActionFormethod_invocation4: 26206212 false)
	#(198 5 #reduceActionForexplicit_constructor_invocation4: 12614660 false)
	#(198 5 #reduceActionForexplicit_constructor_invocation2: 12614658 false)
	#(204 4 #reduceActionForannotation_method_declaration2: 14044162 false)
	#(204 4 #reduceActionForannotation_method_declaration2: 14044163 false)
	#(170 2 #reduceActionForempty_dim_expr1: 8972289 false)
	#(321 5 #reduceActionForenum_constant4: 33393668 false)
	#(321 5 #reduceActionForenum_constant5: 33393669 false)
	#(144 4 #reduceActionFormodule_body_item2: 5471234 false)
	#(144 4 #reduceActionFormodule_body_item3: 5471235 false)
	#(159 3 #reduceActionForswitch_expression_block1: 7319553 false)
	#(161 2 #reduceActionForimport_declarations2: 7426050 false)
	#(162 1 #liftFirstValue: 7469059 false)
	#(162 1 #liftFirstValue: 7469057 false)
	#(162 1 #liftFirstValue: 7469058 false)
	#(158 8 #reduceActionForrecord_declaration4: 7096324 false)
	#(167 8 #reduceActionForclass_declaration16: 8669200 false)
	#(158 8 #reduceActionForrecord_declaration6: 7096326 false)
	#(158 8 #reduceActionForrecord_declaration7: 7096327 false)
	#(242 8 #reduceActionForfor_statement4: 19586052 false)
	#(242 8 #reduceActionForfor_statement6: 19586054 false)
	#(242 8 #reduceActionForfor_statement7: 19586055 false)
	#(233 4 #reduceActionForswitch_block1: 18387969 false)
	#(266 3 #reduceActionForswitch_block_expression_group3: 23146499 false)
	#(266 3 #reduceActionForswitch_block_expression_group3: 23146497 false)
	#(258 3 #reduceActionFortype_arguments2: 21680130 false)
	#(283 8 #reduceActionFormethod_invocation7: 26206215 false)
	#(327 3 #reduceActionFortype_arguments_opt2: 33976322 false)
	#(275 8 #reduceActionForclass_instance_creation_expression5: 24493061 false)
	#(198 6 #reduceActionForexplicit_constructor_invocation7: 12614663 false)
	#(198 6 #reduceActionForexplicit_constructor_invocation5: 12614661 false)
	#(321 6 #reduceActionForenum_constant6: 33393670 false)
	#(144 5 #reduceActionFormodule_body_item7: 5471239 false)
	#(148 2 #reduceActionForexport_to_names1: 6085633 false)
	#(150 2 #reduceActionFordims2: 6105090 false)
	#(144 5 #reduceActionFormodule_body_item5: 5471237 false)
	#(144 5 #reduceActionFormodule_body_item9: 5471241 false)
	#(145 2 #reduceActionForexport_to_names1: 6020097 false)
	#(147 2 #reduceActionFordims2: 6034434 false)
	#(163 2 #reduceActionForconstructor_declaration1: 7585793 false)
	#(164 2 #reduceActionForrecord_constructor_declarator1: 7738369 false)
	#(158 9 #reduceActionForrecord_declaration8: 7096328 false)
	#(242 9 #reduceActionForfor_statement8: 19586056 false)
	#(335 9 #reduceActionForforeach_statement1: 34818049 false)
	#(267 4 #reduceActionForswitch_expression_labels1: 23339009 false)
	#(237 4 #reduceActionForswitch_label1: 19058689 false)
	#(239 2 #reduceActionFordims2: 19127298 false)
	#(283 9 #reduceActionFormethod_invocation8: 26206216 false)
	#(275 9 #reduceActionForclass_instance_creation_expression7: 24493063 false)
	#(275 9 #reduceActionForclass_instance_creation_expression6: 24493062 false)
	#(198 7 #reduceActionForexplicit_constructor_invocation8: 12614664 false)
	#(198 7 #reduceActionForexplicit_constructor_invocation6: 12614662 false)
	#(149 2 #reduceActionForempty_dim_expr1: 6105089 false)
	#(146 2 #reduceActionForempty_dim_expr1: 6034433 false)
	#(163 3 #reduceActionForconstructor_declaration2: 7585794 false)
	#(163 3 #reduceActionForconstructor_declaration3: 7585795 false)
	#(238 2 #reduceActionForempty_dim_expr1: 19127297 false)
	#(275 10 #reduceActionForclass_instance_creation_expression8: 24493064 false)
	#(163 4 #reduceActionForconstructor_declaration4: 7585796 false)
	#(164 4 #reduceActionForconstructor_declarator1: 7738370 false)
	#(164 5 #reduceActionForconstructor_declarator2: 7738371 false)
	).
]

{ #category : 'generated-accessing' }
JavaParser class >> scannerClass [
	^JavaScanner
]

{ #category : 'generated' }
JavaParser class >> startingStateForblock_statement [
	^ 2
]

{ #category : 'generated' }
JavaParser class >> startingStateForclass_body_declaration [
	^ 6
]

{ #category : 'generated' }
JavaParser class >> startingStateForclass_or_interface_body_declaration [
	^ 7
]

{ #category : 'generated' }
JavaParser class >> startingStateForexpression [
	^ 3
]

{ #category : 'generated' }
JavaParser class >> startingStateForgoal [
	^ 1
]

{ #category : 'generated' }
JavaParser class >> startingStateFormethod_declaration [
	^ 5
]

{ #category : 'generated' }
JavaParser class >> startingStateFortype_declaration [
	^ 4
]

{ #category : 'generated' }
JavaParser class >> symbolNames [
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"."' '"..."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<<"' '"<<="' '"<="' '"="' '"=="' '">="' '">>="' '">>>="' '"?"' '"@"' '"["' '"]"' '"^"' '"^="' '"abstract"' '"assert"' '"boolean"' '"break"' '"byte"' '"case"' '"catch"' '"char"' '"class"' '"continue"' '"default"' '"do"' '"double"' '"else"' '"enum"' '"exports"' '"extends"' '"final"' '"finally"' '"float"' '"for"' '"if"' '"implements"' '"import"' '"instanceof"' '"int"' '"interface"' '"long"' '"module"' '"native"' '"new"' '"non-sealed"' '"open"' '"opens"' '"package"' '"permits"' '"private"' '"protected"' '"provides"' '"public"' '"record"' '"requires"' '"return"' '"sealed"' '"short"' '"static"' '"strictfp"' '"super"' '"switch"' '"synchronized"' '"this"' '"throw"' '"throws"' '"to"' '"transient"' '"transitive"' '"try"' '"uses"' '"void"' '"volatile"' '"while"' '"with"' '"yield"' '"{"' '"|"' '"|="' '"||"' '"}"' '"~"' '<GREATER_THAN>' '<SIGNED_RIGHT_SHIFT>' '<UNSIGNED_RIGHT_SHIFT>' '<INTEGER_LITERAL>' '<FLOATING_POINT_LITERAL>' '<BOOLEAN_LITERAL>' '<CHARACTER_LITERAL>' '<STRING_LITERAL>' '<NULL_LITERAL>' '<IDENTIFIER>' '<whitespace>' '<comment>' '<patternToken>' 'B e g i n' 'goal' 'literal' 'type' 'primitive_type' 'numeric_type' 'integral_type' 'floating_point_type' 'reference_type' 'class_or_interface_type' 'class_type' 'interface_type' 'array_type' 'name' 'simple_name' 'qualified_name' 'compilation_unit' 'module' 'module_body' 'module_body_item ''directive''*' 'module_body_item' 'with_names' '(name ''withName'' "," ''comma'')' '(name ''withName'' "," ''comma'')*' 'export_to_names' '(name ''toName'' "," ''comma'')' '(name ''toName'' "," ''comma'')*' 'import_declarations' 'type_declarations' 'package_declaration' 'import_declaration' 'single_type_import_declaration' 'type_import_on_demand_declaration' 'type_declaration' 'record_declaration' 'record_body' 'record_body_declarations' 'record_body_declaration ''declaration''*' 'record_body_declaration' 'record_constructor_declaration' 'record_constructor_declarator' 'modifiers' 'modifier' 'class_declaration' 'permits' 'permits_type_list' '("," ''comma'' interface_type ''permit'')' '("," ''comma'' interface_type ''permit'')*' 'super' 'interfaces' 'interface_type_list' 'class_body' 'class_body_declarations' 'class_body_declaration' 'class_member_declaration' 'field_declaration' 'variable_declarators' 'variable_declarator' 'initialized_variable_declarator' 'variable_declarator_id' 'variable_initializer' 'method_declaration' 'method_header' 'void' 'method_declarator' 'formal_parameter_list' 'formal_parameter' 'throws' 'class_type_list' 'method_body' 'static_initializer' 'constructor_declaration' 'constructor_declarator' 'constructor_body' 'explicit_constructor_invocation' 'interface_declaration' 'annotation_interface_declaration' 'annotation_interface_body' 'annotation_interface_member_declarations' 'annotation_interface_member_declaration' 'annotation_method_declaration' 'extends_interfaces' 'interface_body' 'interface_member_declarations' 'interface_member_declaration' 'constant_declaration' 'interface_method_declaration' 'interface_method_header' 'interface_modifier*' 'interface_modifier' 'default_modifier' 'abstract_method_declaration' 'array_initializer' 'variable_initializers' 'block' 'block_statements' 'block_statement' 'local_variable_declaration_statement' 'local_variable_declaration' 'statement' 'statement_without_trailing_substatement' 'yield_statement' 'empty_statement' 'labeled_statement' 'expression_statement' 'statement_expression' 'if_then_statement' 'if_then_else_statement' 'switch_statement' 'switch_block' 'switch_block_statement_groups' 'switch_block_statement_group' 'switch_labels' 'switch_label' '("," ''comma'' constant_expression ''constant'')' '("," ''comma'' constant_expression ''constant'')*' 'while_statement' 'do_statement' 'for_statement' 'for_init' 'for_update' 'statement_expression_list' 'break_statement' 'continue_statement' 'return_statement' 'throw_statement' 'synchronized_statement' 'try_statement' 'try_resources' 'try_resources_list' 'try_resource' 'catches' 'catch_clause' 'catch_parameter' 'catch_types' 'finally' 'assert_statement' 'primary' 'primary_no_new_array' 'switch_expression' 'switch_expression_block' 'switch_block_expression_groups' 'switch_block_expression_group' 'switch_expression_labels' 'lambda_expression' 'lambda_parameters' 'lambda_parameter_list' 'lambda_parameter' 'untyped_lambda_parameter' 'lambda_function' 'method_reference_expression' 'class_instance_creation_expression' 'argument_list' 'array_creation_expression' 'dim_exprs' 'dim_expr' 'dims' 'empty_dim_expr' 'field_access' 'method_invocation' 'array_access' 'postfix_expression' 'postincrement_expression' 'postdecrement_expression' 'unary_expression' 'preincrement_expression' 'predecrement_expression' 'unary_expression_not_plus_minus' 'cast_expression' 'multiplicative_expression' 'additive_expression' 'shift_expression' 'relational_expression' 'equality_expression' 'and_expression' 'exclusive_or_expression' 'inclusive_or_expression' 'conditional_and_expression' 'conditional_or_expression' 'conditional_expression' 'assignment_expression' 'assignment' 'left_hand_side' 'assignment_operator' 'expression' 'constant_expression' 'annotations' 'annotation' 'annotation_args' 'elementValuePairs' 'elementValuePair' 'elementValue' 'elementValueArrayInitializer' 'elementValues' 'enum_declaration' 'enum_body' 'enum_constants' 'enum_constant' 'enum_body_declarations' 'type_parameters_opt' 'type_parameters' 'type_parameter' 'type_bound' 'type_arguments_or_diamond_opt' 'type_arguments_opt' 'type_arguments' 'type_argument' 'type_argument_type' 'type_name' 'simple_type_name' 'qualified_type_name' 'foreach_statement' 'variable_modifiers' 'variable_modifier' 'primary_or_name' 'class_or_interface_body_declaration' 'E O F' 'error')
]

{ #category : 'generated' }
JavaParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JavaProgramNode #JavaProgramNode #JavaLiteralNode #JavaTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaTypeNode #JavaClassTypeNode #JavaClassTypeNode #JavaClassTypeNode #JavaArrayTypeNode #JavaNameNode #JavaNameNode #JavaQualifiedNameNode #JavaProgramNode #JavaModuleNode #OrderedCollection #OrderedCollection #JavaProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaPackageDeclarationNode #JavaSingleTypeImportDeclarationNode #JavaSingleTypeImportDeclarationNode #JavaTypeImportOnDemandDeclarationNode #JavaProgramNode #JavaRecordDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaConstructorDeclarationNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaProgramNode #JavaFieldDeclarationNode #OrderedCollection #JavaVariableDeclarationNode #JavaInitializedVariableDeclarationNode #JavaProgramNode #JavaProgramNode #JavaMethodDeclarationNode #OrderedCollection #JavaVoidTypeNode #JavaProgramNode #OrderedCollection #JavaParameterNode #JavaThrowsNode #OrderedCollection #JavaProgramNode #JavaStaticInitializerNode #JavaConstructorDeclarationNode #OrderedCollection #JavaBlockNode #JavaStatementNode #JavaInterfaceDeclarationNode #JavaAnnotationInterfaceNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaAbstractMethodDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaFieldDeclarationNode #JavaMethodDeclarationNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaModifierNode #JavaAbstractMethodDeclarationNode #JavaArrayInitializerNode #OrderedCollection #JavaBlockNode #OrderedCollection #JavaProgramNode #JavaLocalVariableDeclarationStatementNode #JavaLocalVariableDeclarationNode #JavaProgramNode #JavaStatementNode #JavaYieldStatementNode #JavaEmptyStatementNode #JavaLabeledStatementNode #JavaExpressionStatementNode #JavaExpressionNode #JavaIfStatementNode #JavaIfElseStatementNode #JavaSwitchStatementNode #JavaSwitchBlockNode #OrderedCollection #JavaSwitchBlockStatementGroupNode #OrderedCollection #JavaProgramNode #OrderedCollection #OrderedCollection #JavaWhileStatementNode #JavaDoWhileStatementNode #JavaForStatementNode #JavaProgramNode #JavaStatementExpressionListNode #JavaStatementExpressionListNode #JavaBreakStatementNode #JavaContinueStatementNode #JavaReturnStatementNode #JavaThrowStatementNode #JavaSynchronizedStatementNode #JavaTryStatementNode #OrderedCollection #OrderedCollection #JavaProgramNode #OrderedCollection #JavaCatchClauseNode #JavaCatchParameterNode #OrderedCollection #JavaFinallyClauseNode #JavaAssertStatementNode #JavaExpressionNode #JavaExpressionNode #JavaSwitchExpressionNode #OrderedCollection #OrderedCollection #JavaSwitchBlockExpressionGroupNode #OrderedCollection #JavaLambdaExpressionNode #OrderedCollection #OrderedCollection #JavaParameterNode #JavaParameterNode #JavaProgramNode #JavaMethodReferenceNode #JavaNewNode #OrderedCollection #JavaNewArrayNode #OrderedCollection #JavaDimensionExpressionNode #OrderedCollection #OrderedCollection #JavaFieldAccessNode #JavaMethodInvocationNode #JavaArrayAccessNode #JavaExpressionNode #JavaPostIncrementExpressionNode #JavaPostDecrementExpressionNode #JavaExpressionNode #JavaPreIncrementExpressionNode #JavaPreDecrementExpressionNode #JavaExpressionNode #JavaCastExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaAssignmentNode #JavaExpressionNode #SmaCCToken #JavaExpressionNode #JavaExpressionNode #OrderedCollection #JavaAnnotationNode #OrderedCollection #OrderedCollection #JavaElementValuePairNode #JavaProgramNode #JavaElementArrayInitializerNode #OrderedCollection #JavaEnumDeclarationNode #OrderedCollection #OrderedCollection #JavaEnumConstantNode #OrderedCollection #JavaTypeParametersNode #OrderedCollection #JavaTypeParameterNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaTypeArgumentNode #OrderedCollection #JavaTypeNameNode #JavaTypeNameNode #JavaQualifiedTypeNameNode #JavaForEachStatementNode #OrderedCollection #JavaProgramNode #JavaExpressionNode #JavaProgramNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
JavaParser class >> transitionTable [
^#(
#[1 0 33 0 26 0 7 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 59 0 57 0 65 0 61 0 68 0 65 0 70 0 69 0 71 0 73 0 73 0 77 0 74 0 6 0 76 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 117 0 101 0 121 0 125 0 121 0 140 0 121 0 141 0 133 0 151 0 137 0 152 0 141 0 153 0 145 0 154 0 145 0 155 0 145 0 156 0 157 0 157 0 157 0 158 0 165 0 165 0 169 0 166 0 157 0 167 0 157 0 199 0 157 0 200 0 185 1 54 0 169 1 55 0 157 1 62 0 10 1 84]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 11 0 37 0 41 0 42 0 221 0 43 0 15 0 44 0 229 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 241 0 51 0 245 0 53 0 27 0 54 0 49 0 56 0 31 0 59 0 35 0 61 1 1 0 62 1 5 0 63 0 39 0 67 0 61 0 68 0 43 0 69 0 69 0 71 1 17 0 72 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 1 21 0 84 0 97 0 85 0 47 0 86 0 101 0 87 0 105 0 88 1 29 0 89 1 33 0 90 1 37 0 91 1 41 0 92 1 45 0 93 0 113 0 96 1 49 0 98 1 53 0 100 0 117 0 101 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 51 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 145 0 165 0 169 0 166 1 165 0 167 1 153 0 187 1 165 0 199 1 165 0 218 1 165 0 220 1 165 0 221 1 173 0 222 1 165 0 223 1 165 0 224 1 165 0 225 1 165 0 226 1 165 0 227 1 165 0 228 1 201 0 229 1 165 0 230 1 165 0 231 1 165 0 232 1 165 0 240 1 165 0 241 1 165 0 242 1 165 0 246 1 165 0 247 1 165 0 248 1 165 0 249 1 165 0 250 1 165 0 251 1 165 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 0 169 1 55 1 165 1 62 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 1 165 1 79 2 85 1 80 2 89 1 82]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 233 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 2 233 1 47 2 233 1 48 2 229 1 49 2 61 1 50 2 233 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 59 0 61 0 68 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 117 0 101 2 237 0 157 2 237 0 158 0 165 0 165 0 169 0 166 2 237 0 167 2 237 0 199 2 237 0 200 0 169 1 55 2 237 1 62]
#[1 2 241 0 27 0 217 0 37 0 41 0 42 0 22 0 44 0 22 0 46 0 22 0 49 0 22 0 54 0 53 0 59 0 22 0 61 0 22 0 67 0 22 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 97 0 85 0 22 0 86 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 0 22 0 120 2 245 0 165 0 169 0 166 2 249 0 185 2 253 0 186 0 169 1 55 3 1 1 67]
#[1 0 33 0 26 2 241 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 59 0 75 0 61 0 79 0 67 0 61 0 68 0 83 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 87 0 86 3 5 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 1 65 0 105 0 91 0 120 3 13 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 3 13 0 132 3 13 0 133 3 13 0 136 3 33 0 157 3 33 0 158 3 29 0 165 0 169 0 166 3 33 0 167 3 33 0 177 3 33 0 178 3 33 0 179 3 33 0 185 2 253 0 186 3 33 0 194 3 33 0 195 3 57 0 196 3 33 0 199 3 33 0 200 3 61 0 218 0 169 1 55 3 33 1 62 3 65 1 67 2 69 1 76 2 69 1 77 2 69 1 78]
#[1 0 33 0 26 0 95 0 27 0 99 0 37 0 103 0 42 0 107 0 44 0 111 0 46 0 115 0 49 0 45 0 50 0 26 0 52 0 119 0 54 0 49 0 56 0 123 0 59 0 127 0 61 0 131 0 67 0 61 0 68 0 135 0 69 0 139 0 71 0 143 0 73 0 147 0 78 0 151 0 79 0 155 0 81 0 93 0 82 0 159 0 85 0 163 0 86 0 167 0 87 0 171 0 88 0 175 0 91 0 179 0 96 0 183 0 100 0 187 0 101 1 65 0 105 0 191 0 120 3 13 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 3 13 0 132 3 13 0 133 3 13 0 136 3 69 0 157 3 69 0 158 3 29 0 165 0 169 0 166 3 69 0 167 3 109 0 177 3 109 0 178 3 77 0 179 3 109 0 185 3 81 0 186 3 109 0 194 3 109 0 195 3 57 0 196 3 69 0 199 3 69 0 200 3 109 0 208 3 109 0 209 3 109 0 210 3 97 0 211 3 101 0 212 3 109 0 215 3 61 0 218 0 169 1 55 3 69 1 62 3 65 1 67 2 69 1 76 2 69 1 77 2 69 1 78 3 109 1 83]
#[0 0 30 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 3 113 0 68 3 117 0 120 3 121 0 137 3 121 0 138 3 121 0 139]
#[0 0 34 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 3 125 0 120]
#[0 3 129 0 120]
#[0 0 38 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[1 3 133 0 87 3 117 0 120 3 137 0 137 3 137 0 138 3 137 0 139]
#[0 3 141 0 120]
#[1 3 117 0 120 3 145 0 137 3 145 0 138 3 145 0 139]
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 0 46 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 3 149 0 70]
#[0 0 50 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 0 54 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 0 58 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 3 153 0 120]
#[0 0 62 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 0 66 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 0 70 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 0 74 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 0 78 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 0 82 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 0 0 1 84]
#[0 0 86 1 84]
#[0 0 90 1 84]
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 59 0 57 0 65 0 61 0 68 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 117 0 101 3 157 0 152 3 161 0 154 3 161 0 155 3 161 0 156 0 157 0 157 0 157 0 158 0 165 0 165 0 169 0 166 0 157 0 167 0 157 0 199 0 157 0 200 0 169 1 55 0 157 1 62 0 94 1 84]
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 59 0 61 0 68 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 117 0 101 3 165 0 157 3 165 0 158 0 165 0 165 0 169 0 166 3 165 0 167 3 165 0 199 3 165 0 200 0 169 1 55 3 165 1 62 0 98 1 84]
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 59 0 57 0 65 0 61 0 68 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 117 0 101 3 169 0 151 3 173 0 152 0 145 0 154 0 145 0 155 0 145 0 156 0 157 0 157 0 157 0 158 0 165 0 165 0 169 0 166 0 157 0 167 0 157 0 199 0 157 0 200 0 169 1 55 0 157 1 62 0 102 1 84]
#[0 0 106 0 26 0 37 0 42 0 50 0 56 0 59 0 65 0 68 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 87 0 88 0 91 0 96 0 101 1 84]
#[0 0 110 0 26 0 37 0 42 0 50 0 56 0 59 0 65 0 68 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 87 0 88 0 91 0 96 0 101 1 84]
#[0 0 114 0 26 0 37 0 42 0 50 0 56 0 59 0 65 0 68 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 87 0 88 0 91 0 96 0 101 1 84]
#[0 0 118 0 26 0 37 0 42 0 50 0 56 0 59 0 68 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 87 0 88 0 91 0 96 0 101 1 84]
#[0 0 122 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 3 177 0 37 0 41 0 42 3 181 0 50 3 185 0 56 0 53 0 59 3 189 0 68 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 3 193 0 82 0 97 0 85 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 117 0 101 3 197 0 166 3 197 1 55]
#[0 0 126 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 0 130 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 0 134 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 0 138 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 0 217 0 37 3 201 0 76 3 205 1 55]
#[0 0 142 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 0 146 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 3 209 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 3 209 1 47 3 209 1 48 2 229 1 49 2 61 1 50 3 209 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 3 221 1 32 3 221 1 33 3 221 1 34 3 221 1 35 3 221 1 36 3 221 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 3 229 1 32 3 229 1 33 3 229 1 34 3 229 1 35 3 229 1 36 3 229 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 0 150 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 3 233 0 36 0 6 0 37 0 6 0 44 0 6 0 46 0 6 0 49 0 6 0 54 0 6 0 61 0 6 0 67 0 6 0 69 0 6 0 86 3 237 0 111 0 6 0 120 3 241 1 54 3 245 1 73 3 249 1 74]
#[1 3 117 0 120 3 121 0 137 3 121 0 138 3 121 0 139]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 3 253 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 3 253 1 47 3 253 1 48 2 229 1 49 2 61 1 50 3 253 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 0 154 0 5 0 9 0 15 0 20 0 21 0 38 0 106 0 111 0 120]
#[1 4 1 0 26 4 5 0 120]
#[0 0 158 0 5 0 9 0 15 0 20 0 21 0 38 0 106 0 111 0 120]
#[0 0 162 0 5 0 9 0 15 0 20 0 21 0 38 0 106 0 111 0 120]
#[1 4 9 0 26 4 13 0 120]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 4 21 0 218 4 21 0 223 4 21 0 224 4 21 0 225 4 21 0 226 4 21 0 227 4 21 0 228 1 201 0 229 4 21 0 230 4 21 0 231 4 21 0 232 4 21 0 240 4 21 0 241 4 21 0 242 4 21 0 246 4 21 0 247 4 21 0 248 4 21 0 249 4 21 0 250 4 21 0 251 4 21 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 4 21 1 79 2 89 1 82]
#[0 0 166 0 5 0 9 0 15 0 20 0 21 0 38 0 106 0 111 0 120]
#[0 0 170 0 5 0 9 0 15 0 20 0 21 0 38 0 106 0 111 0 120]
#[0 4 25 0 8]
#[0 4 29 0 8]
#[0 0 174 0 5 0 9 0 15 0 20 0 21 0 38 0 106 0 111 0 120]
#[0 0 178 0 5 0 9 0 15 0 20 0 21 0 38 0 106 0 111 0 120]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 3 9 0 120 4 33 0 128 4 33 0 129 4 33 0 130 4 33 0 131 4 37 0 133 4 41 0 134 4 45 1 76 4 45 1 77 4 45 1 78]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 4 49 0 26 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 4 53 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 4 53 1 47 4 53 1 48 2 229 1 49 2 61 1 50 4 53 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 0 182 0 5 0 9 0 15 0 20 0 21 0 38 0 106 0 111 0 120]
#[1 4 57 0 20 4 61 0 25]
#[0 4 65 0 8]
#[1 4 69 0 8 0 74 0 37 0 74 0 42 0 74 0 50 0 74 0 56 0 74 0 59 0 74 0 68 0 74 0 71 0 74 0 73 0 74 0 78 0 74 0 79 0 74 0 81 0 74 0 85 0 74 0 87 0 74 0 88 0 74 0 91 0 74 0 96 0 74 0 101]
#[0 0 186 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 4 73 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 4 73 1 47 4 73 1 48 2 229 1 49 2 61 1 50 4 73 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 4 77 0 8 1 65 0 105 4 81 0 218 4 85 0 252]
#[0 0 190 0 20 0 120]
#[0 4 89 0 8]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 4 93 0 26 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 4 97 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 4 97 1 47 4 97 1 48 2 229 1 49 2 61 1 50 4 97 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 11 0 37 0 41 0 42 0 221 0 43 0 15 0 44 0 229 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 241 0 51 0 245 0 53 0 27 0 54 0 49 0 56 0 31 0 59 0 35 0 61 1 1 0 62 1 5 0 63 0 39 0 67 0 61 0 68 0 43 0 69 0 69 0 71 1 17 0 72 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 1 21 0 84 0 97 0 85 0 47 0 86 0 101 0 87 0 105 0 88 1 29 0 89 1 33 0 90 1 37 0 91 1 41 0 92 1 45 0 93 0 113 0 96 1 49 0 98 1 53 0 100 0 117 0 101 1 57 0 102 1 61 0 104 1 65 0 105 4 101 0 109 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 51 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 145 0 165 0 169 0 166 4 109 0 167 1 153 0 187 4 109 0 199 4 109 0 218 4 105 0 219 4 109 0 220 4 109 0 221 1 173 0 222 4 109 0 223 4 109 0 224 4 109 0 225 4 109 0 226 4 109 0 227 4 109 0 228 1 201 0 229 4 109 0 230 4 109 0 231 4 109 0 232 4 109 0 240 4 109 0 241 4 109 0 242 4 109 0 246 4 109 0 247 4 109 0 248 4 109 0 249 4 109 0 250 4 109 0 251 4 109 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 0 169 1 55 4 109 1 62 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 4 109 1 79 2 85 1 80 2 89 1 82]
#[0 0 194 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 0 198 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 0 202 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 0 206 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 0 210 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 0 214 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 0 218 0 4 0 218 0 7 0 218 0 11 0 218 0 13 0 218 0 14 0 218 0 17 0 218 0 18 0 203 0 20 0 218 0 23 4 113 0 24 0 203 0 25 0 207 0 27 0 218 0 29 0 218 0 31 0 218 0 34 0 218 0 35 0 203 0 38 0 218 0 41 0 218 0 107 4 117 1 72]
#[0 0 222 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 4 121 0 20]
#[1 0 211 0 20 4 129 0 38 4 133 1 24 4 137 1 25]
#[0 0 230 0 5 0 9 0 15 0 20 0 21 0 38 0 106 0 111 0 120]
#[0 0 234 0 5 0 9 0 15 0 20 0 21 0 38 0 106 0 111 0 120]
#[0 0 238 0 5 0 9 0 15 0 20 0 21 0 38 0 106 0 111 0 120]
#[1 0 242 0 20 0 18 0 25 0 213 0 27 4 141 1 72]
#[0 0 246 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[0 0 250 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[1 0 254 0 2 0 254 0 3 1 2 0 4 0 254 0 5 0 254 0 6 1 2 0 7 0 254 0 9 0 254 0 10 1 2 0 11 0 254 0 12 0 254 0 13 1 2 0 14 0 254 0 15 0 254 0 16 0 254 0 17 1 2 0 18 0 254 0 19 0 215 0 20 0 254 0 22 1 2 0 23 0 254 0 24 1 6 0 25 0 254 0 26 0 219 0 27 0 254 0 28 1 2 0 29 0 254 0 30 1 2 0 31 0 254 0 32 0 254 0 33 1 2 0 34 1 2 0 35 0 254 0 36 4 149 0 38 0 254 0 39 0 254 0 40 1 2 0 41 0 254 0 66 0 254 0 106 1 2 0 107 0 254 0 108 0 254 0 109 0 254 0 111 0 254 0 112 0 254 0 113 4 153 1 72 0 254 1 84]
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 66 0 67 0 68 0 69 0 71 0 73 0 76 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 95 0 96 0 100 0 101 0 103 0 105 0 106 0 107 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[0 1 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 66 0 67 0 68 0 69 0 71 0 73 0 76 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 95 0 96 0 100 0 101 0 103 0 105 0 106 0 107 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[1 0 217 0 37 0 41 0 42 3 181 0 50 3 185 0 56 0 53 0 59 3 189 0 68 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 97 0 85 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 117 0 101 3 197 0 166 3 197 1 55]
#[0 1 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 4 157 0 20]
#[0 1 22 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 26 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 0 0 1 84]
#[0 1 30 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 4 161 0 26]
#[0 1 34 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 38 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 46 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 50 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 54 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 4 165 0 26]
#[0 1 58 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 62 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 66 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 70 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 74 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 78 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 82 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 86 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 90 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 94 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 98 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 102 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 1 106 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 1 110 0 2 1 110 0 3 1 110 0 5 1 110 0 6 1 110 0 9 1 110 0 10 1 110 0 12 1 110 0 13 1 110 0 15 1 110 0 16 1 110 0 17 1 110 0 19 0 223 0 20 1 110 0 22 1 110 0 24 1 114 0 25 1 110 0 26 0 227 0 27 1 110 0 28 1 110 0 30 1 110 0 32 1 110 0 33 1 110 0 36 1 110 0 39 1 110 0 40 1 110 0 66 1 110 0 106 1 110 0 108 1 110 0 109 1 110 0 111 1 110 0 112 1 110 0 113 1 110 1 84]
#[1 1 118 0 2 1 118 0 3 1 118 0 5 1 118 0 6 1 118 0 9 1 118 0 10 1 118 0 12 1 118 0 13 1 118 0 15 1 118 0 16 1 118 0 17 1 118 0 19 1 118 0 20 1 118 0 22 1 118 0 24 1 118 0 25 1 118 0 26 1 118 0 27 1 118 0 28 1 118 0 30 1 118 0 32 1 118 0 33 1 118 0 36 4 173 0 38 1 118 0 39 1 118 0 40 1 118 0 66 1 118 0 106 1 118 0 108 1 118 0 109 1 118 0 111 1 118 0 112 1 118 0 113 1 118 1 84]
#[1 1 122 0 8 0 231 0 13 0 231 0 17 1 126 0 20 1 126 0 25 1 122 0 26 0 231 0 27 1 122 0 37 1 126 0 38 1 122 0 42 1 122 0 43 1 122 0 44 1 122 0 45 1 122 0 46 1 122 0 47 1 122 0 49 1 122 0 50 1 122 0 51 1 122 0 52 1 122 0 53 1 122 0 54 1 122 0 55 1 122 0 56 1 122 0 59 1 122 0 61 1 122 0 62 1 122 0 63 1 122 0 67 1 122 0 68 1 122 0 69 1 122 0 71 1 122 0 72 1 122 0 73 1 122 0 78 1 122 0 79 1 122 0 81 1 122 0 84 1 122 0 85 1 122 0 86 1 122 0 87 1 122 0 88 1 122 0 89 1 122 0 90 1 122 0 91 1 122 0 92 1 122 0 93 1 122 0 96 1 122 0 98 1 122 0 100 1 122 0 101 1 122 0 102 1 122 0 104 1 122 0 105 1 122 0 109 1 122 0 114 1 122 0 115 1 122 0 116 1 122 0 117 1 122 0 118 1 122 0 119 1 122 0 120 1 122 1 84]
#[0 1 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 1 134 0 9 1 138 0 13 1 134 0 15 1 138 0 17 1 138 0 20 1 138 0 25 1 134 0 26 1 138 0 27 1 138 0 38]
#[0 1 142 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 1 146 0 2 1 146 0 3 1 150 0 4 1 146 0 5 1 146 0 6 1 150 0 7 1 146 0 9 1 146 0 10 1 150 0 11 1 146 0 12 1 146 0 13 1 150 0 14 1 146 0 15 1 146 0 16 1 146 0 17 1 150 0 18 1 146 0 19 1 146 0 20 1 146 0 22 1 150 0 23 1 146 0 24 1 146 0 25 1 146 0 26 1 146 0 27 1 146 0 28 1 150 0 29 1 146 0 30 1 150 0 31 1 146 0 32 1 146 0 33 1 150 0 34 1 150 0 35 1 146 0 36 1 146 0 38 1 146 0 39 1 146 0 40 1 150 0 41 1 146 0 66 1 146 0 106 1 150 0 107 1 146 0 108 1 146 0 109 1 146 0 111 1 146 0 112 1 146 0 113 1 146 1 84]
#[1 1 154 0 9 1 158 0 13 1 154 0 15 1 158 0 17 1 158 0 20 1 158 0 25 1 154 0 26 1 158 0 27 1 158 0 38]
#[1 1 162 0 2 1 162 0 3 1 166 0 4 1 162 0 5 1 162 0 6 1 166 0 7 1 162 0 9 1 162 0 10 1 166 0 11 1 162 0 12 1 162 0 13 1 166 0 14 1 162 0 15 1 162 0 16 1 162 0 17 1 166 0 18 1 162 0 19 1 162 0 20 1 162 0 22 1 166 0 23 1 162 0 24 1 162 0 25 1 162 0 26 1 162 0 27 1 162 0 28 1 166 0 29 1 162 0 30 1 166 0 31 1 162 0 32 1 162 0 33 1 166 0 34 1 166 0 35 1 162 0 36 1 162 0 38 1 162 0 39 1 162 0 40 1 166 0 41 1 162 0 66 1 162 0 106 1 166 0 107 1 162 0 108 1 162 0 109 1 162 0 111 1 162 0 112 1 162 0 113 1 162 1 84]
#[1 4 177 0 13 4 181 0 17]
#[1 1 170 0 9 1 174 0 13 1 170 0 15 1 174 0 17 1 170 0 26]
#[1 1 178 0 9 1 182 0 13 1 178 0 15 1 182 0 17 1 178 0 26]
#[0 1 186 0 9 0 15 0 26]
#[0 1 190 0 9 0 15 0 26]
#[0 1 194 0 9 0 15 0 26]
#[0 4 233 0 4 0 7 0 11 0 14 0 18 0 23 0 29 0 31 0 34 0 35 0 41 0 107 1 51]
#[0 4 237 0 120]
#[1 1 198 0 2 1 198 0 3 1 198 0 5 1 198 0 6 1 198 0 9 1 198 0 10 1 198 0 12 1 198 0 15 1 198 0 16 1 198 0 19 0 235 0 20 1 198 0 21 1 198 0 22 1 198 0 24 1 198 0 25 1 198 0 26 1 198 0 27 1 198 0 28 1 198 0 30 1 198 0 32 1 198 0 33 1 198 0 36 4 129 0 38 1 198 0 39 1 198 0 40 1 198 0 66 1 198 0 106 1 198 0 108 1 198 0 109 1 198 0 111 1 198 0 112 1 198 0 113 1 198 0 120 4 245 1 24 4 137 1 25 1 198 1 84]
#[0 1 202 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 64 0 66 0 77 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[0 1 206 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 64 0 66 0 77 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[0 1 210 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 0 217 0 37 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 4 249 0 59 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 3 9 0 120 4 253 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 4 253 0 132 4 253 0 133 4 253 0 136 5 5 1 55 2 69 1 76 2 69 1 77 2 69 1 78 5 5 1 81]
#[1 5 9 0 20 0 18 0 25 0 213 0 27 5 13 1 72]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 5 17 1 32 5 17 1 33 5 17 1 34 5 17 1 35 5 17 1 36 5 17 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 2 97 0 8 5 21 0 9 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 59 0 35 0 61 0 39 0 67 0 43 0 69 1 17 0 72 0 47 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 239 0 120 2 5 0 126 1 101 0 127 5 25 0 128 5 25 0 129 5 25 0 130 5 25 0 131 5 29 0 132 5 29 0 133 5 29 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 5 41 0 190 2 1 1 5 2 5 1 6 2 5 1 7 3 209 1 12 2 133 1 13 5 37 1 14 5 41 1 15 5 45 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 3 209 1 47 3 209 1 48 2 229 1 49 2 61 1 50 3 209 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 5 49 1 80 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 5 53 1 32 5 53 1 33 5 53 1 34 5 53 1 35 5 53 1 36 5 53 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 5 57 1 32 5 57 1 33 5 57 1 34 5 57 1 35 5 57 1 36 5 57 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 5 61 0 8]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 5 65 1 32 5 65 1 33 5 65 1 34 5 65 1 35 5 65 1 36 5 65 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 0 218 0 2 0 218 0 3 0 218 0 4 0 203 0 5 0 218 0 6 0 218 0 7 0 243 0 9 0 218 0 10 0 218 0 11 0 218 0 12 0 218 0 13 0 218 0 14 0 247 0 15 0 218 0 16 0 218 0 17 0 218 0 18 0 247 0 19 0 203 0 20 0 218 0 22 0 218 0 23 0 218 0 24 0 203 0 25 0 218 0 26 0 207 0 27 0 218 0 28 0 218 0 29 0 218 0 30 0 218 0 31 0 218 0 32 0 218 0 33 0 218 0 34 0 218 0 35 0 218 0 36 0 243 0 38 0 218 0 39 0 218 0 40 0 218 0 41 0 218 0 66 0 218 0 106 0 218 0 107 0 218 0 108 0 218 0 109 0 218 0 111 0 218 0 112 0 218 0 113 4 117 1 72 0 218 1 84]
#[1 1 218 0 9 1 218 0 15 1 218 0 19 5 69 0 38]
#[0 1 126 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 1 222 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 5 73 0 19]
#[0 1 226 0 19]
#[0 1 138 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 1 158 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 1 230 0 2 1 230 0 3 1 230 0 5 1 230 0 6 1 230 0 9 1 230 0 10 1 230 0 12 4 177 0 13 1 230 0 15 1 230 0 16 4 181 0 17 1 230 0 19 1 230 0 22 1 230 0 24 1 230 0 26 1 230 0 27 1 230 0 28 1 230 0 30 1 230 0 32 1 230 0 33 1 230 0 36 1 230 0 39 1 230 0 40 1 230 0 66 1 230 0 106 1 230 0 108 1 230 0 109 1 230 0 111 1 230 0 112 1 230 0 113 1 230 1 84]
#[0 1 174 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 1 182 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 1 234 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 1 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 1 242 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 1 246 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 1 250 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 1 254 0 2 0 251 0 3 1 254 0 5 1 254 0 6 1 254 0 9 0 255 0 10 1 254 0 12 1 254 0 15 1 254 0 16 1 254 0 19 1 3 0 22 1 254 0 24 1 254 0 26 1 254 0 27 1 254 0 28 1 254 0 30 1 254 0 32 1 254 0 33 1 254 0 36 1 254 0 39 1 254 0 40 1 254 0 66 1 254 0 106 1 254 0 108 1 254 0 109 1 254 0 111 1 254 0 112 1 254 0 113 1 254 1 84]
#[1 2 2 0 2 2 2 0 3 2 2 0 5 2 2 0 6 2 2 0 9 2 2 0 10 1 7 0 12 2 2 0 15 1 11 0 16 2 2 0 19 2 2 0 22 2 2 0 24 2 2 0 26 2 2 0 27 2 2 0 28 2 2 0 30 2 2 0 32 2 2 0 33 2 2 0 36 2 2 0 39 2 2 0 40 2 2 0 66 2 2 0 106 2 2 0 108 2 2 0 109 2 2 0 111 2 2 0 112 2 2 0 113 2 2 1 84]
#[1 2 6 0 2 2 6 0 3 2 6 0 5 2 6 0 6 2 6 0 9 2 6 0 10 2 6 0 12 2 6 0 15 2 6 0 16 2 6 0 19 2 6 0 22 2 6 0 24 2 6 0 26 2 6 0 27 1 15 0 28 2 6 0 30 2 6 0 32 2 6 0 33 2 6 0 36 2 6 0 39 2 6 0 40 2 6 0 66 2 6 0 106 2 6 0 108 2 6 0 109 2 6 0 111 1 19 0 112 1 23 0 113 2 6 1 84]
#[1 2 10 0 2 2 10 0 3 2 10 0 5 2 10 0 6 2 10 0 9 2 10 0 10 2 10 0 12 2 10 0 15 2 10 0 16 2 10 0 19 2 10 0 22 2 10 0 24 2 10 0 26 1 27 0 27 2 10 0 28 1 31 0 30 2 10 0 32 1 35 0 33 2 10 0 36 2 10 0 39 2 10 0 40 1 39 0 66 2 10 0 106 2 10 0 108 2 10 0 109 1 43 0 111 2 10 0 112 2 10 0 113 2 10 1 84]
#[1 1 47 0 2 2 14 0 3 2 14 0 5 2 14 0 6 2 14 0 9 2 14 0 10 2 14 0 12 2 14 0 15 2 14 0 16 2 14 0 19 2 14 0 22 2 14 0 24 2 14 0 26 2 14 0 27 2 14 0 28 2 14 0 30 1 51 0 32 2 14 0 33 2 14 0 36 2 14 0 39 2 14 0 40 2 14 0 66 2 14 0 106 2 14 0 108 2 14 0 109 2 14 0 111 2 14 0 112 2 14 0 113 2 14 1 84]
#[1 2 18 0 2 2 18 0 3 1 55 0 5 2 18 0 6 2 18 0 9 2 18 0 10 2 18 0 12 2 18 0 15 2 18 0 16 2 18 0 19 2 18 0 22 2 18 0 24 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 30 2 18 0 32 2 18 0 33 2 18 0 36 2 18 0 39 2 18 0 40 2 18 0 66 2 18 0 106 2 18 0 108 2 18 0 109 2 18 0 111 2 18 0 112 2 18 0 113 2 18 1 84]
#[1 2 22 0 2 2 22 0 3 2 22 0 5 2 22 0 6 2 22 0 9 2 22 0 10 2 22 0 12 2 22 0 15 2 22 0 16 2 22 0 19 2 22 0 22 2 22 0 24 2 22 0 26 2 22 0 27 2 22 0 28 2 22 0 30 2 22 0 32 2 22 0 33 2 22 0 36 2 22 0 39 1 59 0 40 2 22 0 66 2 22 0 106 2 22 0 108 2 22 0 109 2 22 0 111 2 22 0 112 2 22 0 113 2 22 1 84]
#[1 2 26 0 2 2 26 0 3 2 26 0 5 2 26 0 6 2 26 0 9 2 26 0 10 2 26 0 12 2 26 0 15 2 26 0 16 2 26 0 19 2 26 0 22 2 26 0 24 2 26 0 26 2 26 0 27 2 26 0 28 2 26 0 30 2 26 0 32 2 26 0 33 2 26 0 36 2 26 0 39 2 26 0 40 2 26 0 66 1 63 0 106 2 26 0 108 2 26 0 109 2 26 0 111 2 26 0 112 2 26 0 113 2 26 1 84]
#[1 2 30 0 2 2 30 0 3 2 30 0 5 1 67 0 6 2 30 0 9 2 30 0 10 2 30 0 12 2 30 0 15 2 30 0 16 2 30 0 19 2 30 0 22 2 30 0 24 2 30 0 26 2 30 0 27 2 30 0 28 2 30 0 30 2 30 0 32 2 30 0 33 2 30 0 36 2 30 0 39 2 30 0 40 2 30 0 66 2 30 0 106 2 30 0 108 2 30 0 109 2 30 0 111 2 30 0 112 2 30 0 113 2 30 1 84]
#[1 2 34 0 2 2 34 0 3 2 34 0 5 2 34 0 6 2 34 0 9 2 34 0 10 2 34 0 12 2 34 0 15 2 34 0 16 2 34 0 19 2 34 0 22 2 34 0 24 2 34 0 26 2 34 0 27 2 34 0 28 2 34 0 30 2 34 0 32 2 34 0 33 1 71 0 36 2 34 0 39 2 34 0 40 2 34 0 66 2 34 0 106 1 75 0 108 2 34 0 109 2 34 0 111 2 34 0 112 2 34 0 113 2 34 1 84]
#[0 2 38 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 2 42 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 1 79 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 0 0 1 84]
#[0 0 0 1 84]
#[1 5 161 0 120 5 165 1 68 5 169 1 69]
#[1 2 241 0 27 0 217 0 37 0 41 0 42 0 22 0 44 0 22 0 46 0 22 0 49 0 22 0 54 0 53 0 59 0 22 0 61 0 22 0 67 0 22 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 97 0 85 0 22 0 86 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 0 22 0 120 3 197 0 166 3 197 1 55 5 173 1 67]
#[0 0 0 1 84]
#[1 5 177 0 26 1 65 0 105 5 181 0 193 5 181 0 218]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 1 53 0 100 3 9 0 120 5 189 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 5 189 0 132 5 189 0 133 5 189 0 136 5 193 0 187 2 69 1 76 2 69 1 77 2 69 1 78]
#[1 0 66 0 27 0 66 0 37 0 66 0 42 0 66 0 44 0 66 0 46 0 66 0 49 0 66 0 50 0 66 0 54 0 66 0 56 0 66 0 59 0 66 0 61 0 66 0 67 0 66 0 68 0 66 0 69 0 66 0 71 0 66 0 73 0 66 0 78 0 66 0 79 0 66 0 81 0 66 0 82 0 66 0 85 0 66 0 86 0 66 0 87 0 66 0 88 0 66 0 91 0 66 0 96 0 66 0 100 0 66 0 101 1 65 0 105 0 66 0 120 5 197 0 218]
#[1 0 18 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 8 0 18 0 9 0 18 0 10 0 18 0 12 0 18 0 15 0 18 0 16 0 18 0 19 0 18 0 20 0 18 0 21 0 18 0 22 0 18 0 24 0 18 0 26 1 83 0 27 0 18 0 28 0 18 0 30 0 18 0 32 0 18 0 33 0 18 0 36 0 18 0 38 0 18 0 39 0 18 0 40 0 18 0 52 0 18 0 64 0 18 0 66 0 18 0 77 0 18 0 105 0 18 0 106 0 18 0 108 0 18 0 109 0 18 0 111 0 18 0 112 0 18 0 113 0 18 0 120 4 117 1 72 0 18 1 84]
#[1 5 201 0 120 5 205 0 180 5 209 0 181 5 209 0 182 5 217 0 183]
#[1 0 226 0 5 0 226 0 15 0 226 0 21 4 129 0 38 0 226 0 106 0 226 0 111 0 226 0 120 4 133 1 24 4 137 1 25]
#[0 0 242 0 5 0 15 0 21 0 106 0 111 0 120]
#[0 2 54 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 2 241 0 27 3 177 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 3 181 0 50 0 71 0 54 3 185 0 56 0 53 0 59 0 75 0 61 0 79 0 67 3 189 0 68 0 83 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 3 193 0 82 0 97 0 85 0 87 0 86 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 0 91 0 120 5 221 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 5 221 0 132 5 221 0 133 5 221 0 136 3 197 0 166 5 225 0 196 3 197 1 55 5 229 1 67 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 0 0 1 84]
#[0 2 58 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 2 62 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 2 66 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 2 70 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 2 74 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 5 233 0 94 5 237 0 105 5 241 0 191 5 245 0 197]
#[0 2 78 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 1 53 0 100 3 217 0 120 5 189 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 5 189 0 132 5 189 0 133 5 189 0 136 5 249 0 138 5 193 0 187 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 1 87 1 84]
#[0 2 86 1 84]
#[0 1 91 1 84]
#[1 5 253 0 26 1 65 0 105 5 181 0 193 5 181 0 218]
#[0 2 94 1 84]
#[0 2 98 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120 1 84]
#[0 2 102 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120 1 84]
#[1 1 65 0 105 6 1 0 218]
#[1 2 241 0 27 0 217 0 37 0 41 0 42 0 22 0 44 0 22 0 46 0 22 0 49 6 5 0 52 0 22 0 54 0 53 0 59 0 22 0 61 0 22 0 67 0 22 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 97 0 85 0 22 0 86 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 0 22 0 120 6 13 0 166 6 13 0 213 6 13 0 214 6 13 1 55 6 21 1 67]
#[0 2 106 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120 1 84]
#[0 0 0 1 84]
#[0 6 25 0 120]
#[0 0 218 0 8 0 9 0 15 0 20 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 76 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 95 0 96 0 100 0 101 0 103 0 105 0 109 0 120]
#[1 6 29 0 8 2 110 0 9 2 110 0 15 6 33 0 20 2 110 0 26 2 110 0 27 2 110 0 37 2 110 0 42 2 110 0 44 2 110 0 46 2 110 0 49 2 110 0 50 2 110 0 52 2 110 0 54 2 110 0 56 2 110 0 59 2 110 0 61 2 110 0 67 2 110 0 68 2 110 0 69 2 110 0 71 2 110 0 73 2 110 0 76 2 110 0 78 2 110 0 79 2 110 0 81 2 110 0 82 2 110 0 85 2 110 0 86 2 110 0 87 2 110 0 88 2 110 0 91 2 110 0 96 2 110 0 100 2 110 0 101 2 110 0 109 2 110 0 120]
#[1 2 241 0 27 0 22 0 58 0 22 0 64 0 22 0 77 0 22 0 105 6 37 1 67]
#[1 6 41 0 64 6 45 0 105 6 49 0 173 6 53 1 63]
#[1 3 117 0 120 6 57 0 137 6 57 0 138 6 57 0 139]
#[1 6 61 0 20 6 65 0 26]
#[1 2 241 0 27 0 22 0 58 0 22 0 105 6 69 1 67]
#[1 6 33 0 20 6 73 0 105]
#[1 3 117 0 120 6 77 0 137 6 77 0 138 6 77 0 139]
#[1 0 22 0 8 2 241 0 27 6 81 1 67]
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 59 0 61 0 68 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 117 0 101 3 165 0 157 3 165 0 158 0 165 0 165 0 169 0 166 3 165 0 167 3 165 0 199 3 165 0 200 0 169 1 55 3 165 1 62 2 114 1 84]
#[0 2 118 0 26 0 37 0 42 0 50 0 56 0 59 0 65 0 68 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 87 0 88 0 91 0 96 0 101 1 84]
#[0 2 122 0 26 0 37 0 42 0 50 0 56 0 59 0 68 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 87 0 88 0 91 0 96 0 101 1 84]
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 59 0 57 0 65 0 61 0 68 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 117 0 101 6 85 0 152 3 161 0 154 3 161 0 155 3 161 0 156 0 157 0 157 0 157 0 158 0 165 0 165 0 169 0 166 0 157 0 167 0 157 0 199 0 157 0 200 0 169 1 55 0 157 1 62 2 126 1 84]
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 59 0 61 0 68 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 117 0 101 3 165 0 157 3 165 0 158 0 165 0 165 0 169 0 166 3 165 0 167 3 165 0 199 3 165 0 200 0 169 1 55 3 165 1 62 2 130 1 84]
#[1 6 89 0 68 3 117 0 120 3 121 0 137 3 121 0 138 3 121 0 139]
#[0 6 93 0 120]
#[0 6 97 0 120]
#[0 6 101 0 120]
#[0 6 105 0 120]
#[0 2 134 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[1 3 117 0 120 6 109 0 137 6 109 0 138 6 109 0 139]
#[0 2 138 0 37 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 76 0 86 0 120]
#[0 6 113 0 9]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 5 25 0 128 5 25 0 129 5 25 0 130 5 25 0 131 5 29 0 132 5 29 0 133 5 29 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 3 209 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 3 209 1 47 3 209 1 48 2 229 1 49 2 61 1 50 3 209 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 0 218 0 2 0 218 0 3 0 218 0 4 0 218 0 5 0 218 0 6 0 218 0 7 0 218 0 8 0 218 0 9 0 218 0 10 0 218 0 11 0 218 0 12 0 218 0 13 0 218 0 14 0 218 0 15 0 218 0 16 0 218 0 17 0 218 0 18 0 218 0 19 0 203 0 20 0 218 0 22 0 218 0 23 0 218 0 24 0 203 0 25 0 218 0 26 0 207 0 27 0 218 0 28 0 218 0 29 0 218 0 30 0 218 0 31 0 218 0 32 0 218 0 33 0 218 0 34 0 218 0 35 0 218 0 36 0 203 0 38 0 218 0 39 0 218 0 40 0 218 0 41 0 218 0 66 0 218 0 94 0 218 0 105 0 218 0 106 0 218 0 107 0 218 0 108 0 218 0 109 0 218 0 111 0 218 0 112 0 218 0 113 0 18 0 120 4 117 1 72 0 218 1 84]
#[0 2 142 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 2 46 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 2 146 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 2 150 0 15 6 117 0 58 6 121 0 89 2 150 0 111 6 125 1 75]
#[0 2 154 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 64 0 66 0 77 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[1 0 217 0 37 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 3 9 0 120 6 129 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 6 129 0 132 6 129 0 133 6 129 0 136 3 205 1 55 2 69 1 76 2 69 1 77 2 69 1 78]
#[1 6 133 0 15 6 137 0 111]
#[0 2 158 0 15 0 111]
#[1 6 141 0 24 6 145 0 26]
#[0 2 162 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 6 149 0 26]
#[0 2 166 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 6 153 0 26]
#[0 4 69 0 8]
#[0 6 157 0 102]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 6 161 0 26 0 213 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 59 0 35 0 61 0 39 0 67 0 43 0 69 1 17 0 72 0 47 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 1 95 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 6 173 0 222 6 169 0 229 6 173 0 243 6 177 0 245 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 6 169 1 33 6 169 1 34 6 169 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 6 181 1 80 2 89 1 82]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 6 185 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 6 185 1 47 6 185 1 48 2 229 1 49 2 61 1 50 6 185 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 6 189 0 38 6 193 1 22 6 197 1 23 6 201 1 24 4 137 1 25]
#[1 2 170 0 8 6 189 0 38 6 205 1 22 6 197 1 23 6 209 1 24 4 137 1 25]
#[0 6 213 0 8]
#[1 1 198 0 8 1 198 0 9 1 198 0 15 4 241 0 20 1 198 0 26 1 198 0 38 1 198 0 52 1 198 0 64 1 198 0 77 1 198 0 105]
#[0 2 174 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 6 217 0 26]
#[1 0 213 0 27 1 99 0 120 6 225 1 72]
#[0 6 229 0 120]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 6 233 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 6 233 1 47 6 233 1 48 2 229 1 49 2 61 1 50 6 233 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 6 237 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 6 237 1 47 6 237 1 48 2 229 1 49 2 61 1 50 6 237 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 6 241 0 26]
#[1 0 197 0 8 0 213 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 59 0 35 0 61 0 39 0 67 0 43 0 69 1 17 0 72 0 47 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 1 95 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 6 245 0 137 6 245 0 138 6 245 0 139 1 153 0 187 6 249 0 253 6 253 0 254 7 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 7 1 1 21 7 5 1 26 2 5 1 27 2 5 1 28 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 7 13 1 80 2 89 1 82]
#[1 7 17 0 48 7 21 0 60 7 25 0 255 7 29 1 0 7 33 1 3]
#[1 1 65 0 105 7 37 0 218]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 7 41 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 7 41 1 47 7 41 1 48 2 229 1 49 2 61 1 50 7 41 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 2 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 7 45 0 26]
#[0 2 182 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 60 0 61 0 62 0 63 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 11 0 37 0 41 0 42 0 221 0 43 0 15 0 44 0 229 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 241 0 51 0 245 0 53 0 27 0 54 0 49 0 56 0 31 0 59 0 35 0 61 1 1 0 62 1 5 0 63 0 39 0 67 0 61 0 68 0 43 0 69 0 69 0 71 1 17 0 72 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 1 21 0 84 0 97 0 85 0 47 0 86 0 101 0 87 0 105 0 88 1 29 0 89 1 33 0 90 1 37 0 91 1 41 0 92 1 45 0 93 0 113 0 96 1 49 0 98 1 53 0 100 0 117 0 101 1 57 0 102 1 61 0 104 1 65 0 105 7 49 0 109 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 51 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 145 0 165 0 169 0 166 7 53 0 167 1 153 0 187 7 53 0 199 7 53 0 218 7 53 0 220 7 53 0 221 1 173 0 222 7 53 0 223 7 53 0 224 7 53 0 225 7 53 0 226 7 53 0 227 7 53 0 228 1 201 0 229 7 53 0 230 7 53 0 231 7 53 0 232 7 53 0 240 7 53 0 241 7 53 0 242 7 53 0 246 7 53 0 247 7 53 0 248 7 53 0 249 7 53 0 250 7 53 0 251 7 53 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 0 169 1 55 7 53 1 62 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 7 53 1 79 2 85 1 80 2 89 1 82]
#[0 2 186 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 7 57 0 218 7 57 0 223 7 57 0 224 7 57 0 225 7 57 0 226 7 57 0 227 7 57 0 228 1 201 0 229 7 57 0 230 7 57 0 231 7 57 0 232 7 57 0 240 7 57 0 241 7 57 0 242 7 57 0 246 7 57 0 247 7 57 0 248 7 57 0 249 7 57 0 250 7 57 0 251 7 57 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 7 57 1 79 2 89 1 82]
#[0 2 190 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 64 0 66 0 77 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[0 7 61 0 50]
#[0 7 65 0 50]
#[0 7 69 0 39]
#[1 2 194 0 2 2 194 0 3 2 194 0 5 2 194 0 6 2 194 0 9 2 194 0 10 2 194 0 12 2 194 0 15 2 194 0 16 2 194 0 19 2 194 0 20 2 194 0 21 2 194 0 22 2 194 0 24 2 194 0 25 2 194 0 26 2 194 0 27 2 194 0 28 2 194 0 30 2 194 0 32 2 194 0 33 2 194 0 36 4 129 0 38 2 194 0 39 2 194 0 40 2 194 0 66 2 194 0 106 2 194 0 108 2 194 0 109 2 194 0 111 2 194 0 112 2 194 0 113 2 194 0 120 7 73 1 25 2 194 1 84]
#[0 2 198 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[0 7 77 0 25]
#[1 7 81 0 89 7 85 0 92 7 89 0 120]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 7 93 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 7 93 1 47 7 93 1 48 2 229 1 49 2 61 1 50 7 93 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 7 97 0 20]
#[0 7 101 0 50]
#[0 2 202 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 2 206 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 7 105 0 120]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 7 109 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 7 109 1 47 7 109 1 48 2 229 1 49 2 61 1 50 7 109 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 2 210 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 2 214 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 2 218 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 100 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 2 222 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 100 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 2 226 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 100 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 2 230 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 100 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 2 234 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 100 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 2 238 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 100 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 2 242 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 100 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 2 246 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 100 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 2 250 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 100 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 2 254 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 100 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 3 2 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 100 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 3 6 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 100 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 7 113 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 7 113 1 47 7 113 1 48 2 229 1 49 2 61 1 50 7 113 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 7 117 0 8]
#[0 7 121 0 120]
#[1 3 10 0 2 3 10 0 3 3 10 0 5 3 10 0 6 3 10 0 9 3 10 0 10 3 10 0 12 3 10 0 15 3 10 0 16 3 10 0 19 3 10 0 20 3 10 0 21 3 10 0 22 3 10 0 24 3 10 0 25 3 10 0 26 3 10 0 27 3 10 0 28 3 10 0 30 3 10 0 32 3 10 0 33 3 10 0 36 4 129 0 38 3 10 0 39 3 10 0 40 3 10 0 66 3 10 0 106 3 10 0 108 3 10 0 109 3 10 0 111 3 10 0 112 3 10 0 113 3 10 0 120 7 73 1 25 3 10 1 84]
#[0 3 14 0 37 0 44 0 46 0 49 0 54 0 59 0 61 0 67 0 69 0 86 0 120]
#[1 5 201 0 120 7 125 0 180 5 209 0 181 5 209 0 182 5 217 0 183]
#[0 3 18 0 37 0 44 0 46 0 49 0 54 0 59 0 61 0 67 0 69 0 86 0 120]
#[0 3 22 0 37 0 44 0 46 0 49 0 54 0 59 0 61 0 67 0 69 0 86 0 120]
#[1 0 213 0 27 7 129 0 72 0 18 0 120 7 133 1 72]
#[0 7 137 0 25]
#[0 3 26 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 3 30 0 19]
#[1 7 141 0 9 0 211 0 20 4 129 0 38 4 133 1 24 4 137 1 25]
#[1 7 145 0 5 7 149 0 9 0 242 0 20 0 18 0 25 0 213 0 27 4 141 1 72]
#[0 3 34 0 9 0 15]
#[1 7 153 0 9 7 157 0 15]
#[0 3 38 0 9 0 15]
#[1 3 42 0 9 3 42 0 15 1 226 0 19]
#[1 0 217 0 37 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 4 249 0 59 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 3 9 0 120 7 161 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 7 161 0 132 7 161 0 133 7 161 0 136 5 5 1 55 2 69 1 76 2 69 1 77 2 69 1 78 5 5 1 81]
#[0 3 46 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 3 50 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 7 165 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 7 165 1 47 7 165 1 48 2 229 1 49 2 61 1 50 7 165 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 3 54 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 7 169 0 39]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 1 65 0 105 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 7 177 0 218 2 1 1 5 2 5 1 6 2 5 1 7 7 177 1 12 2 133 1 13 2 137 1 16 7 177 1 17 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 7 177 1 47 7 177 1 48 2 229 1 49 2 61 1 50 7 177 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 7 185 1 32 7 185 1 33 7 185 1 34 7 185 1 35 7 185 1 36 7 185 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 7 189 1 32 7 189 1 33 7 189 1 34 7 189 1 35 7 189 1 36 7 189 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 7 193 1 32 7 193 1 33 7 193 1 34 7 193 1 35 7 193 1 36 7 193 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 7 197 1 32 7 197 1 33 7 197 1 34 7 197 1 35 7 197 1 36 7 197 1 37 7 197 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 7 201 1 32 7 201 1 33 7 201 1 34 7 201 1 35 7 201 1 36 7 201 1 37 7 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 7 205 1 38 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 7 209 1 38 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 7 213 1 38 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 7 217 1 39 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 7 221 1 39 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 7 225 1 39 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 3 9 0 120 7 229 0 128 7 229 0 129 7 229 0 130 7 229 0 131 7 233 0 132 7 233 0 133 7 233 0 136 2 69 1 76 2 69 1 77 2 69 1 78]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 7 237 1 39 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 7 241 1 40 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 7 245 1 40 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 7 249 1 41 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 7 253 1 42 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 8 1 1 43 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 8 5 1 44 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 8 9 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 8 9 1 47 8 9 1 48 2 229 1 49 2 61 1 50 8 9 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 8 13 1 45 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 3 58 0 15 8 17 0 58 3 58 0 111]
#[1 8 21 0 15 8 25 0 111]
#[0 3 62 0 15 0 111]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 1 53 0 100 3 9 0 120 8 29 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 8 29 0 132 8 29 0 133 8 29 0 136 8 33 0 187 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 3 66 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 3 70 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 3 74 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 8 37 0 120 8 41 0 188]
#[1 8 37 0 120 8 45 0 188]
#[0 3 78 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 1 214 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 8 49 0 15 8 53 0 26]
#[0 3 82 0 15 0 26]
#[0 3 86 0 15 0 26]
#[1 3 90 0 15 3 90 0 26 8 57 0 31 5 69 0 38]
#[1 5 201 0 120 8 61 0 180 5 209 0 181 5 209 0 182 5 217 0 183]
#[1 5 233 0 94 5 237 0 105 8 65 0 191 8 69 0 197]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 1 53 0 100 3 217 0 120 8 29 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 8 29 0 132 8 29 0 133 8 29 0 136 5 249 0 138 8 33 0 187 2 69 1 76 2 69 1 77 2 69 1 78]
#[1 3 9 0 120 8 77 0 133 8 77 0 134 8 81 0 192 4 45 1 76 4 45 1 77 4 45 1 78]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 11 0 37 0 41 0 42 0 221 0 43 0 15 0 44 0 229 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 241 0 51 0 245 0 53 0 27 0 54 0 49 0 56 0 31 0 59 0 35 0 61 1 1 0 62 1 5 0 63 0 39 0 67 0 61 0 68 0 43 0 69 0 69 0 71 1 17 0 72 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 1 21 0 84 0 97 0 85 0 47 0 86 0 101 0 87 0 105 0 88 8 85 0 89 1 33 0 90 1 37 0 91 8 89 0 92 1 45 0 93 0 113 0 96 1 49 0 98 1 53 0 100 0 117 0 101 1 57 0 102 1 61 0 104 1 65 0 105 8 93 0 109 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 51 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 145 0 165 0 169 0 166 4 109 0 167 1 153 0 187 8 97 0 198 4 109 0 199 4 109 0 218 8 101 0 219 4 109 0 220 4 109 0 221 1 173 0 222 4 109 0 223 4 109 0 224 4 109 0 225 4 109 0 226 4 109 0 227 4 109 0 228 1 201 0 229 4 109 0 230 4 109 0 231 4 109 0 232 4 109 0 240 4 109 0 241 4 109 0 242 4 109 0 246 4 109 0 247 4 109 0 248 4 109 0 249 4 109 0 250 4 109 0 251 4 109 1 4 8 105 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 8 105 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 0 169 1 55 4 109 1 62 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 4 109 1 79 2 85 1 80 2 89 1 82]
#[1 5 237 0 105 8 109 0 197]
#[0 3 94 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 8 113 0 8]
#[0 1 103 1 84]
#[0 3 102 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120 1 84]
#[0 3 106 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 59 0 61 0 67 0 69 0 71 0 73 0 78 0 79 0 81 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 3 110 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 59 0 61 0 67 0 69 0 71 0 73 0 78 0 79 0 81 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 3 114 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 59 0 61 0 67 0 69 0 71 0 73 0 78 0 79 0 81 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[0 3 118 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 59 0 61 0 67 0 69 0 71 0 73 0 78 0 79 0 81 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 120]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 1 53 0 100 3 9 0 120 8 117 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 8 117 0 132 8 117 0 133 8 117 0 136 8 121 0 187 2 69 1 76 2 69 1 77 2 69 1 78]
#[1 8 125 0 105 8 129 0 201]
#[1 2 93 0 1 3 213 0 8 3 122 0 9 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 217 0 37 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 8 133 0 105 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 1 107 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 8 161 1 47 2 181 1 49 2 61 1 50 8 161 1 55 8 149 1 56 8 153 1 57 8 157 1 58 8 161 1 59 8 161 1 60 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 7 89 0 120]
#[1 8 169 0 58 6 41 0 64 8 173 0 77 8 177 0 105 8 181 0 168 8 185 0 172 8 189 0 173 8 193 0 175]
#[1 3 9 0 120 8 201 0 133 8 201 0 135 8 205 0 174 4 45 1 76 4 45 1 77 4 45 1 78]
#[1 8 209 0 15 8 213 0 26 0 6 0 37 8 217 0 109 0 6 0 120 8 221 1 54 8 225 1 64 8 229 1 65 8 233 1 66]
#[1 6 45 0 105 8 237 1 63]
#[0 3 126 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 8 241 0 20 8 245 0 26]
#[1 8 249 0 10 7 89 0 120]
#[0 3 130 0 26 0 37 0 42 0 50 0 56 0 59 0 65 0 68 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 87 0 88 0 91 0 96 0 101 1 84]
#[1 8 253 0 58 9 1 0 105 9 5 0 205 9 9 0 206]
#[1 3 134 0 57 3 134 0 75 3 134 0 80 3 134 0 83 3 134 0 99 3 134 0 109 9 13 0 142 9 17 0 143]
#[1 6 33 0 20 9 21 0 105]
#[0 9 25 0 8]
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 59 0 61 0 68 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 117 0 101 3 165 0 157 3 165 0 158 0 165 0 165 0 169 0 166 3 165 0 167 3 165 0 199 3 165 0 200 0 169 1 55 3 165 1 62 3 138 1 84]
#[0 9 29 0 120]
#[1 2 241 0 27 0 22 0 58 0 22 0 64 0 22 0 77 0 22 0 105 9 33 1 67]
#[1 6 41 0 64 6 45 0 105 9 37 0 173 9 41 1 63]
#[1 2 241 0 27 0 22 0 58 0 22 0 105 9 45 1 67]
#[1 0 22 0 8 2 241 0 27 9 49 1 67]
#[1 6 33 0 20 9 53 0 26]
#[0 3 142 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 3 9 0 120 9 57 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 9 57 0 132 9 57 0 133 9 57 0 136 2 69 1 76 2 69 1 77 2 69 1 78]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 3 9 0 120 9 61 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 9 61 0 132 9 61 0 133 9 61 0 136 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 3 146 0 15 0 111]
#[0 3 150 0 15 0 111]
#[1 3 233 0 36 0 6 0 37 0 6 0 44 0 6 0 46 0 6 0 49 0 6 0 54 0 6 0 61 0 6 0 67 0 6 0 69 0 6 0 86 0 6 0 120 3 241 1 54 9 65 1 74]
#[0 3 154 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 64 0 66 0 77 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 69 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 69 1 47 9 69 1 48 2 229 1 49 2 61 1 50 9 69 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 3 158 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 3 162 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 3 166 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 9 73 0 8]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 9 77 0 26 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 81 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 81 1 47 9 81 1 48 2 229 1 49 2 61 1 50 9 81 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 3 170 0 26]
#[0 3 174 0 9 0 15 0 26]
#[0 9 85 0 26]
#[1 9 89 0 15 3 178 0 26]
#[1 0 217 0 37 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 4 249 0 59 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 3 9 0 120 9 93 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 9 93 0 132 9 93 0 133 9 93 0 136 5 5 1 55 2 69 1 76 2 69 1 77 2 69 1 78 5 5 1 81]
#[0 9 97 0 9]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 7 69 0 39 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 101 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 101 1 47 9 101 1 48 2 229 1 49 2 61 1 50 9 101 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 3 182 0 2 3 182 0 3 3 182 0 5 3 182 0 6 3 182 0 9 3 182 0 10 3 182 0 12 3 182 0 13 3 182 0 15 3 182 0 16 3 182 0 17 3 182 0 19 3 182 0 20 3 182 0 22 3 182 0 24 3 182 0 25 3 182 0 26 3 182 0 27 3 182 0 28 3 182 0 30 3 182 0 32 3 182 0 33 3 182 0 36 6 189 0 38 3 182 0 39 3 182 0 40 3 182 0 66 3 182 0 106 3 182 0 108 3 182 0 109 3 182 0 111 3 182 0 112 3 182 0 113 9 105 1 23 9 109 1 24 4 137 1 25 3 182 1 84]
#[0 3 186 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 4 129 0 38 9 113 0 105 9 117 0 216 7 73 1 25]
#[1 3 190 0 2 3 190 0 3 3 190 0 5 3 190 0 6 3 190 0 9 3 190 0 10 3 190 0 12 3 190 0 13 3 190 0 15 3 190 0 16 3 190 0 17 3 190 0 19 3 190 0 20 3 190 0 22 3 190 0 24 3 190 0 25 3 190 0 26 3 190 0 27 3 190 0 28 3 190 0 30 3 190 0 32 3 190 0 33 3 190 0 36 6 189 0 38 3 190 0 39 3 190 0 40 3 190 0 66 3 190 0 106 3 190 0 108 3 190 0 109 3 190 0 111 3 190 0 112 3 190 0 113 9 105 1 23 9 121 1 24 4 137 1 25 3 190 1 84]
#[1 4 129 0 38 9 113 0 105 9 125 0 216 7 73 1 25]
#[1 2 93 0 1 2 97 0 8 9 129 0 9 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 137 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 9 133 1 20 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 137 1 47 9 137 1 48 2 229 1 49 2 61 1 50 9 137 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 3 194 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 3 198 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 66 0 106 0 107 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 9 141 0 120]
#[0 3 202 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 9 145 0 9]
#[0 9 149 0 9]
#[0 3 206 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 3 210 0 9 0 215 0 20 1 6 0 25 3 210 0 26 1 111 0 27 4 149 0 38 4 153 1 72]
#[1 9 153 0 9 9 157 0 26]
#[0 3 214 0 9 0 26]
#[1 0 223 0 20 1 114 0 25 1 114 0 27]
#[1 3 218 0 9 1 146 0 20 1 146 0 25 3 218 0 26 1 146 0 27 1 146 0 38]
#[0 1 162 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 0 217 0 37 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 4 249 0 59 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 3 9 0 120 9 161 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 9 161 0 132 9 161 0 133 9 161 0 136 5 5 1 55 2 69 1 76 2 69 1 77 2 69 1 78 5 5 1 81]
#[0 9 165 0 8]
#[1 1 65 0 105 9 169 0 218]
#[1 3 222 0 8 3 222 0 13 3 222 0 17 3 222 0 26 3 222 0 27 3 222 0 37 3 222 0 42 3 222 0 43 3 222 0 44 3 222 0 45 3 222 0 46 3 222 0 47 7 17 0 48 3 222 0 49 3 222 0 50 3 222 0 51 3 222 0 52 3 222 0 53 3 222 0 54 3 222 0 55 3 222 0 56 3 222 0 59 7 21 0 60 3 222 0 61 3 222 0 62 3 222 0 63 3 222 0 67 3 222 0 68 3 222 0 69 3 222 0 71 3 222 0 72 3 222 0 73 3 222 0 78 3 222 0 79 3 222 0 81 3 222 0 84 3 222 0 85 3 222 0 86 3 222 0 87 3 222 0 88 3 222 0 89 3 222 0 90 3 222 0 91 3 222 0 92 3 222 0 93 3 222 0 96 3 222 0 98 3 222 0 100 3 222 0 101 3 222 0 102 3 222 0 104 3 222 0 105 3 222 0 109 3 222 0 114 3 222 0 115 3 222 0 116 3 222 0 117 3 222 0 118 3 222 0 119 3 222 0 120 9 173 1 0 9 177 1 3 3 222 1 84]
#[0 3 226 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 60 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 3 230 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 3 234 0 8 3 234 0 13 3 234 0 17 3 234 0 26 3 234 0 27 3 234 0 37 3 234 0 42 3 234 0 43 3 234 0 44 3 234 0 45 3 234 0 46 3 234 0 47 7 17 0 48 3 234 0 49 3 234 0 50 3 234 0 51 3 234 0 52 3 234 0 53 3 234 0 54 3 234 0 55 3 234 0 56 3 234 0 59 7 21 0 60 3 234 0 61 3 234 0 62 3 234 0 63 3 234 0 67 3 234 0 68 3 234 0 69 3 234 0 71 3 234 0 72 3 234 0 73 3 234 0 78 3 234 0 79 3 234 0 81 3 234 0 84 3 234 0 85 3 234 0 86 3 234 0 87 3 234 0 88 3 234 0 89 3 234 0 90 3 234 0 91 3 234 0 92 3 234 0 93 3 234 0 96 3 234 0 98 3 234 0 100 3 234 0 101 3 234 0 102 3 234 0 104 3 234 0 105 3 234 0 109 3 234 0 114 3 234 0 115 3 234 0 116 3 234 0 117 3 234 0 118 3 234 0 119 3 234 0 120 9 181 0 255 7 29 1 0 9 185 1 3 3 234 1 84]
#[0 9 189 0 9]
#[0 3 238 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 3 242 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 60 0 61 0 62 0 63 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 3 246 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 3 250 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 3 254 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 4 2 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 4 6 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[0 4 10 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[0 9 193 0 72]
#[0 9 197 0 20]
#[0 4 14 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 4 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 66 0 67 0 68 0 69 0 71 0 73 0 76 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 95 0 96 0 100 0 101 0 103 0 105 0 106 0 107 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[0 9 201 0 39]
#[0 9 205 0 89]
#[0 4 22 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 4 26 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 66 0 106 0 107 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 9 209 0 39]
#[0 4 30 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 2 93 0 1 2 97 0 8 9 213 0 9 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 137 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 9 217 1 20 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 137 1 47 9 137 1 48 2 229 1 49 2 61 1 50 9 137 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 0 18 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 8 0 18 0 9 0 18 0 10 0 18 0 12 0 18 0 15 0 18 0 16 0 18 0 19 0 18 0 20 0 18 0 21 0 18 0 22 0 18 0 24 0 18 0 25 0 18 0 26 1 83 0 27 0 18 0 28 0 18 0 30 0 18 0 32 0 18 0 33 0 18 0 36 0 18 0 38 0 18 0 39 0 18 0 40 0 18 0 52 0 18 0 64 0 18 0 66 0 18 0 77 0 18 0 105 0 18 0 106 0 18 0 108 0 18 0 109 0 18 0 111 0 18 0 112 0 18 0 113 0 18 0 120 9 221 1 72 0 18 1 84]
#[1 8 49 0 15 4 34 0 26]
#[1 0 213 0 27 0 18 0 120 9 225 1 72]
#[0 9 229 0 120]
#[0 9 233 0 120]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 9 237 1 32 9 237 1 33 9 237 1 34 9 237 1 35 9 237 1 36 9 237 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 3 9 0 120 9 241 0 133 9 241 0 135 4 45 1 76 4 45 1 77 4 45 1 78]
#[1 2 93 0 1 2 97 0 8 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 9 245 0 137 9 245 0 138 9 245 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 249 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 5 1 26 2 5 1 27 2 5 1 28 2 149 1 29 2 149 1 30 2 149 1 31 10 1 1 35 10 1 1 36 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 4 38 0 19]
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 59 0 14 0 61 0 14 0 67 0 14 0 69 0 14 0 86 1 115 0 120 2 121 0 183 10 5 0 190 10 5 1 15 10 5 1 16 5 49 1 80]
#[1 10 13 0 21 5 201 0 120 10 17 0 183]
#[0 10 21 0 9]
#[0 4 42 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 4 46 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 4 50 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 4 54 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 4 58 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 4 62 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 4 66 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 4 70 0 2 1 119 0 3 4 70 0 5 4 70 0 6 4 70 0 9 1 123 0 10 4 70 0 12 4 70 0 15 4 70 0 16 4 70 0 19 1 127 0 22 4 70 0 24 4 70 0 26 4 70 0 27 4 70 0 28 4 70 0 30 4 70 0 32 4 70 0 33 4 70 0 36 4 70 0 39 4 70 0 40 4 70 0 66 4 70 0 106 4 70 0 108 4 70 0 109 4 70 0 111 4 70 0 112 4 70 0 113 4 70 1 84]
#[1 4 74 0 2 1 131 0 3 4 74 0 5 4 74 0 6 4 74 0 9 1 135 0 10 4 74 0 12 4 74 0 15 4 74 0 16 4 74 0 19 1 139 0 22 4 74 0 24 4 74 0 26 4 74 0 27 4 74 0 28 4 74 0 30 4 74 0 32 4 74 0 33 4 74 0 36 4 74 0 39 4 74 0 40 4 74 0 66 4 74 0 106 4 74 0 108 4 74 0 109 4 74 0 111 4 74 0 112 4 74 0 113 4 74 1 84]
#[1 4 78 0 2 4 78 0 3 4 78 0 5 4 78 0 6 4 78 0 9 4 78 0 10 1 143 0 12 4 78 0 15 1 147 0 16 4 78 0 19 4 78 0 22 4 78 0 24 4 78 0 26 4 78 0 27 4 78 0 28 4 78 0 30 4 78 0 32 4 78 0 33 4 78 0 36 4 78 0 39 4 78 0 40 4 78 0 66 4 78 0 106 4 78 0 108 4 78 0 109 4 78 0 111 4 78 0 112 4 78 0 113 4 78 1 84]
#[1 4 82 0 2 4 82 0 3 4 82 0 5 4 82 0 6 4 82 0 9 4 82 0 10 1 151 0 12 4 82 0 15 1 155 0 16 4 82 0 19 4 82 0 22 4 82 0 24 4 82 0 26 4 82 0 27 4 82 0 28 4 82 0 30 4 82 0 32 4 82 0 33 4 82 0 36 4 82 0 39 4 82 0 40 4 82 0 66 4 82 0 106 4 82 0 108 4 82 0 109 4 82 0 111 4 82 0 112 4 82 0 113 4 82 1 84]
#[1 4 86 0 2 4 86 0 3 4 86 0 5 4 86 0 6 4 86 0 9 4 86 0 10 1 159 0 12 4 86 0 15 1 163 0 16 4 86 0 19 4 86 0 22 4 86 0 24 4 86 0 26 4 86 0 27 4 86 0 28 4 86 0 30 4 86 0 32 4 86 0 33 4 86 0 36 4 86 0 39 4 86 0 40 4 86 0 66 4 86 0 106 4 86 0 108 4 86 0 109 4 86 0 111 4 86 0 112 4 86 0 113 4 86 1 84]
#[1 4 90 0 2 4 90 0 3 4 90 0 5 4 90 0 6 4 90 0 9 4 90 0 10 4 90 0 12 4 90 0 15 4 90 0 16 4 90 0 19 4 90 0 22 4 90 0 24 4 90 0 26 4 90 0 27 1 167 0 28 4 90 0 30 4 90 0 32 4 90 0 33 4 90 0 36 4 90 0 39 4 90 0 40 4 90 0 66 4 90 0 106 4 90 0 108 4 90 0 109 4 90 0 111 1 171 0 112 1 175 0 113 4 90 1 84]
#[1 4 94 0 2 4 94 0 3 4 94 0 5 4 94 0 6 4 94 0 9 4 94 0 10 4 94 0 12 4 94 0 15 4 94 0 16 4 94 0 19 4 94 0 22 4 94 0 24 4 94 0 26 4 94 0 27 1 179 0 28 4 94 0 30 4 94 0 32 4 94 0 33 4 94 0 36 4 94 0 39 4 94 0 40 4 94 0 66 4 94 0 106 4 94 0 108 4 94 0 109 4 94 0 111 1 183 0 112 1 187 0 113 4 94 1 84]
#[1 4 98 0 2 4 98 0 3 4 98 0 5 4 98 0 6 4 98 0 9 4 98 0 10 4 98 0 12 4 98 0 15 4 98 0 16 4 98 0 19 4 98 0 22 4 98 0 24 4 98 0 26 4 98 0 27 1 191 0 28 4 98 0 30 4 98 0 32 4 98 0 33 4 98 0 36 4 98 0 39 4 98 0 40 4 98 0 66 4 98 0 106 4 98 0 108 4 98 0 109 4 98 0 111 1 195 0 112 1 199 0 113 4 98 1 84]
#[1 4 129 0 38 4 133 1 24 4 137 1 25]
#[1 4 102 0 2 4 102 0 3 4 102 0 5 4 102 0 6 4 102 0 9 4 102 0 10 4 102 0 12 4 102 0 15 4 102 0 16 4 102 0 19 4 102 0 22 4 102 0 24 4 102 0 26 4 102 0 27 4 102 0 28 4 102 0 30 4 102 0 32 4 102 0 33 4 102 0 36 4 102 0 39 4 102 0 40 4 102 0 66 4 102 0 106 4 102 0 108 4 102 0 109 4 102 0 111 4 102 0 112 4 102 0 113 5 201 0 120 10 25 0 183 4 102 1 84]
#[1 4 106 0 2 4 106 0 3 4 106 0 5 4 106 0 6 4 106 0 9 4 106 0 10 4 106 0 12 4 106 0 15 4 106 0 16 4 106 0 19 4 106 0 22 4 106 0 24 4 106 0 26 4 106 0 27 1 203 0 28 4 106 0 30 4 106 0 32 4 106 0 33 4 106 0 36 4 106 0 39 4 106 0 40 4 106 0 66 4 106 0 106 4 106 0 108 4 106 0 109 4 106 0 111 1 207 0 112 1 211 0 113 4 106 1 84]
#[1 4 110 0 2 4 110 0 3 4 110 0 5 4 110 0 6 4 110 0 9 4 110 0 10 4 110 0 12 4 110 0 15 4 110 0 16 4 110 0 19 4 110 0 22 4 110 0 24 4 110 0 26 1 215 0 27 4 110 0 28 1 219 0 30 4 110 0 32 1 223 0 33 4 110 0 36 4 110 0 39 4 110 0 40 1 227 0 66 4 110 0 106 4 110 0 108 4 110 0 109 1 231 0 111 4 110 0 112 4 110 0 113 4 110 1 84]
#[1 4 114 0 2 4 114 0 3 4 114 0 5 4 114 0 6 4 114 0 9 4 114 0 10 4 114 0 12 4 114 0 15 4 114 0 16 4 114 0 19 4 114 0 22 4 114 0 24 4 114 0 26 1 235 0 27 4 114 0 28 1 239 0 30 4 114 0 32 1 243 0 33 4 114 0 36 4 114 0 39 4 114 0 40 1 247 0 66 4 114 0 106 4 114 0 108 4 114 0 109 1 251 0 111 4 114 0 112 4 114 0 113 4 114 1 84]
#[1 1 255 0 2 4 118 0 3 4 118 0 5 4 118 0 6 4 118 0 9 4 118 0 10 4 118 0 12 4 118 0 15 4 118 0 16 4 118 0 19 4 118 0 22 4 118 0 24 4 118 0 26 4 118 0 27 4 118 0 28 4 118 0 30 2 3 0 32 4 118 0 33 4 118 0 36 4 118 0 39 4 118 0 40 4 118 0 66 4 118 0 106 4 118 0 108 4 118 0 109 4 118 0 111 4 118 0 112 4 118 0 113 4 118 1 84]
#[1 4 122 0 2 4 122 0 3 2 7 0 5 4 122 0 6 4 122 0 9 4 122 0 10 4 122 0 12 4 122 0 15 4 122 0 16 4 122 0 19 4 122 0 22 4 122 0 24 4 122 0 26 4 122 0 27 4 122 0 28 4 122 0 30 4 122 0 32 4 122 0 33 4 122 0 36 4 122 0 39 4 122 0 40 4 122 0 66 4 122 0 106 4 122 0 108 4 122 0 109 4 122 0 111 4 122 0 112 4 122 0 113 4 122 1 84]
#[1 4 126 0 2 4 126 0 3 4 126 0 5 4 126 0 6 4 126 0 9 4 126 0 10 4 126 0 12 4 126 0 15 4 126 0 16 4 126 0 19 4 126 0 22 4 126 0 24 4 126 0 26 4 126 0 27 4 126 0 28 4 126 0 30 4 126 0 32 4 126 0 33 4 126 0 36 4 126 0 39 2 11 0 40 4 126 0 66 4 126 0 106 4 126 0 108 4 126 0 109 4 126 0 111 4 126 0 112 4 126 0 113 4 126 1 84]
#[1 4 130 0 2 4 130 0 3 4 130 0 5 4 130 0 6 4 130 0 9 4 130 0 10 4 130 0 12 4 130 0 15 4 130 0 16 4 130 0 19 4 130 0 22 4 130 0 24 4 130 0 26 4 130 0 27 4 130 0 28 4 130 0 30 4 130 0 32 4 130 0 33 4 130 0 36 4 130 0 39 4 130 0 40 4 130 0 66 2 15 0 106 4 130 0 108 4 130 0 109 4 130 0 111 4 130 0 112 4 130 0 113 4 130 1 84]
#[0 10 29 0 24]
#[1 4 134 0 2 4 134 0 3 4 134 0 5 2 19 0 6 4 134 0 9 4 134 0 10 4 134 0 12 4 134 0 15 4 134 0 16 4 134 0 19 4 134 0 22 4 134 0 24 4 134 0 26 4 134 0 27 4 134 0 28 4 134 0 30 4 134 0 32 4 134 0 33 4 134 0 36 4 134 0 39 4 134 0 40 4 134 0 66 4 134 0 106 4 134 0 108 4 134 0 109 4 134 0 111 4 134 0 112 4 134 0 113 4 134 1 84]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 3 9 0 120 10 33 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 10 33 0 132 10 33 0 133 10 33 0 136 10 37 1 70 2 69 1 76 2 69 1 77 2 69 1 78]
#[1 5 161 0 120 10 41 1 69]
#[0 4 138 0 8 0 44 0 46 0 49 0 54 0 58 0 61 0 64 0 67 0 69 0 77 0 86 0 100 0 105 0 120]
#[1 8 37 0 120 10 45 0 188]
#[1 8 37 0 120 10 49 0 188]
#[0 10 53 0 8]
#[1 4 142 0 26 10 57 0 38 4 142 0 52 5 233 0 94 4 142 0 105 10 61 0 191]
#[1 4 146 0 26 10 57 0 38 4 146 0 52 5 233 0 94 4 146 0 105 10 65 0 191]
#[1 5 201 0 120 10 69 0 181 10 69 0 182 5 217 0 183]
#[0 4 150 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 9 113 0 105 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 10 73 0 184 1 153 0 187 10 73 0 216 2 1 1 5 2 5 1 6 2 5 1 7 10 73 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 10 73 1 47 10 73 1 48 2 229 1 49 2 61 1 50 10 73 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 8 49 0 15 10 85 0 26]
#[1 5 237 0 105 10 89 0 197]
#[0 4 154 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 2 170 0 15 0 26 0 52 0 64 0 77 0 105]
#[0 4 158 0 15 0 26 0 52 0 105]
#[1 10 93 0 15 4 162 0 26 4 162 0 52 4 162 0 105]
#[1 10 97 0 8 4 57 0 20 4 61 0 25]
#[1 10 101 0 8 0 186 0 13 0 186 0 17 0 186 0 20 0 186 0 25 0 186 0 27 0 186 0 38]
#[0 4 166 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 11 0 37 0 41 0 42 0 221 0 43 0 15 0 44 0 229 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 241 0 51 0 245 0 53 0 27 0 54 0 49 0 56 0 31 0 59 0 35 0 61 1 1 0 62 1 5 0 63 0 39 0 67 0 61 0 68 0 43 0 69 0 69 0 71 1 17 0 72 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 1 21 0 84 0 97 0 85 0 47 0 86 0 101 0 87 0 105 0 88 1 29 0 89 1 33 0 90 1 37 0 91 1 41 0 92 1 45 0 93 0 113 0 96 1 49 0 98 1 53 0 100 0 117 0 101 1 57 0 102 1 61 0 104 1 65 0 105 10 105 0 109 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 51 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 145 0 165 0 169 0 166 4 109 0 167 1 153 0 187 4 109 0 199 4 109 0 218 10 109 0 219 4 109 0 220 4 109 0 221 1 173 0 222 4 109 0 223 4 109 0 224 4 109 0 225 4 109 0 226 4 109 0 227 4 109 0 228 1 201 0 229 4 109 0 230 4 109 0 231 4 109 0 232 4 109 0 240 4 109 0 241 4 109 0 242 4 109 0 246 4 109 0 247 4 109 0 248 4 109 0 249 4 109 0 250 4 109 0 251 4 109 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 0 169 1 55 4 109 1 62 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 4 109 1 79 2 85 1 80 2 89 1 82]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 11 0 37 0 41 0 42 0 221 0 43 0 15 0 44 0 229 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 241 0 51 0 245 0 53 0 27 0 54 0 49 0 56 0 31 0 59 0 35 0 61 1 1 0 62 1 5 0 63 0 39 0 67 0 61 0 68 0 43 0 69 0 69 0 71 1 17 0 72 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 1 21 0 84 0 97 0 85 0 47 0 86 0 101 0 87 0 105 0 88 1 29 0 89 1 33 0 90 1 37 0 91 1 41 0 92 1 45 0 93 0 113 0 96 1 49 0 98 1 53 0 100 0 117 0 101 1 57 0 102 1 61 0 104 1 65 0 105 10 113 0 109 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 51 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 145 0 165 0 169 0 166 7 53 0 167 1 153 0 187 7 53 0 199 7 53 0 218 7 53 0 220 7 53 0 221 1 173 0 222 7 53 0 223 7 53 0 224 7 53 0 225 7 53 0 226 7 53 0 227 7 53 0 228 1 201 0 229 7 53 0 230 7 53 0 231 7 53 0 232 7 53 0 240 7 53 0 241 7 53 0 242 7 53 0 246 7 53 0 247 7 53 0 248 7 53 0 249 7 53 0 250 7 53 0 251 7 53 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 0 169 1 55 7 53 1 62 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 7 53 1 79 2 85 1 80 2 89 1 82]
#[1 1 110 0 13 1 110 0 17 2 23 0 20 1 114 0 25 1 114 0 27]
#[0 4 170 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 10 121 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 59 0 14 0 61 0 14 0 67 0 14 0 69 0 14 0 86 0 14 0 120 10 125 0 189 10 129 0 190 5 49 1 80]
#[1 8 37 0 120 10 133 0 188]
#[1 8 37 0 120 10 137 0 188]
#[1 0 33 0 26 2 241 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 59 0 75 0 61 0 79 0 67 0 61 0 68 0 83 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 87 0 86 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 10 141 0 109 0 91 0 120 3 13 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 3 13 0 132 3 13 0 133 3 13 0 136 10 165 0 157 10 165 0 158 10 149 0 165 0 169 0 166 10 165 0 167 10 165 0 179 10 157 0 186 10 165 0 199 10 165 0 200 10 161 0 202 10 165 0 203 10 165 0 204 10 165 0 215 0 169 1 55 10 165 1 62 3 1 1 67 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 4 174 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 10 177 0 15 2 105 0 16 0 205 0 17 0 213 0 27 0 217 0 37 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 8 133 0 105 10 181 0 109 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 10 185 1 47 2 181 1 49 2 61 1 50 10 185 1 55 10 185 1 59 10 185 1 60 10 189 1 61 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 0 218 0 2 0 218 0 3 0 218 0 4 0 218 0 5 0 218 0 6 0 218 0 7 0 218 0 9 0 218 0 10 0 218 0 11 0 218 0 12 0 218 0 13 0 218 0 14 0 218 0 16 0 218 0 17 0 218 0 18 0 203 0 20 0 218 0 22 0 218 0 23 0 203 0 25 0 207 0 27 0 218 0 28 0 218 0 29 0 218 0 30 2 27 0 31 0 218 0 32 0 218 0 33 0 218 0 34 0 218 0 35 0 218 0 36 0 203 0 38 0 218 0 40 0 218 0 41 0 218 0 66 0 218 0 106 0 218 0 107 0 218 0 108 0 218 0 111 0 218 0 112 0 218 0 113 4 117 1 72]
#[0 4 178 0 9 0 15 0 109]
#[0 4 182 0 9 0 15 0 109]
#[0 10 197 0 9]
#[1 4 186 0 9 10 201 0 15]
#[0 4 190 0 9 0 15]
#[0 4 194 0 9]
#[0 4 198 0 9 0 15 0 109]
#[1 3 9 0 120 10 205 0 133 10 205 0 134 4 45 1 76 4 45 1 77 4 45 1 78]
#[1 3 9 0 120 10 209 0 133 10 209 0 135 10 213 0 169 4 45 1 76 4 45 1 77 4 45 1 78]
#[1 0 33 0 26 2 241 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 59 0 75 0 61 0 79 0 67 0 61 0 68 0 83 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 87 0 86 3 5 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 1 65 0 105 10 217 0 109 0 91 0 120 3 13 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 3 13 0 132 3 13 0 133 3 13 0 136 10 225 0 157 10 225 0 158 3 29 0 165 0 169 0 166 10 225 0 167 10 221 0 176 10 225 0 177 10 225 0 178 10 225 0 179 10 225 0 185 2 253 0 186 10 225 0 194 10 225 0 195 3 57 0 196 10 225 0 199 10 225 0 200 3 61 0 218 0 169 1 55 10 225 1 62 3 65 1 67 2 69 1 76 2 69 1 77 2 69 1 78]
#[1 6 41 0 64 8 177 0 105 10 229 0 173 10 233 0 175]
#[1 6 41 0 64 8 173 0 77 8 177 0 105 10 237 0 168 10 241 0 173 10 245 0 175]
#[1 8 177 0 105 10 249 0 175]
#[0 4 202 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 4 206 0 9 0 15 0 64 0 105]
#[0 4 210 0 15 0 105]
#[1 10 253 0 15 4 214 0 105]
#[1 8 213 0 26 11 1 0 109 11 5 1 66]
#[1 0 33 0 26 2 241 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 59 0 75 0 61 0 79 0 67 0 61 0 68 0 83 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 87 0 86 3 5 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 1 65 0 105 4 218 0 109 0 91 0 120 3 13 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 3 13 0 132 3 13 0 133 3 13 0 136 10 225 0 157 10 225 0 158 3 29 0 165 0 169 0 166 10 225 0 167 11 9 0 176 10 225 0 177 10 225 0 178 10 225 0 179 10 225 0 185 2 253 0 186 10 225 0 194 10 225 0 195 3 57 0 196 10 225 0 199 10 225 0 200 3 61 0 218 0 169 1 55 10 225 1 62 3 65 1 67 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 4 222 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 0 217 0 37 11 13 0 120 3 205 1 55]
#[1 11 17 0 15 8 213 0 26 11 21 0 109 11 25 1 66]
#[0 4 226 0 15 0 26 0 109]
#[0 11 29 0 109]
#[0 4 230 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 11 33 0 10 7 89 0 120]
#[0 4 234 0 26 0 37 0 42 0 50 0 56 0 59 0 65 0 68 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 87 0 88 0 91 0 96 0 101 1 84]
#[0 11 37 0 26]
#[1 3 9 0 120 11 41 0 133 11 41 0 135 4 45 1 76 4 45 1 77 4 45 1 78]
#[1 0 33 0 26 0 95 0 27 0 99 0 37 0 103 0 42 0 107 0 44 0 111 0 46 0 115 0 49 0 45 0 50 0 26 0 52 0 119 0 54 0 49 0 56 0 123 0 59 0 127 0 61 0 131 0 67 0 61 0 68 0 135 0 69 0 139 0 71 0 143 0 73 0 147 0 78 0 151 0 79 0 155 0 81 0 93 0 82 0 159 0 85 0 163 0 86 2 31 0 87 0 171 0 88 0 175 0 91 0 179 0 96 0 183 0 100 0 187 0 101 11 45 0 109 0 191 0 120 3 13 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 3 13 0 132 3 13 0 133 3 13 0 136 11 65 0 157 11 65 0 158 10 149 0 165 0 169 0 166 11 65 0 167 11 65 0 179 11 57 0 186 11 65 0 199 11 65 0 200 11 61 0 207 11 65 0 208 11 65 0 209 11 65 0 210 3 97 0 211 3 101 0 212 11 65 0 215 0 169 1 55 11 65 1 62 3 1 1 67 2 69 1 76 2 69 1 77 2 69 1 78]
#[1 11 69 0 15 9 1 0 105 11 73 0 206]
#[0 4 238 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 11 77 0 109]
#[1 11 81 0 57 11 85 0 75 11 89 0 80 11 93 0 83 11 97 0 99 4 242 0 109 11 101 0 144]
#[1 3 134 0 57 3 134 0 75 3 134 0 80 3 134 0 83 3 134 0 99 3 134 0 109 11 105 0 142 9 17 0 143]
#[1 11 109 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 59 0 14 0 61 0 14 0 67 0 14 0 69 0 14 0 86 0 14 0 120 11 113 0 189 10 129 0 190 5 49 1 80]
#[1 8 125 0 105 11 117 0 201]
#[1 8 169 0 58 6 41 0 64 8 173 0 77 8 177 0 105 11 121 0 168 11 125 0 172 11 129 0 173 11 133 0 175]
#[1 6 45 0 105 11 137 1 63]
#[0 4 246 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 8 253 0 58 9 1 0 105 11 141 0 205 11 145 0 206]
#[0 11 149 0 8]
#[0 4 250 0 26 0 37 0 42 0 50 0 56 0 59 0 65 0 68 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 87 0 88 0 91 0 96 0 101 1 84]
#[0 4 254 0 15 0 111]
#[0 5 2 0 15 0 111]
#[0 5 6 0 15 0 111]
#[0 11 153 0 26]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 11 157 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 11 157 1 47 11 157 1 48 2 229 1 49 2 61 1 50 11 157 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 0 197 0 8 11 161 0 9 0 201 0 13 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 6 169 0 229 11 165 0 244 11 169 0 245 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 6 169 1 33 6 169 1 34 6 169 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 11 173 0 26]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 11 177 0 26 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 11 181 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 11 181 1 47 11 181 1 48 2 229 1 49 2 61 1 50 11 181 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 11 185 0 229 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 11 185 1 33 11 185 1 34 11 185 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 5 201 0 120 7 125 0 180 5 209 0 181 5 209 0 182 11 189 0 183]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 11 193 0 218 11 193 0 223 11 193 0 224 11 193 0 225 11 193 0 226 11 193 0 227 11 193 0 228 1 201 0 229 11 193 0 230 11 193 0 231 11 193 0 232 11 193 0 240 11 193 0 241 11 193 0 242 11 193 0 246 11 193 0 247 11 193 0 248 11 193 0 249 11 193 0 250 11 193 0 251 11 193 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 11 193 1 79 2 89 1 82]
#[0 11 197 0 39]
#[0 5 10 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 5 14 0 2 5 14 0 3 5 14 0 5 5 14 0 6 5 14 0 9 5 14 0 10 5 14 0 12 5 14 0 13 5 14 0 15 5 14 0 16 5 14 0 17 5 14 0 19 5 14 0 20 5 14 0 22 5 14 0 24 5 14 0 25 5 14 0 26 5 14 0 27 5 14 0 28 5 14 0 30 5 14 0 32 5 14 0 33 5 14 0 36 4 129 0 38 5 14 0 39 5 14 0 40 5 14 0 66 5 14 0 106 5 14 0 108 5 14 0 109 5 14 0 111 5 14 0 112 5 14 0 113 7 73 1 25 5 14 1 84]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 11 201 0 15 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 9 113 0 105 11 205 0 109 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 11 209 0 184 1 153 0 187 11 209 0 216 11 213 0 217 2 1 1 5 2 5 1 6 2 5 1 7 11 209 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 11 209 1 47 11 209 1 48 2 229 1 49 2 61 1 50 11 209 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 5 18 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 5 22 0 2 5 22 0 3 5 22 0 5 5 22 0 6 5 22 0 9 5 22 0 10 5 22 0 12 5 22 0 13 5 22 0 15 5 22 0 16 5 22 0 17 5 22 0 19 5 22 0 20 5 22 0 22 5 22 0 24 5 22 0 25 5 22 0 26 5 22 0 27 5 22 0 28 5 22 0 30 5 22 0 32 5 22 0 33 5 22 0 36 4 129 0 38 5 22 0 39 5 22 0 40 5 22 0 66 5 22 0 106 5 22 0 108 5 22 0 109 5 22 0 111 5 22 0 112 5 22 0 113 7 73 1 25 5 22 1 84]
#[0 5 26 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 5 30 0 2 5 30 0 3 5 30 0 5 5 30 0 6 5 30 0 9 5 30 0 10 5 30 0 12 5 30 0 13 5 30 0 15 5 30 0 16 5 30 0 17 5 30 0 19 5 30 0 20 5 30 0 22 5 30 0 24 5 30 0 25 5 30 0 26 5 30 0 27 5 30 0 28 5 30 0 30 5 30 0 32 5 30 0 33 5 30 0 36 5 30 0 38 5 30 0 39 5 30 0 40 5 30 0 66 8 177 0 105 5 30 0 106 5 30 0 108 5 30 0 109 5 30 0 111 5 30 0 112 5 30 0 113 11 217 0 175 5 30 1 84]
#[1 11 221 0 9 11 225 0 15]
#[0 5 34 0 9 0 15]
#[0 11 229 0 8]
#[1 11 233 0 105 11 237 0 233 11 241 1 8]
#[1 1 65 0 105 11 245 0 218]
#[0 5 38 0 105]
#[1 0 197 0 8 11 249 0 9 0 213 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 59 0 35 0 61 0 39 0 67 0 43 0 69 1 17 0 72 0 47 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 1 95 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 6 245 0 137 6 245 0 138 6 245 0 139 1 153 0 187 11 253 0 254 7 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 7 1 1 21 7 5 1 26 2 5 1 27 2 5 1 28 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 7 13 1 80 2 89 1 82]
#[1 5 201 0 120 12 1 0 182 12 5 0 183]
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 59 0 14 0 61 0 14 0 67 0 14 0 69 0 14 0 86 0 14 0 120 12 9 1 1 12 13 1 80]
#[0 5 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 5 46 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 60 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 5 50 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 5 54 0 8 5 54 0 13 5 54 0 17 5 54 0 26 5 54 0 27 5 54 0 37 5 54 0 42 5 54 0 43 5 54 0 44 5 54 0 45 5 54 0 46 5 54 0 47 7 17 0 48 5 54 0 49 5 54 0 50 5 54 0 51 5 54 0 52 5 54 0 53 5 54 0 54 5 54 0 55 5 54 0 56 5 54 0 59 7 21 0 60 5 54 0 61 5 54 0 62 5 54 0 63 5 54 0 67 5 54 0 68 5 54 0 69 5 54 0 71 5 54 0 72 5 54 0 73 5 54 0 78 5 54 0 79 5 54 0 81 5 54 0 84 5 54 0 85 5 54 0 86 5 54 0 87 5 54 0 88 5 54 0 89 5 54 0 90 5 54 0 91 5 54 0 92 5 54 0 93 5 54 0 96 5 54 0 98 5 54 0 100 5 54 0 101 5 54 0 102 5 54 0 104 5 54 0 105 5 54 0 109 5 54 0 114 5 54 0 115 5 54 0 116 5 54 0 117 5 54 0 118 5 54 0 119 5 54 0 120 9 173 1 0 12 17 1 3 5 54 1 84]
#[0 5 58 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 12 21 0 218 12 21 0 223 12 21 0 224 12 21 0 225 12 21 0 226 12 21 0 227 12 21 0 228 1 201 0 229 12 21 0 230 12 21 0 231 12 21 0 232 12 21 0 240 12 21 0 241 12 21 0 242 12 21 0 246 12 21 0 247 12 21 0 248 12 21 0 249 12 21 0 250 12 21 0 251 12 21 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 12 21 1 79 2 89 1 82]
#[0 5 62 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 0 213 0 27 2 35 0 120 12 29 1 72]
#[0 5 66 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 66 0 106 0 107 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 12 33 0 25]
#[0 5 70 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 66 0 106 0 107 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 5 74 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 12 37 0 9 11 225 0 15]
#[0 5 78 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 64 0 66 0 77 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 120 1 84]
#[0 12 41 0 120]
#[0 12 45 0 8]
#[0 5 82 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 5 86 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 12 49 0 9]
#[1 0 254 0 2 0 254 0 3 0 254 0 5 0 254 0 6 0 254 0 9 0 254 0 10 0 254 0 12 0 254 0 13 0 254 0 15 0 254 0 16 0 254 0 17 0 254 0 19 0 215 0 20 0 254 0 22 0 254 0 24 1 6 0 25 0 254 0 26 0 219 0 27 0 254 0 28 0 254 0 30 0 254 0 32 0 254 0 33 0 254 0 36 4 149 0 38 0 254 0 39 0 254 0 40 0 254 0 66 0 254 0 106 0 254 0 108 0 254 0 109 0 254 0 111 0 254 0 112 0 254 0 113 4 153 1 72 0 254 1 84]
#[0 5 90 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 1 146 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 5 94 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 5 98 0 9 0 15]
#[0 3 42 0 9 0 15]
#[1 5 201 0 120 12 53 0 183]
#[1 5 102 0 9 5 102 0 15 5 69 0 38]
#[1 12 57 0 105 11 241 1 8]
#[1 5 106 0 2 5 106 0 3 5 106 0 5 5 106 0 6 5 106 0 9 5 106 0 10 5 106 0 12 5 106 0 15 5 106 0 16 5 106 0 19 5 106 0 22 5 106 0 24 5 106 0 26 5 106 0 27 5 106 0 28 5 106 0 30 5 106 0 32 5 106 0 33 5 106 0 36 5 69 0 38 5 106 0 39 5 106 0 40 5 106 0 66 5 106 0 106 5 106 0 108 5 106 0 109 5 106 0 111 5 106 0 112 5 106 0 113 5 106 1 84]
#[1 2 93 0 1 5 110 0 2 5 110 0 3 5 110 0 5 5 110 0 6 2 97 0 8 5 110 0 9 5 110 0 10 2 39 0 12 0 201 0 13 5 110 0 15 2 43 0 16 0 205 0 17 5 110 0 19 5 110 0 22 5 110 0 24 5 110 0 26 2 47 0 27 5 110 0 28 5 110 0 30 5 110 0 32 5 110 0 33 5 110 0 36 5 110 0 39 5 110 0 40 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 5 110 0 66 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 5 110 0 106 5 110 0 108 5 110 0 109 2 113 0 110 5 110 0 111 5 110 0 112 5 110 0 113 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 12 61 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 12 65 1 47 2 181 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82 5 110 1 84]
#[0 5 114 0 5 0 15 0 111]
#[1 12 69 0 5 5 118 0 15 5 118 0 111]
#[0 5 122 0 15 0 111]
#[1 5 126 0 26 10 57 0 38 5 126 0 52 5 233 0 94 5 126 0 105 12 73 0 191]
#[1 5 130 0 26 10 57 0 38 5 130 0 52 5 233 0 94 5 130 0 105 12 77 0 191]
#[1 12 81 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 59 0 14 0 61 0 14 0 67 0 14 0 69 0 14 0 86 0 14 0 120 12 85 0 189 10 129 0 190 5 49 1 80]
#[0 12 89 0 39]
#[0 5 134 0 26 0 52 0 105]
#[0 5 138 0 26 0 52 0 105]
#[0 5 142 0 15 0 26]
#[0 5 146 0 9 0 15 0 26]
#[0 5 150 0 9 0 15 0 26 0 109]
#[0 5 154 0 9 0 15 0 26 0 109]
#[0 5 158 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 5 162 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 3 9 0 120 12 93 0 133 12 93 0 134 4 45 1 76 4 45 1 77 4 45 1 78]
#[1 2 93 0 1 2 97 0 8 12 97 0 9 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 137 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 12 101 1 20 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 137 1 47 9 137 1 48 2 229 1 49 2 61 1 50 9 137 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 2 97 0 8 12 105 0 9 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 137 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 12 109 1 20 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 137 1 47 9 137 1 48 2 229 1 49 2 61 1 50 9 137 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 5 166 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 11 0 37 0 41 0 42 0 221 0 43 0 15 0 44 0 229 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 241 0 51 0 245 0 53 0 27 0 54 0 49 0 56 0 31 0 59 0 35 0 61 1 1 0 62 1 5 0 63 0 39 0 67 0 61 0 68 0 43 0 69 0 69 0 71 1 17 0 72 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 1 21 0 84 0 97 0 85 0 47 0 86 0 101 0 87 0 105 0 88 1 29 0 89 1 33 0 90 1 37 0 91 1 41 0 92 1 45 0 93 0 113 0 96 1 49 0 98 1 53 0 100 0 117 0 101 1 57 0 102 1 61 0 104 1 65 0 105 12 113 0 109 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 51 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 145 0 165 0 169 0 166 7 53 0 167 1 153 0 187 7 53 0 199 7 53 0 218 7 53 0 220 7 53 0 221 1 173 0 222 7 53 0 223 7 53 0 224 7 53 0 225 7 53 0 226 7 53 0 227 7 53 0 228 1 201 0 229 7 53 0 230 7 53 0 231 7 53 0 232 7 53 0 240 7 53 0 241 7 53 0 242 7 53 0 246 7 53 0 247 7 53 0 248 7 53 0 249 7 53 0 250 7 53 0 251 7 53 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 0 169 1 55 7 53 1 62 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 7 53 1 79 2 85 1 80 2 89 1 82]
#[0 5 170 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 12 117 0 89 12 121 0 92 7 105 0 120]
#[0 5 174 0 94 0 105]
#[1 12 125 0 9 12 129 0 15]
#[0 5 178 0 9 0 15]
#[1 10 57 0 38 5 233 0 94 5 182 0 105 12 133 0 191]
#[1 10 57 0 38 5 233 0 94 5 186 0 105 12 137 0 191]
#[0 5 190 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 5 194 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[1 2 241 0 27 3 177 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 3 181 0 50 0 71 0 54 3 185 0 56 0 53 0 59 0 75 0 61 0 79 0 67 3 189 0 68 0 83 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 3 193 0 82 0 97 0 85 0 87 0 86 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 0 91 0 120 5 221 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 5 221 0 132 5 221 0 133 5 221 0 136 3 197 0 166 3 197 1 55 5 173 1 67 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 5 198 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[1 12 141 0 26 12 145 0 52]
#[1 0 33 0 26 2 241 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 59 0 75 0 61 0 79 0 67 0 61 0 68 0 83 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 87 0 86 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 12 149 0 109 0 91 0 120 3 13 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 3 13 0 132 3 13 0 133 3 13 0 136 12 153 0 157 12 153 0 158 10 149 0 165 0 169 0 166 12 153 0 167 12 153 0 179 10 157 0 186 12 153 0 199 12 153 0 200 12 153 0 203 12 153 0 204 12 153 0 215 0 169 1 55 12 153 1 62 3 1 1 67 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 5 202 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[0 5 206 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[0 5 210 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[0 12 157 0 109]
#[0 5 214 0 9 0 15 0 109]
#[0 5 218 0 15 0 109]
#[1 12 161 0 15 12 165 0 109]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 217 0 37 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 8 133 0 105 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 12 169 1 47 2 181 1 49 2 61 1 50 12 169 1 55 12 169 1 59 12 169 1 60 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 5 222 0 9 0 15 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 76 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[1 12 173 0 120 12 177 1 58]
#[0 5 226 0 64 0 77 0 105]
#[1 5 230 0 15 5 230 0 64 5 230 0 105 12 181 0 171]
#[0 5 234 0 64 0 105]
#[0 5 238 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 0 33 0 26 2 241 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 59 0 75 0 61 0 79 0 67 0 61 0 68 0 83 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 87 0 86 3 5 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 1 65 0 105 12 185 0 109 0 91 0 120 3 13 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 3 13 0 132 3 13 0 133 3 13 0 136 12 189 0 157 12 189 0 158 3 29 0 165 0 169 0 166 12 189 0 167 12 189 0 177 12 189 0 178 12 189 0 179 12 189 0 185 2 253 0 186 12 189 0 194 12 189 0 195 3 57 0 196 12 189 0 199 12 189 0 200 3 61 0 218 0 169 1 55 12 189 1 62 3 65 1 67 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 5 242 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120]
#[1 8 177 0 105 12 193 0 175]
#[0 5 246 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 6 41 0 64 8 177 0 105 12 197 0 173 12 201 0 175]
#[1 8 177 0 105 12 205 0 175]
#[0 5 250 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 5 254 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 3 9 0 120 12 209 0 133 12 209 0 135 4 45 1 76 4 45 1 77 4 45 1 78]
#[0 6 2 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 12 213 0 109]
#[1 0 33 0 26 2 241 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 59 0 75 0 61 0 79 0 67 0 61 0 68 0 83 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 87 0 86 3 5 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 1 65 0 105 6 6 0 109 0 91 0 120 3 13 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 3 13 0 132 3 13 0 133 3 13 0 136 12 189 0 157 12 189 0 158 3 29 0 165 0 169 0 166 12 189 0 167 12 189 0 177 12 189 0 178 12 189 0 179 12 189 0 185 2 253 0 186 12 189 0 194 12 189 0 195 3 57 0 196 12 189 0 199 12 189 0 200 3 61 0 218 0 169 1 55 12 189 1 62 3 65 1 67 2 69 1 76 2 69 1 77 2 69 1 78]
#[1 12 217 0 8 6 10 0 15 6 10 0 26 8 177 0 105 6 10 0 109 12 221 0 175]
#[1 8 213 0 26 0 6 0 37 12 225 0 109 0 6 0 120 8 221 1 54 12 229 1 65 12 233 1 66]
#[0 6 14 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 12 237 0 109]
#[0 6 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 12 241 0 26]
#[0 6 22 0 26 0 37 0 42 0 50 0 56 0 59 0 65 0 68 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 87 0 88 0 91 0 96 0 101 1 84]
#[0 6 26 0 15 0 105]
#[0 6 30 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 2 82 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[0 2 90 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[0 12 141 0 26]
#[1 0 33 0 26 0 95 0 27 0 99 0 37 0 103 0 42 0 107 0 44 0 111 0 46 0 115 0 49 0 45 0 50 0 26 0 52 0 119 0 54 0 49 0 56 0 123 0 59 0 127 0 61 0 131 0 67 0 61 0 68 0 135 0 69 0 139 0 71 0 143 0 73 0 147 0 78 0 151 0 79 0 155 0 81 0 93 0 82 0 159 0 85 0 163 0 86 2 31 0 87 0 171 0 88 0 175 0 91 0 179 0 96 0 183 0 100 0 187 0 101 12 245 0 109 0 191 0 120 3 13 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 3 13 0 132 3 13 0 133 3 13 0 136 12 249 0 157 12 249 0 158 10 149 0 165 0 169 0 166 12 249 0 167 12 249 0 179 11 57 0 186 12 249 0 199 12 249 0 200 12 249 0 208 12 249 0 209 12 249 0 210 3 97 0 211 3 101 0 212 12 249 0 215 0 169 1 55 12 249 1 62 3 1 1 67 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 6 34 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[1 3 9 0 120 12 253 0 133 12 253 0 135 4 45 1 76 4 45 1 77 4 45 1 78]
#[0 6 38 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 6 42 1 84]
#[1 3 117 0 120 13 1 0 137 13 1 0 138 13 1 0 139]
#[1 3 117 0 120 13 5 0 137 13 5 0 138 13 5 0 139]
#[1 3 117 0 120 13 9 0 137 13 9 0 138 13 9 0 139]
#[1 13 13 0 87 13 17 0 97 3 117 0 120 13 21 0 137 13 21 0 138 13 21 0 139]
#[1 3 117 0 120 13 25 0 137 13 25 0 138 13 25 0 139]
#[0 6 46 0 57 0 75 0 80 0 83 0 99 0 109]
#[0 13 29 0 109]
#[1 6 41 0 64 13 33 0 105 13 37 0 159 13 41 0 173]
#[1 13 45 0 9 12 129 0 15]
#[0 6 50 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 6 41 0 64 8 177 0 105 13 49 0 173 13 53 0 175]
#[1 6 41 0 64 8 173 0 77 8 177 0 105 13 57 0 168 13 61 0 173 13 65 0 175]
#[1 8 177 0 105 13 69 0 175]
#[0 6 54 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 6 58 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 11 69 0 15 9 1 0 105 13 73 0 206]
#[0 6 62 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 13 77 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 59 0 14 0 61 0 14 0 67 0 14 0 69 0 14 0 86 0 14 0 120 13 81 0 189 10 129 0 190 5 49 1 80]
#[0 6 66 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 13 85 0 9]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 13 89 0 218 13 89 0 223 13 89 0 224 13 89 0 225 13 89 0 226 13 89 0 227 13 89 0 228 1 201 0 229 13 89 0 230 13 89 0 231 13 89 0 232 13 89 0 240 13 89 0 241 13 89 0 242 13 89 0 246 13 89 0 247 13 89 0 248 13 89 0 249 13 89 0 250 13 89 0 251 13 89 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 13 89 1 79 2 89 1 82]
#[0 13 93 0 9]
#[1 6 70 0 9 9 89 0 15]
#[1 0 197 0 8 13 97 0 9 0 201 0 13 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 6 169 0 229 13 101 0 244 11 169 0 245 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 6 169 1 33 6 169 1 34 6 169 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 0 197 0 8 13 105 0 9 0 201 0 13 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 6 169 0 229 13 109 0 244 11 169 0 245 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 6 169 1 33 6 169 1 34 6 169 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 13 113 0 26]
#[0 6 74 0 9 0 15 0 26]
#[1 3 90 0 15 13 117 0 24 3 90 0 26 8 57 0 31 5 69 0 38]
#[1 6 78 0 8 6 78 0 13 6 78 0 17 6 78 0 26 6 78 0 27 6 78 0 37 6 78 0 42 6 78 0 43 6 78 0 44 6 78 0 45 6 78 0 46 6 78 0 47 6 78 0 49 6 78 0 50 6 78 0 51 6 78 0 52 6 78 0 53 6 78 0 54 13 121 0 55 6 78 0 56 6 78 0 59 6 78 0 61 6 78 0 62 6 78 0 63 6 78 0 67 6 78 0 68 6 78 0 69 6 78 0 71 6 78 0 72 6 78 0 73 6 78 0 78 6 78 0 79 6 78 0 81 6 78 0 84 6 78 0 85 6 78 0 86 6 78 0 87 6 78 0 88 6 78 0 89 6 78 0 90 6 78 0 91 6 78 0 92 6 78 0 93 6 78 0 96 6 78 0 98 6 78 0 100 6 78 0 101 6 78 0 102 6 78 0 104 6 78 0 105 6 78 0 109 6 78 0 114 6 78 0 115 6 78 0 116 6 78 0 117 6 78 0 118 6 78 0 119 6 78 0 120 6 78 1 84]
#[0 6 82 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 13 125 0 109]
#[0 6 86 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 6 90 0 15 0 109]
#[1 13 129 0 15 13 133 0 109]
#[0 6 94 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 6 98 0 2 6 98 0 3 6 98 0 5 6 98 0 6 6 98 0 9 6 98 0 10 6 98 0 12 6 98 0 13 6 98 0 15 6 98 0 16 6 98 0 17 6 98 0 19 6 98 0 20 6 98 0 22 6 98 0 24 6 98 0 25 6 98 0 26 6 98 0 27 6 98 0 28 6 98 0 30 6 98 0 32 6 98 0 33 6 98 0 36 6 98 0 38 6 98 0 39 6 98 0 40 6 98 0 66 8 177 0 105 6 98 0 106 6 98 0 108 6 98 0 109 6 98 0 111 6 98 0 112 6 98 0 113 13 137 0 175 6 98 1 84]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 13 141 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 13 141 1 47 13 141 1 48 2 229 1 49 2 61 1 50 13 141 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 2 97 0 8 13 145 0 9 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 137 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 13 149 1 20 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 137 1 47 9 137 1 48 2 229 1 49 2 61 1 50 9 137 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 13 153 0 47 13 157 0 52 13 161 0 109 13 165 0 234 13 169 0 235 13 173 0 236 13 177 0 237 13 181 1 9 13 185 1 10 13 189 1 11]
#[0 6 102 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 6 106 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 6 110 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 6 114 0 105]
#[0 6 118 0 9 0 26]
#[0 6 122 0 9 0 26]
#[1 8 57 0 31 5 69 0 38]
#[0 13 193 0 9]
#[1 0 217 0 37 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 4 249 0 59 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 3 9 0 120 13 197 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 13 197 0 132 13 197 0 133 13 197 0 136 13 201 1 2 5 5 1 55 2 69 1 76 2 69 1 77 2 69 1 78 5 5 1 81]
#[0 6 126 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 6 130 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 6 134 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 66 0 106 0 107 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 13 205 0 120]
#[0 13 209 0 120]
#[0 6 138 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 6 142 0 8 13 213 0 27 13 217 1 71]
#[1 2 93 0 1 2 97 0 8 13 221 0 9 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 137 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 13 225 1 20 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 137 1 47 9 137 1 48 2 229 1 49 2 61 1 50 9 137 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 2 97 0 8 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 9 245 0 137 9 245 0 138 9 245 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 13 229 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 5 1 26 2 5 1 27 2 5 1 28 2 149 1 29 2 149 1 30 2 149 1 31 13 233 1 35 13 233 1 36 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 6 146 0 9 6 146 0 15 5 69 0 38]
#[1 13 237 0 47 13 241 0 52 13 181 1 9 13 185 1 10 13 189 1 11]
#[0 6 150 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 6 154 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 3 9 0 120 13 245 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 13 245 0 132 13 245 0 133 13 245 0 136 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 6 158 0 26 0 52 0 105]
#[0 6 162 0 26 0 52 0 105]
#[0 6 166 0 26 0 38 0 52 0 94 0 105]
#[1 13 249 0 9 12 129 0 15]
#[0 6 170 0 26 0 38 0 52 0 94 0 105]
#[0 6 174 0 15 0 26 0 52 0 105]
#[0 13 253 0 26]
#[1 14 1 0 9 11 225 0 15]
#[0 14 5 0 26]
#[1 14 9 0 9 11 225 0 15]
#[0 6 178 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 14 13 0 8]
#[0 14 17 0 8]
#[0 6 182 0 94 0 105]
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 59 0 14 0 61 0 14 0 67 0 14 0 69 0 14 0 86 0 14 0 120 14 21 0 190 5 49 1 80]
#[0 6 186 0 105]
#[0 6 190 0 105]
#[0 3 98 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 217 0 37 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 9 113 0 105 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 14 25 0 184 1 153 0 187 14 25 0 216 2 1 1 5 2 5 1 6 2 5 1 7 14 25 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 14 25 1 47 14 25 1 48 2 229 1 49 2 61 1 50 14 25 1 52 14 29 1 55 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 6 194 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 6 198 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[0 6 202 0 9 0 15 0 109]
#[1 2 93 0 1 3 213 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 217 0 37 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 8 133 0 105 14 33 0 109 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 14 37 1 47 2 181 1 49 2 61 1 50 14 37 1 55 14 37 1 59 14 37 1 60 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 6 206 0 9 0 15 0 109]
#[0 6 210 0 9 0 15]
#[0 10 193 0 31]
#[0 6 214 0 9 0 15]
#[1 14 41 0 15 6 218 0 64 6 218 0 105 14 45 0 170]
#[0 6 222 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 6 226 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120]
#[0 6 230 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 8 177 0 105 14 49 0 175]
#[0 6 234 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 6 238 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 6 242 0 15 0 105]
#[0 6 246 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 2 93 0 1 2 97 0 8 14 53 0 9 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 137 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 14 57 1 20 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 137 1 47 9 137 1 48 2 229 1 49 2 61 1 50 9 137 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 6 250 0 15 0 26 0 109]
#[0 6 254 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 7 2 0 15 0 26 0 109]
#[0 14 61 0 109]
#[0 7 6 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 7 10 0 26 0 37 0 42 0 50 0 56 0 59 0 65 0 68 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 87 0 88 0 91 0 96 0 101 1 84]
#[0 7 14 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 7 18 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[0 7 22 0 15 0 105]
#[1 6 33 0 20 14 65 0 26 14 69 0 95]
#[1 6 33 0 20 14 73 0 26 14 77 0 95]
#[1 6 33 0 20 14 81 0 103]
#[1 3 117 0 120 14 85 0 137 14 85 0 138 14 85 0 139]
#[1 3 117 0 120 14 89 0 137 14 89 0 138 14 89 0 139]
#[1 6 33 0 20 14 93 0 26]
#[1 6 33 0 20 14 97 0 26]
#[0 7 26 1 84]
#[1 7 30 0 26 7 30 0 27 7 30 0 37 7 30 0 42 7 30 0 44 7 30 0 46 7 30 0 49 7 30 0 50 7 30 0 54 7 30 0 56 7 30 0 59 7 30 0 61 7 30 0 67 7 30 0 68 7 30 0 69 7 30 0 71 7 30 0 73 7 30 0 78 7 30 0 79 7 30 0 81 7 30 0 82 7 30 0 85 7 30 0 86 7 30 0 87 7 30 0 88 7 30 0 91 7 30 0 96 7 30 0 100 7 30 0 101 7 30 0 109 7 30 0 120 14 101 0 160 14 105 0 161]
#[0 7 34 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 13 33 0 105 14 109 0 159]
#[1 6 41 0 64 13 33 0 105 14 113 0 159 14 117 0 173]
#[1 8 177 0 105 14 121 0 175]
#[0 7 38 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 6 41 0 64 8 177 0 105 14 125 0 173 14 129 0 175]
#[1 8 177 0 105 14 133 0 175]
#[0 7 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 7 46 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 7 50 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 6 41 0 64 13 33 0 105 14 137 0 159 14 141 0 173]
#[1 14 145 0 9 12 129 0 15]
#[0 14 149 0 26]
#[0 7 54 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 14 153 0 218 14 153 0 223 14 153 0 224 14 153 0 225 14 153 0 226 14 153 0 227 14 153 0 228 1 201 0 229 14 153 0 230 14 153 0 231 14 153 0 232 14 153 0 240 14 153 0 241 14 153 0 242 14 153 0 246 14 153 0 247 14 153 0 248 14 153 0 249 14 153 0 250 14 153 0 251 14 153 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 14 153 1 79 2 89 1 82]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 14 157 0 218 14 157 0 223 14 157 0 224 14 157 0 225 14 157 0 226 14 157 0 227 14 157 0 228 1 201 0 229 14 157 0 230 14 157 0 231 14 157 0 232 14 157 0 240 14 157 0 241 14 157 0 242 14 157 0 246 14 157 0 247 14 157 0 248 14 157 0 249 14 157 0 250 14 157 0 251 14 157 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 14 157 1 79 2 89 1 82]
#[0 14 161 0 9]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 14 165 0 218 14 165 0 223 14 165 0 224 14 165 0 225 14 165 0 226 14 165 0 227 14 165 0 228 1 201 0 229 14 165 0 230 14 165 0 231 14 165 0 232 14 165 0 240 14 165 0 241 14 165 0 242 14 165 0 246 14 165 0 247 14 165 0 248 14 165 0 249 14 165 0 250 14 165 0 251 14 165 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 14 165 1 79 2 89 1 82]
#[0 14 169 0 9]
#[1 0 197 0 8 14 173 0 9 0 201 0 13 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 195 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 6 169 0 229 14 177 0 244 11 169 0 245 2 1 1 5 2 5 1 6 2 5 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 6 169 1 33 6 169 1 34 6 169 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 14 181 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 14 181 1 47 14 181 1 48 2 229 1 49 2 61 1 50 14 181 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 14 185 0 218 14 185 0 223 14 185 0 224 14 185 0 225 14 185 0 226 14 185 0 227 14 185 0 228 1 201 0 229 14 185 0 230 14 185 0 231 14 185 0 232 14 185 0 240 14 185 0 241 14 185 0 242 14 185 0 246 14 185 0 247 14 185 0 248 14 185 0 249 14 185 0 250 14 185 0 251 14 185 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 14 185 1 79 2 89 1 82]
#[0 7 58 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 9 113 0 105 14 189 0 109 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 14 193 0 184 1 153 0 187 14 193 0 216 2 1 1 5 2 5 1 6 2 5 1 7 14 193 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 14 193 1 47 14 193 1 48 2 229 1 49 2 61 1 50 14 193 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 7 62 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 7 66 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 7 70 0 9 0 15]
#[0 7 74 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 14 197 0 9 11 225 0 15]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 14 205 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 14 205 1 47 14 205 1 48 2 229 1 49 2 61 1 50 14 205 1 52 14 205 1 53 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 14 209 0 19 14 213 0 24]
#[0 7 78 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 14 217 0 47 14 221 0 52 14 225 0 109 14 229 0 235 14 233 0 236 13 177 0 237]
#[0 7 82 0 47 0 52 0 109]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 11 0 37 0 41 0 42 0 221 0 43 0 15 0 44 0 229 0 45 0 19 0 46 14 217 0 47 0 23 0 49 0 45 0 50 0 241 0 51 14 221 0 52 0 245 0 53 0 27 0 54 0 49 0 56 0 31 0 59 0 35 0 61 1 1 0 62 1 5 0 63 0 39 0 67 0 61 0 68 0 43 0 69 0 69 0 71 1 17 0 72 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 1 21 0 84 0 97 0 85 0 47 0 86 0 101 0 87 0 105 0 88 1 29 0 89 1 33 0 90 1 37 0 91 1 41 0 92 1 45 0 93 0 113 0 96 1 49 0 98 1 53 0 100 0 117 0 101 1 57 0 102 1 61 0 104 1 65 0 105 14 237 0 109 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 51 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 145 0 165 0 169 0 166 4 109 0 167 1 153 0 187 4 109 0 199 4 109 0 218 14 241 0 219 4 109 0 220 4 109 0 221 1 173 0 222 4 109 0 223 4 109 0 224 4 109 0 225 4 109 0 226 4 109 0 227 4 109 0 228 1 201 0 229 4 109 0 230 4 109 0 231 4 109 0 232 14 245 0 237 4 109 0 240 4 109 0 241 4 109 0 242 4 109 0 246 4 109 0 247 4 109 0 248 4 109 0 249 4 109 0 250 4 109 0 251 4 109 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 0 169 1 55 4 109 1 62 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 4 109 1 79 2 85 1 80 2 89 1 82]
#[0 7 86 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[1 13 237 0 47 13 241 0 52 14 249 0 109 14 253 1 10 13 189 1 11]
#[0 7 90 0 47 0 52 0 109]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 45 0 93 1 53 0 100 1 65 0 105 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 15 1 0 218 15 5 0 249 2 1 1 5 2 5 1 6 2 5 1 7 15 9 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 15 9 1 47 15 9 1 48 2 229 1 49 2 61 1 50 15 9 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 1 65 0 105 15 13 0 218]
#[0 7 94 0 106 0 120]
#[1 15 17 0 106 5 201 0 120 15 21 0 183]
#[0 15 25 0 8]
#[0 7 98 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 3 233 0 36 0 6 0 37 0 6 0 44 0 6 0 46 0 6 0 49 0 6 0 54 0 6 0 61 0 6 0 67 0 6 0 69 0 6 0 86 15 29 0 111 0 6 0 120 3 241 1 54 15 33 1 73 3 249 1 74]
#[0 15 37 0 8]
#[0 7 102 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 15 41 0 9 11 225 0 15]
#[0 7 106 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 7 110 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 15 45 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 15 45 1 47 15 45 1 48 2 229 1 49 2 61 1 50 15 45 1 52 15 45 1 53 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 14 209 0 19]
#[0 7 114 0 5 0 15 0 111]
#[0 7 118 0 26 0 38 0 52 0 94 0 105]
#[0 7 122 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 15 49 0 26]
#[0 7 126 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 15 53 0 26]
#[1 2 93 0 1 2 97 0 8 15 57 0 9 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 137 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 15 61 1 20 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 137 1 47 9 137 1 48 2 229 1 49 2 61 1 50 9 137 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[1 2 93 0 1 2 97 0 8 15 65 0 9 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 137 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 15 69 1 20 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 137 1 47 9 137 1 48 2 229 1 49 2 61 1 50 9 137 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 7 130 0 9 0 15]
#[0 15 73 0 26]
#[0 15 77 0 26]
#[0 7 134 0 9 0 15 0 109]
#[0 7 138 0 15 0 109]
#[1 3 9 0 120 15 81 0 133 15 81 0 135 4 45 1 76 4 45 1 77 4 45 1 78]
#[0 7 142 0 15 0 64 0 105]
#[0 7 146 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 7 150 0 15 7 150 0 26 8 177 0 105 7 150 0 109 15 85 0 175]
#[1 15 89 0 9 11 225 0 15]
#[0 7 154 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 7 158 0 57 0 75 0 80 0 83 0 99 0 109]
#[1 7 162 0 120 15 93 0 148 15 97 0 150]
#[0 7 166 0 57 0 75 0 80 0 83 0 99 0 109]
#[1 3 117 0 120 15 101 0 137 15 101 0 138 15 101 0 139]
#[1 7 170 0 120 15 105 0 145 15 109 0 147]
#[1 6 33 0 20 15 113 0 26]
#[1 6 33 0 20 15 117 0 26]
#[0 7 174 0 57 0 75 0 80 0 83 0 99 0 109]
#[0 7 178 0 57 0 75 0 80 0 83 0 99 0 109]
#[0 15 121 0 109]
#[1 0 33 0 26 2 241 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 59 0 75 0 61 0 79 0 67 0 61 0 68 0 83 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 0 93 0 82 0 97 0 85 0 87 0 86 3 5 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 7 182 0 109 0 91 0 120 3 13 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 3 13 0 132 3 13 0 133 3 13 0 136 15 125 0 157 15 125 0 158 15 125 0 162 15 125 0 163 15 133 0 164 15 137 0 165 0 169 0 166 15 125 0 167 15 125 0 178 15 125 0 179 15 125 0 185 2 253 0 186 15 125 0 194 15 125 0 199 15 125 0 200 0 169 1 55 15 125 1 62 15 149 1 67 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 7 186 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 7 190 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 13 33 0 105 15 153 0 159]
#[0 7 194 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 8 177 0 105 15 157 0 175]
#[0 7 198 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 7 202 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 7 206 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 13 33 0 105 15 161 0 159]
#[1 6 41 0 64 13 33 0 105 15 165 0 159 15 169 0 173]
#[0 7 210 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 7 214 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 7 218 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 15 173 0 218 15 173 0 223 15 173 0 224 15 173 0 225 15 173 0 226 15 173 0 227 15 173 0 228 1 201 0 229 15 173 0 230 15 173 0 231 15 173 0 232 15 173 0 240 15 173 0 241 15 173 0 242 15 173 0 246 15 173 0 247 15 173 0 248 15 173 0 249 15 173 0 250 15 173 0 251 15 173 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 15 173 1 79 2 89 1 82]
#[0 7 222 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 15 177 0 218 15 177 0 223 15 177 0 224 15 177 0 225 15 177 0 226 15 177 0 227 15 177 0 228 1 201 0 229 15 177 0 230 15 177 0 231 15 177 0 232 15 177 0 240 15 177 0 241 15 177 0 242 15 177 0 246 15 177 0 247 15 177 0 248 15 177 0 249 15 177 0 250 15 177 0 251 15 177 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 15 177 1 79 2 89 1 82]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 15 181 0 218 15 181 0 223 15 181 0 224 15 181 0 225 15 181 0 226 15 181 0 227 15 181 0 228 1 201 0 229 15 181 0 230 15 181 0 231 15 181 0 232 15 181 0 240 15 181 0 241 15 181 0 242 15 181 0 246 15 181 0 247 15 181 0 248 15 181 0 249 15 181 0 250 15 181 0 251 15 181 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 15 181 1 79 2 89 1 82]
#[0 15 185 0 9]
#[0 15 189 0 9]
#[0 7 226 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 7 230 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 7 234 0 15 0 109]
#[0 7 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 7 242 0 15 0 19 0 24]
#[1 7 246 0 15 7 246 0 19 7 246 0 24 15 193 0 239]
#[0 7 250 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 93 0 100 0 105 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 7 254 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 15 197 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 15 197 1 47 15 197 1 48 2 229 1 49 2 61 1 50 15 197 1 52 15 197 1 53 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 14 213 0 24]
#[0 8 2 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 8 6 0 47 0 52 0 109]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 11 0 37 0 41 0 42 0 221 0 43 0 15 0 44 0 229 0 45 0 19 0 46 14 217 0 47 0 23 0 49 0 45 0 50 0 241 0 51 14 221 0 52 0 245 0 53 0 27 0 54 0 49 0 56 0 31 0 59 0 35 0 61 1 1 0 62 1 5 0 63 0 39 0 67 0 61 0 68 0 43 0 69 0 69 0 71 1 17 0 72 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 1 21 0 84 0 97 0 85 0 47 0 86 0 101 0 87 0 105 0 88 1 29 0 89 1 33 0 90 1 37 0 91 1 41 0 92 1 45 0 93 0 113 0 96 1 49 0 98 1 53 0 100 0 117 0 101 1 57 0 102 1 61 0 104 1 65 0 105 15 201 0 109 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 51 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 145 0 165 0 169 0 166 4 109 0 167 1 153 0 187 4 109 0 199 4 109 0 218 14 241 0 219 4 109 0 220 4 109 0 221 1 173 0 222 4 109 0 223 4 109 0 224 4 109 0 225 4 109 0 226 4 109 0 227 4 109 0 228 1 201 0 229 4 109 0 230 4 109 0 231 4 109 0 232 14 245 0 237 4 109 0 240 4 109 0 241 4 109 0 242 4 109 0 246 4 109 0 247 4 109 0 248 4 109 0 249 4 109 0 250 4 109 0 251 4 109 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 0 169 1 55 4 109 1 62 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 4 109 1 79 2 85 1 80 2 89 1 82]
#[0 8 10 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 11 0 37 0 41 0 42 0 221 0 43 0 15 0 44 0 229 0 45 0 19 0 46 8 14 0 47 0 23 0 49 0 45 0 50 0 241 0 51 8 14 0 52 0 245 0 53 0 27 0 54 0 49 0 56 0 31 0 59 0 35 0 61 1 1 0 62 1 5 0 63 0 39 0 67 0 61 0 68 0 43 0 69 0 69 0 71 1 17 0 72 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 1 21 0 84 0 97 0 85 0 47 0 86 0 101 0 87 0 105 0 88 1 29 0 89 1 33 0 90 1 37 0 91 1 41 0 92 1 45 0 93 0 113 0 96 1 49 0 98 1 53 0 100 0 117 0 101 1 57 0 102 1 61 0 104 1 65 0 105 8 14 0 109 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 51 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 145 0 165 0 169 0 166 7 53 0 167 1 153 0 187 7 53 0 199 7 53 0 218 7 53 0 220 7 53 0 221 1 173 0 222 7 53 0 223 7 53 0 224 7 53 0 225 7 53 0 226 7 53 0 227 7 53 0 228 1 201 0 229 7 53 0 230 7 53 0 231 7 53 0 232 7 53 0 240 7 53 0 241 7 53 0 242 7 53 0 246 7 53 0 247 7 53 0 248 7 53 0 249 7 53 0 250 7 53 0 251 7 53 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 0 169 1 55 7 53 1 62 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 7 53 1 79 2 85 1 80 2 89 1 82]
#[0 8 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 8 22 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 8 26 0 47 0 52 0 109]
#[1 15 205 0 26 8 30 0 47 8 30 0 52 8 30 0 109]
#[0 8 34 0 47 0 52 0 109]
#[0 15 209 0 26]
#[0 8 38 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 60 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 3 9 0 120 15 213 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 15 213 0 132 15 213 0 133 15 213 0 136 2 69 1 76 2 69 1 77 2 69 1 78]
#[1 8 42 0 9 5 69 0 38]
#[1 2 93 0 1 2 97 0 8 15 217 0 9 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 137 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 15 221 1 20 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 137 1 47 9 137 1 48 2 229 1 49 2 61 1 50 9 137 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 8 46 0 8]
#[1 6 133 0 15 15 225 0 111]
#[1 2 93 0 1 2 97 0 8 15 229 0 9 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 9 137 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 15 233 1 20 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 9 137 1 47 9 137 1 48 2 229 1 49 2 61 1 50 9 137 1 52 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 8 50 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 7 246 0 15 7 246 0 19 15 237 0 239]
#[0 8 54 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 8 58 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 15 241 0 26]
#[1 15 245 0 9 11 225 0 15]
#[0 15 249 0 26]
#[1 15 253 0 9 11 225 0 15]
#[0 8 62 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[0 8 66 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[0 8 70 0 15 0 64 0 105]
#[0 8 74 0 15 0 26 0 109]
#[1 8 78 0 15 8 78 0 26 8 177 0 105 8 78 0 109 16 1 0 175]
#[0 16 5 0 26]
#[1 3 117 0 120 16 9 0 137 16 9 0 138 16 9 0 139 16 13 0 149]
#[1 6 33 0 20 16 17 0 26]
#[0 16 21 0 26]
#[1 3 117 0 120 16 25 0 137 16 25 0 138 16 25 0 139 16 29 0 146]
#[0 8 82 0 57 0 75 0 80 0 83 0 99 0 109]
#[0 8 86 0 57 0 75 0 80 0 83 0 99 0 109]
#[0 8 90 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 8 94 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[0 8 98 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[1 5 233 0 94 5 237 0 105 16 33 0 191 16 37 0 197]
#[1 2 241 0 27 3 177 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 3 181 0 50 0 71 0 54 3 185 0 56 0 53 0 59 0 75 0 61 0 79 0 67 3 189 0 68 0 83 0 69 0 69 0 71 0 73 0 73 0 81 0 78 0 85 0 79 0 89 0 81 3 193 0 82 0 97 0 85 0 87 0 86 0 101 0 87 0 105 0 88 0 109 0 91 0 113 0 96 0 22 0 100 0 117 0 101 0 91 0 120 5 221 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 5 221 0 132 5 221 0 133 5 221 0 136 16 41 0 164 3 197 0 166 3 197 1 55 16 45 1 67 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 8 102 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[0 8 106 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 1 53 0 100 3 217 0 120 5 189 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 5 189 0 132 5 189 0 133 5 189 0 136 16 49 0 138 5 193 0 187 2 69 1 76 2 69 1 77 2 69 1 78]
#[0 8 110 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 8 114 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 82 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 8 118 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 8 122 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[1 13 33 0 105 16 53 0 159]
#[0 8 126 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 8 130 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 8 134 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 16 57 0 218 16 57 0 223 16 57 0 224 16 57 0 225 16 57 0 226 16 57 0 227 16 57 0 228 1 201 0 229 16 57 0 230 16 57 0 231 16 57 0 232 16 57 0 240 16 57 0 241 16 57 0 242 16 57 0 246 16 57 0 247 16 57 0 248 16 57 0 249 16 57 0 250 16 57 0 251 16 57 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 16 57 1 79 2 89 1 82]
#[1 0 197 0 8 0 201 0 13 0 205 0 17 0 209 0 26 0 213 0 27 0 221 0 43 0 225 0 44 0 229 0 45 0 233 0 46 0 237 0 49 0 241 0 51 0 245 0 53 0 249 0 54 0 253 0 61 1 1 0 62 1 5 0 63 1 9 0 67 1 13 0 69 1 17 0 72 1 21 0 84 1 25 0 86 1 29 0 89 1 33 0 90 4 17 0 91 1 41 0 92 1 45 0 93 1 49 0 98 1 53 0 100 1 57 0 102 1 61 0 104 1 65 0 105 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 199 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 1 153 0 187 16 61 0 218 16 61 0 223 16 61 0 224 16 61 0 225 16 61 0 226 16 61 0 227 16 61 0 228 1 201 0 229 16 61 0 230 16 61 0 231 16 61 0 232 16 61 0 240 16 61 0 241 16 61 0 242 16 61 0 246 16 61 0 247 16 61 0 248 16 61 0 249 16 61 0 250 16 61 0 251 16 61 1 4 2 1 1 5 2 5 1 6 2 9 1 7 2 5 1 18 2 17 1 19 2 1 1 21 2 25 1 26 2 29 1 27 2 33 1 28 2 37 1 29 2 41 1 30 2 45 1 31 1 201 1 33 1 201 1 34 1 201 1 49 2 61 1 50 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 16 61 1 79 2 89 1 82]
#[1 16 65 0 15 16 69 0 19 16 73 0 24 16 77 0 238]
#[1 7 246 0 15 7 246 0 24 16 81 0 239]
#[0 8 138 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 8 142 0 47 0 52 0 109]
#[0 8 146 0 47 0 52 0 109]
#[0 8 150 0 106 0 120]
#[0 8 154 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 16 85 0 9 11 225 0 15]
#[0 8 158 0 8]
#[1 8 162 0 2 8 162 0 3 8 162 0 5 8 162 0 6 8 162 0 9 8 162 0 10 8 162 0 12 8 162 0 13 8 162 0 15 8 162 0 16 8 162 0 17 8 162 0 19 8 162 0 20 8 162 0 22 8 162 0 24 8 162 0 25 8 162 0 26 8 162 0 27 8 162 0 28 8 162 0 30 8 162 0 32 8 162 0 33 8 162 0 36 8 162 0 38 8 162 0 39 8 162 0 40 8 162 0 66 8 177 0 105 8 162 0 106 8 162 0 108 8 162 0 109 8 162 0 111 8 162 0 112 8 162 0 113 16 89 0 175 8 162 1 84]
#[1 16 93 0 9 11 225 0 15]
#[1 16 65 0 15 16 69 0 19 16 77 0 238]
#[0 8 166 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 16 97 0 26]
#[0 8 170 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 16 101 0 26]
#[0 8 174 0 15 0 26 0 109]
#[0 8 178 0 57 0 75 0 80 0 83 0 99 0 109]
#[1 16 105 0 15 6 33 0 20 8 182 0 26]
#[0 8 186 0 120]
#[0 8 190 0 57 0 75 0 80 0 83 0 99 0 109]
#[0 8 194 0 57 0 75 0 80 0 83 0 99 0 109]
#[1 16 109 0 15 6 33 0 20 8 198 0 26]
#[0 8 202 0 120]
#[1 5 237 0 105 16 113 0 197]
#[0 8 206 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[1 5 233 0 94 5 237 0 105 16 117 0 191 16 121 0 197]
#[1 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 25 0 86 1 53 0 100 3 217 0 120 8 29 0 127 3 17 0 128 3 17 0 129 3 17 0 130 3 17 0 131 8 29 0 132 8 29 0 133 8 29 0 136 16 49 0 138 8 33 0 187 2 69 1 76 2 69 1 77 2 69 1 78]
#[1 16 125 0 8 8 210 0 94 8 210 0 105]
#[0 8 214 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 105 0 109 0 120 1 84]
#[0 8 218 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[0 8 222 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120 1 84]
#[1 2 93 0 1 2 97 0 8 2 101 0 12 0 201 0 13 2 105 0 16 0 205 0 17 0 213 0 27 0 225 0 44 0 233 0 46 0 237 0 49 0 249 0 54 0 253 0 61 1 9 0 67 1 13 0 69 1 17 0 72 1 25 0 86 1 29 0 89 2 109 0 90 1 41 0 92 1 53 0 100 2 113 0 110 1 69 0 114 1 73 0 115 1 77 0 116 1 81 0 117 1 85 0 118 1 89 0 119 0 55 0 120 2 5 0 126 1 101 0 127 1 105 0 128 1 105 0 129 1 105 0 130 1 105 0 131 1 121 0 132 1 121 0 133 1 121 0 136 1 133 0 137 1 133 0 138 1 133 0 139 2 121 0 183 1 153 0 187 2 1 1 5 2 5 1 6 2 5 1 7 16 129 1 12 2 133 1 13 2 137 1 16 2 5 1 18 2 5 1 19 2 1 1 21 2 25 1 26 2 5 1 27 2 33 1 28 2 149 1 29 2 149 1 30 2 149 1 31 2 181 1 32 2 181 1 33 2 181 1 34 2 181 1 35 2 181 1 36 2 181 1 37 2 185 1 38 2 189 1 39 2 193 1 40 2 197 1 41 2 201 1 42 2 205 1 43 2 209 1 44 2 213 1 45 2 217 1 46 16 129 1 47 16 129 1 48 2 229 1 49 2 61 1 50 16 129 1 52 16 129 1 53 2 65 1 72 2 69 1 76 2 69 1 77 2 69 1 78 2 89 1 82]
#[0 8 226 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 61 0 67 0 69 0 72 0 86 0 89 0 90 0 92 0 93 0 100 0 105 0 110 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 8 230 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 8 234 0 15 0 19 0 24]
#[1 16 65 0 15 16 73 0 24 16 77 0 238]
#[0 8 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 8 242 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[1 8 246 0 2 8 246 0 3 8 246 0 5 8 246 0 6 8 246 0 9 8 246 0 10 8 246 0 12 8 246 0 13 8 246 0 15 8 246 0 16 8 246 0 17 8 246 0 19 8 246 0 20 8 246 0 22 8 246 0 24 8 246 0 25 8 246 0 26 8 246 0 27 8 246 0 28 8 246 0 30 8 246 0 32 8 246 0 33 8 246 0 36 8 246 0 38 8 246 0 39 8 246 0 40 8 246 0 66 8 177 0 105 8 246 0 106 8 246 0 108 8 246 0 109 8 246 0 111 8 246 0 112 8 246 0 113 16 133 0 175 8 246 1 84]
#[0 8 250 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 8 254 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 59 0 61 0 62 0 63 0 67 0 68 0 69 0 71 0 72 0 73 0 78 0 79 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 96 0 98 0 100 0 101 0 102 0 104 0 105 0 109 0 114 0 115 0 116 0 117 0 118 0 119 0 120]
#[0 9 2 0 120]
#[0 9 6 0 120]
#[0 9 10 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[1 5 237 0 105 16 137 0 197]
#[0 9 14 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[1 16 141 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 59 0 14 0 61 0 14 0 67 0 14 0 69 0 14 0 86 0 14 0 120 16 145 0 189 10 129 0 190 5 49 1 80]
#[0 9 18 0 15 0 19 0 24]
#[0 9 22 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 66 0 106 0 108 0 109 0 111 0 112 0 113 1 84]
#[0 9 26 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 59 0 61 0 67 0 68 0 69 0 71 0 73 0 78 0 79 0 81 0 82 0 85 0 86 0 87 0 88 0 91 0 96 0 100 0 101 0 109 0 120]
#[0 9 30 0 94 0 105]
#[1 16 149 0 9 12 129 0 15]
#[0 9 34 0 94 0 105]
	).
]

{ #category : 'private' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForannotation1: nodes [
	| result |
	result := JavaAnnotationNode new.
	result _at: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForannotation_args1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForannotation_args2: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForannotation_interface_body1: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForannotation_interface_body2: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 3).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForannotations1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForarray_access1: nodes [
	| result |
	result := JavaArrayAccessNode new.
	result array: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForarray_creation_expression1: nodes [
	| result |
	result := JavaNewArrayNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result dimExpressions.
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForarray_initializer2: nodes [
	| result |
	result := JavaArrayInitializerNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForarray_initializer3: nodes [
	| result |
	result := JavaArrayInitializerNode new.
	result leftBrace: (nodes at: 1).
	result addToken: (nodes at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForarray_initializer4: nodes [
	| result |
	result := JavaArrayInitializerNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForarray_type1: nodes [
	| result |
	result := JavaArrayTypeNode new.
	result baseType: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result leftBrackets.
	result addTokens: ((nodes at: 2) at: 2) to: result rightBrackets.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForassert_statement1: nodes [
	| result |
	result := JavaAssertStatementNode new.
	result assertToken: (nodes at: 1).
	result testExpression: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForassignment1: nodes [
	| result |
	result := JavaAssignmentNode new.
	result variable: (nodes at: 1).
	result op: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForblock1: nodes [
	| result |
	result := JavaBlockNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForblock2: nodes [
	| result |
	result := JavaBlockNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result statements.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForbreak_statement1: nodes [
	| result |
	result := JavaBreakStatementNode new.
	result breakToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForbreak_statement2: nodes [
	| result |
	result := JavaBreakStatementNode new.
	result breakToken: (nodes at: 1).
	result identifier: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForcast_expression1: nodes [
	| result |
	result := JavaCastExpressionNode new.
	result leftParen: (nodes at: 1).
	result type: (nodes at: 2).
	result rightParen: (nodes at: 3).
	result expression: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForcatch_parameter1: nodes [
	| result |
	result := JavaCatchParameterNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result addNodes: ((nodes at: 2) at: 1) to: result types.
	result addTokens: ((nodes at: 2) at: 2) to: result bars.
	result variable: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForclass_body_declaration4: nodes [
	| result |
	result := JavaInitializerNode new.
	result block: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForclass_instance_creation_expression1: nodes [
	| result |
	result := JavaNewNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForclass_or_interface_type1: nodes [
	| result |
	result := JavaClassTypeNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit1: nodes [
	| result |
	result := JavaProgramFileNode new.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit2: nodes [
	| result |
	result := JavaProgramFileNode new.
	result addNodes: (nodes at: 1) to: result typeDeclarations.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit3: nodes [
	| result |
	result := JavaProgramFileNode new.
	result addNodes: (nodes at: 1) to: result imports.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit4: nodes [
	| result |
	result := JavaProgramFileNode new.
	result addNodes: (nodes at: 1) to: result imports.
	result addNodes: (nodes at: 2) to: result typeDeclarations.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit5: nodes [
	| result |
	result := JavaProgramFileNode new.
	result packageDeclaration: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit6: nodes [
	| result |
	result := JavaProgramFileNode new.
	result packageDeclaration: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result typeDeclarations.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit7: nodes [
	| result |
	result := JavaProgramFileNode new.
	result packageDeclaration: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result imports.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit8: nodes [
	| result |
	result := JavaProgramFileNode new.
	result packageDeclaration: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result imports.
	result addNodes: (nodes at: 3) to: result typeDeclarations.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForconditional_expression3: nodes [
	| result |
	result := JavaConditionalExpressionNode new.
	result testExpression: (nodes at: 1).
	result questionMark: (nodes at: 2).
	result trueExpression: (nodes at: 3).
	result colon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForconstructor_body1: nodes [
	| result |
	result := JavaBlockNode new.
	result leftBrace: (nodes at: 1).
	result addNode: (nodes at: 2) to: result statements.
	result addNodes: (nodes at: 3) to: result statements.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForconstructor_body2: nodes [
	| result |
	result := JavaBlockNode new.
	result leftBrace: (nodes at: 1).
	result addNode: (nodes at: 2) to: result statements.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForcontinue_statement1: nodes [
	| result |
	result := JavaContinueStatementNode new.
	result continueToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForcontinue_statement2: nodes [
	| result |
	result := JavaContinueStatementNode new.
	result continueToken: (nodes at: 1).
	result identifier: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFordim_expr1: nodes [
	| result |
	result := JavaDimensionExpressionNode new.
	result leftBracket: (nodes at: 1).
	result expression: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFordims1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFordims2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForelementValueArrayInitializer1: nodes [
	| result |
	result := JavaElementArrayInitializerNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForelementValueArrayInitializer2: nodes [
	| result |
	result := JavaElementArrayInitializerNode new.
	result leftBrace: (nodes at: 1).
	result addToken: (nodes at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForelementValueArrayInitializer3: nodes [
	| result |
	result := JavaElementArrayInitializerNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForelementValuePair1: nodes [
	| result |
	result := JavaElementValuePairNode new.
	result name: (nodes at: 1).
	result equals: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForempty_dim_expr1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForempty_statement1: nodes [
	| result |
	result := JavaEmptyStatementNode new.
	result semicolon: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForenum_body_declarations1: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForenum_body_declarations2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForenum_constant1: nodes [
	| result |
	result := JavaEnumConstantNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result name: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForenum_constant3: nodes [
	| result |
	result := JavaEnumConstantNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result name: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForexplicit_constructor_invocation1: nodes [
	| result |
	result := JavaThisConstructorInvocationNode new.
	result thisToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result rightParen: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForexplicit_constructor_invocation3: nodes [
	| result |
	result := JavaSuperConstructorInvocationNode new.
	result superToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result rightParen: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForexport_to_names1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForexpression_statement1: nodes [
	| result |
	result := JavaExpressionStatementNode new.
	result expression: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForextends_interfaces1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForextends_interfaces2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForfield_access1: nodes [
	| result |
	result := JavaFieldAccessNode new.
	result receiver: (nodes at: 1).
	result period: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForfield_access2: nodes [
	| result |
	result := JavaFieldAccessNode new.
	result superToken: (nodes at: 1).
	result period: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForfinally1: nodes [
	| result |
	result := JavaFinallyClauseNode new.
	result finallyToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForfloating_point_type1: nodes [
	| result |
	result := JavaFloatTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForfloating_point_type2: nodes [
	| result |
	result := JavaDoubleTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForformal_parameter1: nodes [
	| result |
	result := JavaParameterNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result type: (nodes at: 2).
	result variable: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForformal_parameter2: nodes [
	| result |
	result := JavaVariableArgumentParameterNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result type: (nodes at: 2).
	result varArgsToken: (nodes at: 3).
	result variable: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForimport_declarations1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForimport_declarations2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForinitialized_variable_declarator1: nodes [
	| result |
	result := JavaInitializedVariableDeclarationNode new.
	result variable: (nodes at: 1).
	result equals: (nodes at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForintegral_type1: nodes [
	| result |
	result := JavaByteTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForintegral_type2: nodes [
	| result |
	result := JavaShortTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForintegral_type3: nodes [
	| result |
	result := JavaIntTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForintegral_type4: nodes [
	| result |
	result := JavaLongTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForintegral_type5: nodes [
	| result |
	result := JavaCharTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForlabeled_statement1: nodes [
	| result |
	result := JavaLabeledStatementNode new.
	result identifier: (nodes at: 1).
	result colon: (nodes at: 2).
	result statement: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForlambda_parameters1: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForlambda_parameters3: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForliteral1: nodes [
	| result |
	result := JavaIntegerLiteralNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForliteral2: nodes [
	| result |
	result := JavaFloatLiteralNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForliteral3: nodes [
	| result |
	result := JavaBooleanLiteralNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForliteral4: nodes [
	| result |
	result := JavaCharacterLiteralNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForliteral5: nodes [
	| result |
	result := JavaStringLiteralNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForliteral6: nodes [
	| result |
	result := JavaNullNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForlocal_variable_declaration_statement1: nodes [
	| result |
	result := JavaLocalVariableDeclarationStatementNode new.
	result declaration: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormethod_body2: nodes [
	| result |
	result := JavaEmptyMethodBodyNode new.
	result semicolon: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormethod_declarator1: nodes [
	| result |
	result := JavaMethodDeclaratorNode new.
	result name: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormethod_declarator3: nodes [
	| result |
	result := JavaArrayMethodDeclaratorNode new.
	result declarator: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormethod_header1: nodes [
	| result |
	result := Array new: 5.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormethod_reference_expression3: nodes [
	| result |
	result := JavaMethodReferenceNode new.
	result superToken: (nodes at: 1).
	result colonColonToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormodifier5: nodes [
	| result |
	result := JavaModifierNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormodule1: nodes [
	| result |
	result := JavaModuleNode new.
	result moduleToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormodule2: nodes [
	| result |
	result := JavaModuleNode new.
	result openToken: (nodes at: 1).
	result moduleToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result directives.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormodule_body_item1: nodes [
	| result |
	result := JavaModuleRequiresNode new.
	result requiresToken: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormodule_body_item2: nodes [
	| result |
	result := JavaModuleRequiresNode new.
	result requiresToken: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormodule_body_item3: nodes [
	| result |
	result := JavaModuleRequiresNode new.
	result requiresToken: (nodes at: 1).
	result transitiveToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormodule_body_item4: nodes [
	| result |
	result := JavaModuleOpensNode new.
	result opensToken: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormodule_body_item5: nodes [
	| result |
	result := JavaModuleOpensNode new.
	result opensToken: (nodes at: 1).
	result name: (nodes at: 2).
	result toToken: (nodes at: 3).
	result toName: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormodule_body_item6: nodes [
	| result |
	result := JavaModuleExportsNode new.
	result exportsToken: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormodule_body_item7: nodes [
	| result |
	result := JavaModuleExportsNode new.
	result exportsToken: (nodes at: 1).
	result name: (nodes at: 2).
	result toToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result toNames.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormodule_body_item8: nodes [
	| result |
	result := JavaModuleUsesNode new.
	result usesToken: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormodule_body_item9: nodes [
	| result |
	result := JavaModuleProvidesNode new.
	result providesToken: (nodes at: 1).
	result name: (nodes at: 2).
	result withToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result withNames.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFormultiplicative_expression4: nodes [
	| result |
	result := JavaBinaryExpressionNode new.
	result leftExpression: (nodes at: 1).
	result op: (nodes at: 2).
	result rightExpression: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForpackage_declaration1: nodes [
	| result |
	result := JavaPackageDeclarationNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result packageToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForpostdecrement_expression1: nodes [
	| result |
	result := JavaPostDecrementExpressionNode new.
	result expression: (nodes at: 1).
	result minusMinus: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForpostincrement_expression1: nodes [
	| result |
	result := JavaPostIncrementExpressionNode new.
	result expression: (nodes at: 1).
	result plusPlus: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForpredecrement_expression1: nodes [
	| result |
	result := JavaPreDecrementExpressionNode new.
	result minusMinus: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForpreincrement_expression1: nodes [
	| result |
	result := JavaPreIncrementExpressionNode new.
	result plusPlus: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForprimary_no_new_array10: nodes [
	| result |
	result := JavaClassExpressionNode new.
	result type: (nodes at: 1).
	result period: (nodes at: 2).
	result classToken: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForprimary_no_new_array11: nodes [
	| result |
	result := JavaOuterThisNode new.
	result name: (nodes at: 1).
	result period: (nodes at: 2).
	result thisToken: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForprimary_no_new_array2: nodes [
	| result |
	result := JavaNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForprimary_no_new_array3: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result _leftParens.
	result addToken: (nodes at: 3) to: result _rightParens.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForprimitive_type2: nodes [
	| result |
	result := JavaBooleanTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForqualified_name1: nodes [
	| result |
	result := JavaQualifiedNameNode new.
	result nspace: (nodes at: 1).
	result period: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForrecord_constructor_declarator1: nodes [
	| result |
	result := Array new: 6.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForrelational_expression7: nodes [
	| result |
	result := JavaInstanceofPatternExpressionNode new.
	result object: (nodes at: 1).
	result instanceofToken: (nodes at: 2).
	result type: (nodes at: 3).
	result variable: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForreturn_statement1: nodes [
	| result |
	result := JavaReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForreturn_statement2: nodes [
	| result |
	result := JavaReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForsingle_type_import_declaration1: nodes [
	| result |
	result := JavaSingleTypeImportDeclarationNode new.
	result importToken: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForsingle_type_import_declaration2: nodes [
	| result |
	result := JavaSingleTypeImportDeclarationNode new.
	result importToken: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForstatement_expression_list1: nodes [
	| result |
	result := JavaStatementExpressionListNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForstatement_expression_list2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result commas.
	result addNode: (nodes at: 3) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForstatic_initializer1: nodes [
	| result |
	result := JavaStaticInitializerNode new.
	result staticToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForswitch_block1: nodes [
	| result |
	result := JavaSwitchBlockNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result statementGroups.
	result addNodes: (nodes at: 3) to: result labels.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForswitch_block2: nodes [
	| result |
	result := JavaSwitchBlockNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result statementGroups.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForswitch_block3: nodes [
	| result |
	result := JavaSwitchBlockNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result labels.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForswitch_block4: nodes [
	| result |
	result := JavaSwitchBlockNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForswitch_block_statement_group1: nodes [
	| result |
	result := JavaSwitchBlockStatementGroupNode new.
	result addNodes: (nodes at: 1) to: result labels.
	result addNodes: (nodes at: 2) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForswitch_expression_block1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForswitch_expression_labels2: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 4 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForswitch_label2: nodes [
	| result |
	result := JavaDefaultLabelNode new.
	result defaultToken: (nodes at: 1).
	result colon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForthrow_statement1: nodes [
	| result |
	result := JavaThrowStatementNode new.
	result throwToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForthrows1: nodes [
	| result |
	result := JavaThrowsNode new.
	result throwsToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result classTypes.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortry_resource1: nodes [
	| result |
	result := JavaLocalVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result type: (nodes at: 2).
	result addNode: (nodes at: 3) to: result variableDeclarations.
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortry_statement1: nodes [
	| result |
	result := JavaTryStatementNode new.
	result tryToken: (nodes at: 1).
	result block: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result catches.
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortry_statement3: nodes [
	| result |
	result := JavaTryStatementNode new.
	result tryToken: (nodes at: 1).
	result block: (nodes at: 2).
	result finally: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortry_statement4: nodes [
	| result |
	result := JavaTryStatementNode new.
	result tryToken: (nodes at: 1).
	result block: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result catches.
	result finally: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortype_argument1: nodes [
	| result |
	result := JavaTypeArgumentNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result type: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortype_argument2: nodes [
	| result |
	result := JavaTypeArgumentNode new.
	result questionMark: (nodes at: 1).
	result token: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortype_argument_type3: nodes [
	| result |
	result := Array new: 2.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortype_arguments1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortype_arguments2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortype_arguments_opt1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortype_arguments_opt3: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 4 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortype_declaration5: nodes [
	| result |
	result := JavaEmptyDeclarationNode new.
	result semicolon: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortype_parameter1: nodes [
	| result |
	result := JavaTypeParameterNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortype_parameter2: nodes [
	| result |
	result := JavaTypeParameterNode new.
	result name: (nodes at: 1).
	result extendsToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result types.
	result addTokens: ((nodes at: 3) at: 2) to: result amps.
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionFortype_parameters_opt2: nodes [
	| result |
	result := JavaTypeParametersNode new.
	result lt: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result parameters.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result gt: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForunary_expression3: nodes [
	| result |
	result := JavaUnaryAdditionNode new.
	result plus: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForunary_expression4: nodes [
	| result |
	result := JavaUnarySubtractionNode new.
	result minus: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForunary_expression_not_plus_minus2: nodes [
	| result |
	result := JavaUnaryBitInvertNode new.
	result tilde: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForunary_expression_not_plus_minus3: nodes [
	| result |
	result := JavaUnaryNotNode new.
	result bang: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForuntyped_lambda_parameter1: nodes [
	| result |
	result := JavaParameterNode new.
	result variable: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForvariable_declarator1: nodes [
	| result |
	result := JavaVariableDeclarationNode new.
	result variable: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForvariable_declarator_id1: nodes [
	| result |
	result := JavaVariableNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForvariable_declarator_id2: nodes [
	| result |
	result := JavaArrayVariableNameNode new.
	result variable: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForvoid1: nodes [
	| result |
	result := JavaVoidTypeNode new.
	result voidToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForyield_statement1: nodes [
	| result |
	result := JavaYieldStatementNode new.
	result yieldToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JavaParser >> reduceActionForyield_statement2: nodes [
	| result |
	result := JavaYieldStatementNode new.
	result yieldToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : 'private' }
JavaParser >> tryAllTokens [
	^ (self class keywords includes: currentToken value) not
]
