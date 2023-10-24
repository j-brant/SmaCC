Class {
	#name : #PythonParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PythonParser class >> ambiguousTransitions [
^#(
#[ 0 50 2 85] 
#[ 0 194 2 225] 
#[ 0 198 2 229] 
#[ 0 202 2 233] 
#[ 0 206 2 237] 
#[ 0 206 2 241] 
#[ 0 210 2 245] 
#[ 0 210 2 249] 
#[ 0 214 2 253] 
#[ 0 214 3 1] 
#[ 0 214 3 5] 
#[ 0 214 3 9] 
#[ 0 222 3 13] 
#[ 0 230 3 17] 
#[ 0 230 3 21] 
#[ 0 230 3 25] 
#[ 1 110 2 85] 
#[ 1 238 3 17] 
#[ 1 238 3 21] 
#[ 1 238 3 25]
	).
]

{ #category : #'generated-accessing' }
PythonParser class >> cacheId [
	^'2023-10-23T17:02:40.113824-05:00'
]

{ #category : #generated }
PythonParser class >> definitionComment [
"# Python Grammar and Lexer extracted from Python2 documentation on 16/04/2014 (Python 2.7.6)
# As seen from this grammar, the python doc and the implemented python scanner/parser diverge in several places
# https://docs.python.org/2/reference/index.html

# added f string support from Python 3

#Identifiers
%glr;

<name> :  ( [a-zA-Z]  | _ ) ([a-zA-Z]  | [0-9] | _)*;

# String literals
<stringprefix> :  r | u | ur | R | U | UR | Ur | uR | b | B | br | Br | bR | BR;
<escapeseq>       :  \\.;
<shortstring>  : 
		\' ( [^\\\n\r\'] | <escapeseq> )* \'
		| \"" ( [^\\\n\r\""] | <escapeseq>)* \"";
<longstring> :
		\'\'\' ( [^\\\'] | <escapeseq> | \'[^\'] | \'\'[^\'] )* \'\'\'
		| \""\""\"" ( [^\\\""] | <escapeseq> | \""[^\""] | \""\""[^\""] )* \""\""\"" ;
<string> : <stringprefix>?(<shortstring> | <longstring>);
<fStringWhole> : f <stringprefix>? (\' ( [^\\\n\r\'\{] | <escapeseq> )* \'
		| \"" ( [^\\\n\r\""\{] | <escapeseq>)* \"" 
		| \'\'\' ( [^\\\'\{] | <escapeseq> | \'[^\'] | \'\'[^\'] )* \'\'\'
		| \""\""\"" ( [^\\\""\{] | <escapeseq> | \""[^\""] | \""\""[^\""] )* \""\""\"");
<fStringSingleStart> : f <stringprefix>? \' ( [^\\\n\r\'\{] | <escapeseq> )* \{ ;
fStringSingle <fStringSingleMid> : \} ( [^\\\n\r\'\{] | <escapeseq> )* \{ ;
fStringSingle <fStringSingleEnd> : \} ( [^\\\n\r\'\{] | <escapeseq> )* \' ;
<fStringDoubleStart> : f <stringprefix>? \"" ( [^\\\n\r\""\{] | <escapeseq> )* \{ ;
fStringDouble <fStringDoubleMid> : \} ( [^\\\n\r\""\{] | <escapeseq> )* \{ ;
fStringDouble <fStringDoubleEnd> : \} ( [^\\\n\r\""\{] | <escapeseq> )* \"" ;
<fLongStringSingleStart> : f <stringprefix>? \'\'\' ( [^\\\'\{] | <escapeseq> | \'[^\'] | \'\'[^\'] )* \{ ;
fLongStringSingle <fLongStringSingleMid> : \} ( [^\\\'\{] | <escapeseq> | \'[^\'] | \'\'[^\'] )* \{ ;
fLongStringSingle <fLongStringSingleEnd> : \} ( [^\\\'\{] | <escapeseq> | \'[^\'] | \'\'[^\'] )* \'\'\' ;
<fLongStringDoubleStart> : f <stringprefix>? \""\""\"" ( [^\\\""\{] | <escapeseq> | \""[^\""] | \""\""[^\""] )* \{ ;
fLongStringDouble <fLongStringDoubleMid> : \} ( [^\\\""\{] | <escapeseq> | \""[^\""] | \""\""[^\""] )* \{ ;
fLongStringDouble <fLongStringDoubleEnd> : \} ( [^\\\""\{] | <escapeseq> | \""[^\""] | \""\""[^\""] )* \""\""\"" ;

# Integer literals
<decimalinteger> :  [1-9] [0-9]* | 0 ; 
<octinteger> :  0 (o | O) [0-7]+ | 0 [0-7]+;
<hexinteger> :  0 (x | X) [0-9a-fA-F]+;
<bininteger> :  0 (b | B) [01]+;
<integer> :  <decimalinteger> | <octinteger> | <hexinteger> | <bininteger>;
<longinteger> : <integer> (l | L) ;

#Float literals
<pointfloat> :  ([0-9]+ \. [0-9]*) | (\. [0-9]+) ; #Is that true that one can write 0000. ? Yes. Oh, and .50 is accepted in Python, not in the doc of Python.
<exponentfloat> :  ([0-9]+ | <pointfloat>) (e | E) (\+|\-)? [0-9]+ ;
<floatnumber> :  <pointfloat> | <exponentfloat> ;

#Imaginary literals
<imagnumber> : (<floatnumber> | [0-9]+) j ; #Is that true that one can write 0000j ? Yes.

#All number literals
<number> : <longinteger> | <integer> | <floatnumber> | <imagnumber> ;

#Modes
<cr>	: \r | \n | \r\n ;
lineBegin <emptyLine> : <cr> ;
lineBegin <blankLine> : [ \t\f]* ((\# [^\r\n]*  <cr>?) | <cr>) ;
lineBegin <indent> : [ \t\f]+ ;
lineBegin <noindent>  : [^ \t\f\#] ;
<comment> : \#[^\r\n]* ;
<whitespace> : [ \t]+ | \\<cr>;

<NEWLINE> : <cr> ;


<lparen> : \( ;
<rparen> : \) ;
<lbrack>	 : \[ ;
<rbrack> : \] ;
<lcurly> : \{ ;
<rcurly>	: \} ;

%id <INDENT> <DEDENT> <NEWLINE> <lbrack> <lcurly> <lparen> <rbrack> <rcurly> <rparen> ;

# Grammar for Python

# Note:  Changing the grammar specified in this file will most likely
#        require corresponding changes in the parser module
#        (../Modules/parsermodule.c).  If you can""t make the changes to
#        that module yourself, please co-ordinate the required changes
#        with someone who can; ask around on python-dev for help.  Fred
#        Drake <fdrake@acm.org> will probably be listening there.

# NOTE WELL: You should also follow all the steps listed in PEP 306,
# ""How to Change Python""s Grammar""

# Start symbols for the grammar:
#       single_input is a single interactive statement;
#       file_input is a module or sequence of commands read from an input file;
#       eval_input is the input for the eval() and input() functions.
# NB: compound_stmt in single_input is followed by extra <NEWLINE>!

%start file_input single_input eval_input ;

# Note: Grammar rewritten to eliminate () [] * ? + ThierryGoubier 5/5/2014 22:34

%annotate_tokens;
%root Root;
%prefix Py;
%suffix Node;
%hierarchy Symbol (AnnotatedSymbol);

file_input: {{}}
	| file_input <NEWLINE> {{}}
	| file_input stmt 'statement' {{}}
	;

single_input: 
	<NEWLINE> {{}}
	| simple_stmt 'statement' {{}}
	| compound_stmt 'statement' <NEWLINE> {{}}
	;

eval_input:
	testlist 'testlist' newline_opts {{}}
	;

newline_opts:
	| newline_opts <NEWLINE>
	;

decorator:
	""@"" dotted_name 'dotted_name' paren_arglist_opt 'args' <NEWLINE> {{}}
	;
paren_arglist_opt:
	| <lparen> arglist_opt <rparen> { '2' }
	;
arglist_opt:
	| arglist
	;

decorators:
	decorators decorator 'decorator' {{}}
	| decorator 'decorator' {{}}
	;
decorated:
	decorators 'decorators' classdef 'classdef' {{}}
	| decorators 'decorators' funcdef 'funcdef' {{}}
	;
funcdef:
	""async""? ""def"" <name> 'fname' parameters 'parameters' return_annotation_opt 'returnAnnotation' "":"" suite {{}}
	;
return_annotation_opt
	:
	| ""->"" expr 'typeExpression' {{ReturnTypeAnnotation}}
	;
parameters:
	<lparen> varargslist_opt <rparen> { '2' }
	;
varargslist_opt:
	| varargslist {{VarArgList}}
	;
varargslist:
	fpdef 'arg' type_annotation 'parameterAnnotation'? init_opt 'init' "","" varargslist
	| ""*"" <name> 'sname'
	| ""*"" <name> 'sname' "","" ""**"" <name> 'ssname'
	| ""**"" <name>  'sname'
	| fpdef 'arg' type_annotation 'parameterAnnotation'? init_opt 'init' comma_opt
	;
init_opt:
	| ""="" test 'test' {{}}
	;

fpdef:
	<name> {{}}
	| <lparen> fplist <rparen> {{}}
	;

fplist:
	fpdef 'fpdef' "","" fplist
	| fpdef 'fpdef' comma_opt
	;

stmt:
	simple_stmt 'stmt'
	| compound_stmt 'stmt'
	;

simple_stmt:
	small_stmt 'stmt' "";"" simple_stmt {{}}
	| small_stmt 'stmt' semicolon_opt <NEWLINE> {{}}
	;
semicolon_opt:
	| "";""
	;
expr_stmt: 
	testlist 'testlist' assign_after {{}}
	| testlist 'testlist' augassign 'assign' yield_or_testlist 'to' {{}}
	;
assign_after:
	| assign_after ""="" 'assign' yield_or_testlist 'to'
	;
yield_or_testlist:
	yield_expr
	| testlist
	;
augassign:
	""+=""
	| ""-=""
	| ""*=""
	| ""/=""
	| ""%=""
	| ""&=""
	| ""|=""
	| ""^=""
	| ""<<=""
	| "">>=""
	| ""**=""
	| ""//=""
	;
# For normal assignments, additional restrictions enforced by the interpreter
print_stmt:
	""print"" testlist_opt {{Print}}
	| ""print"" "">>"" testlist 'testlist' {{Print}}
	;
del_stmt:
	""del"" exprlist {{Del}}
	;
pass_stmt:
	""pass"" {{Pass}}
	;
flow_stmt:
	break_stmt
	| continue_stmt
	| return_stmt
	| raise_stmt
	| yield_stmt
	;
break_stmt:
	""break"" {{Break}}
	;
continue_stmt:
	""continue"" {{Continue}}
	;
return_stmt:
	""return"" testlist_opt {{Return}}
	;
yield_stmt:
	yield_expr {{Yield}}
	;
raise_stmt:
	""raise"" {{Raise}}
	| ""raise"" test 'arg1' {{Raise}}
	| ""raise"" test 'arg1' "","" test 'arg2'  {{Raise}}
	| ""raise"" test 'arg1' "","" test 'arg2' "","" test 'arg3' {{Raise}}
	;
import_stmt:
	import_name
	| import_from
	;
import_name:
	""import"" dotted_as_names {{Import}}
	;
import_from:
	""from"" dotopt_dotted_name 'from' ""import"" import_names_star {{Import}}
	;
dotopt_dotted_name:
	dotted_name 'name' {{}}
	| dots 'dots' {{}}
	| dots 'dots' dotted_name 'name' {{}}
	;
dots:
	dots ""."" {{}}
	| ""."" {{}}
	;
import_names_star:
	""*""
	| <lparen> import_as_names <rparen>
	| import_as_names
	;
import_as_name:
	<name> 'name'
	| <name> 'name' ""as"" <name> 'rename'
	;
dotted_as_name:
	dotted_name 'name'
	| dotted_name 'name' ""as"" <name> 'rename'
	;
import_as_names:
	import_as_names_in comma_opt
	;
import_as_names_in:
	import_as_names_in "","" import_as_name
	| import_as_name
	;
dotted_as_names:
	dotted_as_names "","" dotted_as_name
	| dotted_as_name
	;
dotted_name:
	dotted_name ""."" <name> 'name' {{DottedName}}
	| <name> 'name' {{DottedName}}
	;
global_stmt:
	""global"" namelist {{Global}}
	;
namelist:
	namelist "","" <name>
	| <name>
	;
exec_stmt:
	""exec"" expr 'expr' {{Exec}}
	| ""exec"" expr 'expr' ""in"" test_test_opt 'tests_opt' {{Exec}}
	;

test_test_opt:
	test 'test1' {{}}
	| test 'test1' "","" test 'test2' {{}}
	;
assert_stmt:
	""assert"" test_test_opt 'condition' {{Assert}}
	;
small_stmt:
	expr_stmt
	| print_stmt
	| del_stmt
	| pass_stmt
	| flow_stmt
	| import_stmt
	| global_stmt
	| exec_stmt
	| assert_stmt
	;
compound_stmt:
	if_stmt
	| while_stmt
	| for_stmt
	| try_stmt
	| with_stmt
	| funcdef 
	| classdef
	| decorated 
	;
if_stmt:
	""if"" test 'if' "":"" suite elifs_opt 'elsif' else_opt 'else' {{If}}
	;
elifs_opt:
	| elifs_opt 'elifs_opt' ""elif"" test 'elif' "":"" suite {{Elif}}
	;
else_opt:
	| ""else"" "":"" suite {{Else}}
	;

while_stmt:
	""while"" test 'test' "":"" suite else_opt 'else' {{While}}
	;
for_stmt:
	""for"" exprlist ""in"" testlist 'testlist' "":"" suite else_opt 'else' {{For}}
	;
try_stmt:
	""try"" "":"" suite except_list else_opt 'else' finally_opt 'finally' {{Try}}
	| ""try"" "":"" suite ""finally"" "":"" suite {{Try}}
	;
finally_opt:
	| ""finally"" "":"" suite {{Finally}}
	;
except_list:
	except_list except_clause 'clause' "":"" suite
	| except_clause 'clause' "":"" suite
	;
with_stmt:
	""with"" with_items "":"" suite {{With}}
	;
with_items:
	with_items "","" with_item 'withItem'
	| with_item 'withItem'
	;
with_item:
	test 'test' {{WithItem}}
	| test 'test' ""as"" expr 'expr'  {{WithItem}}
	;
# NB compile.c makes sure that the default except clause is last
except_clause: 
	""except"" {{ExceptClause}}
	| ""except"" test 'except' {{ExceptClause}}
	| ""except"" test 'except' ""as"" test 'another' {{ExceptClause}}
	| ""except"" test 'except' "","" test 'except2' {{ExceptClause}}
	;

suite:
	simple_stmt 'statement'
	| <NEWLINE> <INDENT> stmts  <DEDENT>
	;

stmts:
	stmts stmt 'statement'
	| stmt 'statement'
	;

# Backward compatibility cruft to support:
# [ x for x in lambda: True, lambda: False if x() ]
# even while also allowing:
# lambda x: 5 if x else 2
# (But not a mix of the two)
testlist_safe:
	old_test 'test'
	| old_test 'test' "","" old_tests comma_opt
	;
old_tests:
	old_tests "","" old_test 'test'
	| old_test 'test'
	;
old_test:
	or_test
	| old_lambdef
	;
old_lambdef:
	""lambda"" varargslist_opt 'args' "":"" old_test 'body' {{Lambda}}
	;
or_test:
	and_test
	| and_test 'one' ""or"" or_test 'two' {{Or}}
	;
and_test:
	not_test
	| not_test 'one' ""and"" and_test 'two' {{And}}
	;
not_test:
	""not"" not_test 'negated' {{Not}}
	| comparison
	;
comparison:
	expr
	| expr 'one' comp_op 'op' comparison 'two' {{Comparison}}
	;
comp_op:
	""<"" {{}}
	| "">"" {{}}
	| ""=="" {{}}
	| "">="" {{}}
	| ""<="" {{}}
	| ""<>"" {{}}
	| ""!="" {{}}
	| ""in"" {{}}
	| ""not"" ""in"" {{}}
	| ""is"" {{}}
	| ""is"" ""not"" {{}}
	;
expr:
	xor_expr 
	| xor_expr 'one' ""|"" expr 'two' {{VBarExpr}}
	;
xor_expr:
	and_expr
	| and_expr 'one' ""^"" xor_expr  'two' {{XorExpr}}
	;
and_expr:
	shift_expr
	| shift_expr 'one' ""&"" and_expr 'two'  {{AndExpr}}
	;
shift_expr:
	arith_expr
	| arith_expr 'one' ""<<"" shift_expr 'two' {{LShiftExpr}}
	| arith_expr 'one' "">>"" shift_expr 'two' {{RShiftExpr}}
	;
arith_expr:
	term
	| term 'one' ""+"" arith_expr 'two'  {{PlusExpr}}
	| term 'one' ""-"" arith_expr 'two'  {{MinusExpr}}
	;
term:
	factor
	| factor 'factor' ""*"" term 'term'  {{}}
	| factor 'factor' ""/"" term 'term'  {{}}
	| factor 'factor' ""%"" term 'term' {{}}
	| factor 'factor' ""//"" term 'term' {{}}
	;
factor:
	power
	| ""+"" factor 'factor' {{}}
	| ""-"" factor 'factor' {{}}
	| ""~"" factor 'factor' {{}}
	;

power:
    await
	| await ""**"" factor 'factor' {{}}
	;
await
	: trailers
	| ""await"" trailers {{}}
	;
trailers
	: atom
	| atom 'atom' trailer 'trailer'+ {{}}
	;
atom: 
	<lparen> <rparen> {{}}
	| <lparen> yield_expr 'list' <rparen> {{}}
	| <lparen> testlist_comp 'list' <rparen> {{}}
	| <lbrack> <rbrack> {{}}
	| <lbrack> listmaker 'list' <rbrack> {{}}
	| <lcurly> dictorsetmaker 'list' <rcurly> {{}}
	| <lcurly>  <rcurly> {{}}
	| ""`"" testlist1 'list' ""`"" {{BackTick}}
	| <name>  {{Symbol}}
	| <name> type_annotation 'variableAnnotation' {{AnnotatedSymbol}}
	| <number> {{Number}}
	| strings
	;
type_annotation
	: "":"" expr 'typeExpression' {{TypeAnnotation}}
	;
strings:
	string 'string' strings {{Strings}}
	| string 'string'  {{Strings}}
	;
string:
	<string> 'value' {{String}}
	| <fStringWhole> 'value' {{String}}
	| StartFStringSingle <fStringSingleStart> 'part' expr 'expression' (<fStringSingleMid> 'part' expr 'expression')* <fStringSingleEnd> 'part' {{InterpolatedString}}
	| StartFStringDouble <fStringDoubleStart> 'part' expr 'expression' (<fStringDoubleMid> 'part' expr 'expression')* <fStringDoubleEnd> 'part' {{InterpolatedString}}
	| StartFLongStringSingle <fLongStringSingleStart> 'part' expr 'expression' (<fLongStringSingleMid> 'part' expr 'expression')* <fLongStringSingleEnd> 'part' {{InterpolatedString}}
	| StartFLongStringDouble <fLongStringDoubleStart> 'part' expr 'expression' (<fLongStringDoubleMid> 'part' expr 'expression')* <fLongStringDoubleEnd> 'part' {{InterpolatedString}}
	;
StartFStringSingle: [{#fStringSingle. scanner lineJoiningStack copy}];
StartFStringDouble: [{#fStringDouble. scanner lineJoiningStack copy}];
StartFLongStringSingle: [{#fLongStringSingle. scanner lineJoiningStack copy}];
StartFLongStringDouble: [{#fLongStringDouble. scanner lineJoiningStack copy}];
listmaker:
	test 'test' list_for 'list_for' {{}}
	| testlist
	;
testlist_comp:
	test 'test' comp_for 'comp_for' {{}}
	| testlist
	;
lambdef:
	""lambda"" varargslist_opt 'arguments' "":"" test 'body' {{Lambda}}
	;
trailer: 
	<lparen> <rparen> {{}}
	| <lparen> arglist <rparen> {{}}
	| <lbrack> subscriptlist <rbrack> {{}}
	| ""."" <name>  {{}}
	;
subscriptlist:
	subscript 'subscript' "","" subscriptlist
	| subscript 'subscript' comma_opt
	;
subscript:
	""."" ""."" ""."" {{}}
	| test 'test' {{}}
	| test_opt 'test' "":"" test_opt 'test2' sliceop 'slice' {{}}
	;
test_opt:
	| test
	;
sliceop:
	| "":"" test_opt 'test' {{}}
	;

exprlist:
	expr 'expr' "","" exprlist
	| expr 'expr' comma_opt
	;
comma_opt:
	| "",""
	;

test:
	or_test
	| or_test 'or' ""if"" or_test 'if' ""else"" test 'else' {{IfTest}}
	| lambdef
	;
testlist: 
	test 'test' ("","" test 'test')+ comma_opt {{}}
	| test
	| test 'test' "","" {{}}
	;
testlist_opt:
	| testlist 'testlist'
	;
dictorsetmaker: 
	test 'object' "":"" test 'value' comp_for 'comp' {{}}
	| test 'object' "":"" test 'value' more_tests {{}}
	| test 'object' comp_for 'comp' {{}}
	| testlist
	;
more_tests:
	comma_opt
	| "","" test 'object' "":"" test 'value' more_tests
	;
classdef:
	""class"" <name> 'cname' "":"" suite {{Classdef}}
	| ""class"" <name> 'cname' <lparen> testlist_opt<rparen> "":"" suite {{Classdef}}
	;

arglist: 
	argument 'argument' "","" arglist
	| argument 'argument' comma_opt
	| ""*"" test 'argument' more_args
	| ""**"" test 'argument'
	;
more_args:
	| "","" ""**"" test 'argument'
	| "","" argument 'argument' more_args
	;
# The reason that keywords are test nodes instead of <name> is that using <name>
# results in an ambiguity. ast.c makes sure it""s a <name>.
argument:
	test 'test' {{}}
	| test 'test' comp_for 'comp' {{}}
	| test 'test' ""="" test 'test2' {{}}
	;

list_iter:
	list_for
	| list_if
	;
list_for:
	""for"" exprlist ""in"" testlist_safe {{ListFor}}
	| ""for"" exprlist ""in"" testlist_safe list_iter 'list' {{ListFor}}
	;
list_if:
	""if"" old_test 'condition' {{ListIf}}
	| ""if"" old_test 'condition' list_iter 'iter' {{ListIf}}
	;

comp_iter:
	comp_for
	| comp_if
	;

comp_for:
	""for"" exprlist ""in"" or_test 'in' {{CompFor}}
	| ""for"" exprlist ""in"" or_test 'in' comp_iter 'comp' {{CompFor}}
	;
comp_if:
	""if"" old_test 'condition' {{CompIf}}
	| ""if"" old_test 'condition' comp_iter 'iter' {{CompIf}}
	;

testlist1:
	test 'test' "","" testlist1 'tests' {{}}
	| test 'test'
	;

# not used in grammar, but may appear in ""node"" passed from Parser to Compiler
#encoding_decl: <name> ;

yield_expr:
	""yield"" testlist_opt {{Yield}}
	;"
]

{ #category : #accessing }
PythonParser class >> eval: aString [
	^self parse: aString startingAt: self startingStateForeval_input
]

{ #category : #'file types' }
PythonParser class >> fileExtension [
	^ '.py'
]

{ #category : #generated }
PythonParser class >> reduceTable [
^#(
	#(104 0 #reduceActionForfile_input1: 4584449 false) 
	#(202 0 #reduceActionForStartFStringSingle1: 13270017 true) 
	#(203 0 #reduceActionForStartFStringDouble1: 13342721 true) 
	#(204 0 #reduceActionForStartFLongStringSingle1: 13415425 true) 
	#(205 0 #reduceActionForStartFLongStringDouble1: 13496321 true) 
	#(132 1 #reduceActionForbreak_stmt1: 6917121 false) 
	#(133 1 #reduceActionForcontinue_stmt1: 6951937 false) 
	#(116 0 #nil 5540865 false) 
	#(130 1 #reduceActionForpass_stmt1: 6797313 false) 
	#(220 0 #nil 14479361 false) 
	#(136 1 #reduceActionForraise_stmt1: 7085057 false) 
	#(190 1 #reduceActionForatom9: 11891721 false) 
	#(193 1 #reduceActionForstring1: 12486657 false) 
	#(193 1 #reduceActionForstring1: 12486658 false) 
	#(190 1 #reduceActionForatom11: 11891723 false) 
	#(105 1 #reduceActionForsingle_input1: 4672513 false) 
	#(111 1 #reduceActionFordecorators2: 5067778 false) 
	#(155 1 #liftFirstValue: 8636424 false) 
	#(155 1 #liftFirstValue: 8636422 false) 
	#(105 1 #reduceActionForsingle_input2: 4672514 false) 
	#(154 1 #liftFirstValue: 8497153 false) 
	#(154 1 #liftFirstValue: 8497154 false) 
	#(154 1 #liftFirstValue: 8497155 false) 
	#(154 1 #liftFirstValue: 8497156 false) 
	#(154 1 #liftFirstValue: 8497157 false) 
	#(131 1 #liftFirstValue: 6829057 false) 
	#(131 1 #liftFirstValue: 6829058 false) 
	#(131 1 #liftFirstValue: 6829059 false) 
	#(131 1 #liftFirstValue: 6829061 false) 
	#(131 1 #liftFirstValue: 6829060 false) 
	#(154 1 #liftFirstValue: 8497158 false) 
	#(137 1 #liftFirstValue: 7271425 false) 
	#(137 1 #liftFirstValue: 7271426 false) 
	#(154 1 #liftFirstValue: 8497159 false) 
	#(154 1 #liftFirstValue: 8497160 false) 
	#(154 1 #liftFirstValue: 8497161 false) 
	#(123 0 #nil 6199297 false) 
	#(155 1 #liftFirstValue: 8636417 false) 
	#(155 1 #liftFirstValue: 8636418 false) 
	#(155 1 #liftFirstValue: 8636419 false) 
	#(155 1 #liftFirstValue: 8636420 false) 
	#(155 1 #liftFirstValue: 8636421 false) 
	#(216 1 #liftFirstValue: 14288897 false) 
	#(174 1 #liftFirstValue: 10499073 false) 
	#(175 1 #liftFirstValue: 10566657 false) 
	#(176 1 #liftFirstValue: 10638338 false) 
	#(177 1 #liftFirstValue: 10700801 false) 
	#(179 1 #liftFirstValue: 10949633 false) 
	#(180 1 #liftFirstValue: 11017217 false) 
	#(181 1 #liftFirstValue: 11091969 false) 
	#(182 1 #liftFirstValue: 11170817 false) 
	#(183 1 #liftFirstValue: 11315201 false) 
	#(184 1 #liftFirstValue: 11438081 false) 
	#(185 1 #liftFirstValue: 11622401 false) 
	#(186 1 #liftFirstValue: 11727873 false) 
	#(187 1 #liftFirstValue: 11784193 false) 
	#(188 1 #liftFirstValue: 11831297 false) 
	#(190 1 #liftFirstValue: 11891724 false) 
	#(192 1 #reduceActionForstrings2: 12403714 false) 
	#(216 1 #liftFirstValue: 14288899 false) 
	#(217 1 #liftFirstValue: 14384130 false) 
	#(125 0 #reduceActionForassign_after1: 6351873 false) 
	#(155 1 #liftFirstValue: 8636423 false) 
	#(135 1 #reduceActionForyield_stmt1: 7047169 false) 
	#(107 0 #reduceActionFornewline_opts1: 4842497 false) 
	#(104 2 #reduceActionForfile_input2: 4584450 false) 
	#(104 2 #reduceActionForfile_input3: 4584451 false) 
	#(121 1 #liftFirstValue: 6035457 false) 
	#(121 1 #liftFirstValue: 6035458 false) 
	#(185 2 #reduceActionForfactor2: 11622402 false) 
	#(185 2 #reduceActionForfactor3: 11622403 false) 
	#(148 1 #reduceActionFordotted_name2: 8058882 false) 
	#(109 0 #nil 4974593 false) 
	#(233 1 #liftFirstValue: 15938562 false) 
	#(153 2 #reduceActionForassert_stmt1: 8432641 false) 
	#(152 1 #reduceActionFortest_test_opt1: 8355841 false) 
	#(187 2 #reduceActionForawait2: 11784194 false) 
	#(215 0 #nil 14266369 false) 
	#(129 2 #reduceActionFordel_stmt1: 6759425 false) 
	#(151 2 #reduceActionForexec_stmt1: 8247297 false) 
	#(141 1 #reduceActionFordots2: 7570434 false) 
	#(140 1 #reduceActionFordotopt_dotted_name2: 7460866 false) 
	#(140 1 #reduceActionFordotopt_dotted_name1: 7460865 false) 
	#(150 1 #reduceActionFornamelist2: 8202242 false) 
	#(149 2 #reduceActionForglobal_stmt1: 8155137 false) 
	#(147 1 #reduceActionFordotted_as_names2: 7983106 false) 
	#(138 2 #reduceActionForimport_name1: 7316481 false) 
	#(144 1 #reduceActionFordotted_as_name1: 7766017 false) 
	#(119 1 #reduceActionForfpdef1: 5910529 false) 
	#(116 1 #reduceActionForvarargslist_opt2: 5540866 false) 
	#(118 0 #nil 5871617 false) 
	#(176 2 #reduceActionFornot_test1: 10638337 false) 
	#(220 1 #liftFirstValue: 14479362 false) 
	#(128 2 #reduceActionForprint_stmt1: 6664193 false) 
	#(136 2 #reduceActionForraise_stmt2: 7085058 false) 
	#(134 2 #reduceActionForreturn_stmt1: 6995969 false) 
	#(165 1 #reduceActionFornamelist2: 9466882 false) 
	#(166 1 #reduceActionForwith_item1: 9544705 false) 
	#(234 2 #reduceActionForyield_expr1: 16117761 false) 
	#(185 2 #reduceActionForfactor4: 11622404 false) 
	#(190 2 #reduceActionForatom10: 11891722 false) 
	#(190 2 #reduceActionForatom1: 11891713 false) 
	#(207 1 #liftFirstValue: 13642754 false) 
	#(190 2 #reduceActionForatom4: 11891716 false) 
	#(206 1 #liftFirstValue: 13577218 false) 
	#(190 2 #reduceActionForatom7: 11891719 false) 
	#(221 1 #liftFirstValue: 14520324 false) 
	#(111 2 #reduceActionFordecorators1: 5067777 false) 
	#(112 2 #reduceActionFordecorated2: 5153794 false) 
	#(112 2 #reduceActionFordecorated1: 5153793 false) 
	#(123 1 #liftFirstValue: 6199298 false) 
	#(105 2 #reduceActionForsingle_input3: 4672515 false) 
	#(178 1 #reduceActionForcomp_op7: 10782727 false) 
	#(178 1 #reduceActionForcomp_op1: 10782721 false) 
	#(178 1 #reduceActionForcomp_op5: 10782725 false) 
	#(178 1 #reduceActionForcomp_op6: 10782726 false) 
	#(178 1 #reduceActionForcomp_op3: 10782723 false) 
	#(178 1 #reduceActionForcomp_op2: 10782722 false) 
	#(178 1 #reduceActionForcomp_op4: 10782724 false) 
	#(178 1 #reduceActionForcomp_op8: 10782728 false) 
	#(178 1 #reduceActionForcomp_op10: 10782730 false) 
	#(212 0 #nil 14137345 false) 
	#(188 2 #reduceActionFortrailers2: 11831298 false) 
	#(189 1 #reduceActionFortrailer__trailer__1: 11864065 false) 
	#(192 2 #reduceActionForstrings1: 12403713 false) 
	#(217 2 #reduceActionFortestlist3: 14384131 false) 
	#(219 1 #reduceActionFor_____test__test___1: 14408705 false) 
	#(127 1 #liftFirstValue: 6469637 false) 
	#(127 1 #liftFirstValue: 6469638 false) 
	#(127 1 #liftFirstValue: 6469643 false) 
	#(127 1 #liftFirstValue: 6469635 false) 
	#(127 1 #liftFirstValue: 6469633 false) 
	#(127 1 #liftFirstValue: 6469634 false) 
	#(127 1 #liftFirstValue: 6469644 false) 
	#(127 1 #liftFirstValue: 6469636 false) 
	#(127 1 #liftFirstValue: 6469641 false) 
	#(127 1 #liftFirstValue: 6469642 false) 
	#(127 1 #liftFirstValue: 6469640 false) 
	#(127 1 #liftFirstValue: 6469639 false) 
	#(124 2 #reduceActionForexpr_stmt1: 6224897 false) 
	#(106 2 #reduceActionForeval_input1: 4786177 false) 
	#(110 0 #nil 5039105 false) 
	#(190 3 #reduceActionForatom8: 11891720 false) 
	#(114 0 #nil 5396481 false) 
	#(215 1 #liftFirstValue: 14266370 false) 
	#(214 2 #reduceActionForexprlist2: 14200834 false) 
	#(141 2 #reduceActionFordots1: 7570433 false) 
	#(140 2 #reduceActionFordotopt_dotted_name3: 7460867 false) 
	#(117 2 #reduceActionForvarargslist3: 5592067 false) 
	#(117 2 #reduceActionForvarargslist5: 5592069 false) 
	#(128 3 #reduceActionForprint_stmt2: 6664194 false) 
	#(168 1 #reduceActionForsuite1: 9919489 false) 
	#(191 2 #reduceActionFortype_annotation1: 12335105 false) 
	#(190 3 #reduceActionForatom3: 11891715 false) 
	#(207 2 #reduceActionFortestlist_comp1: 13642753 false) 
	#(190 3 #reduceActionForatom3: 11891714 false) 
	#(190 3 #reduceActionForatom5: 11891717 false) 
	#(206 2 #reduceActionForlistmaker1: 13577217 false) 
	#(221 2 #reduceActionFordictorsetmaker3: 14520323 false) 
	#(190 3 #reduceActionForatom6: 11891718 false) 
	#(122 3 #reduceActionForsimple_stmt1: 6090753 false) 
	#(122 3 #reduceActionForsimple_stmt2: 6090754 false) 
	#(174 3 #reduceActionForor_test2: 10499074 false) 
	#(175 3 #reduceActionForand_test2: 10566658 false) 
	#(178 2 #reduceActionForcomp_op11: 10782731 false) 
	#(178 2 #reduceActionForcomp_op9: 10782729 false) 
	#(177 3 #reduceActionForcomparison2: 10700802 false) 
	#(179 3 #reduceActionForexpr2: 10949634 false) 
	#(180 3 #reduceActionForxor_expr2: 11017218 false) 
	#(181 3 #reduceActionForand_expr2: 11091970 false) 
	#(182 3 #reduceActionForshift_expr2: 11170818 false) 
	#(182 3 #reduceActionForshift_expr3: 11170819 false) 
	#(183 3 #reduceActionForarith_expr2: 11315202 false) 
	#(183 3 #reduceActionForarith_expr3: 11315203 false) 
	#(184 3 #reduceActionForterm4: 11438084 false) 
	#(184 3 #reduceActionForterm2: 11438082 false) 
	#(184 3 #reduceActionForterm3: 11438083 false) 
	#(184 3 #reduceActionForterm5: 11438085 false) 
	#(186 3 #reduceActionForpower2: 11727874 false) 
	#(209 2 #reduceActionFortrailer4: 13791236 false) 
	#(209 2 #reduceActionFortrailer1: 13791233 false) 
	#(226 1 #reduceActionForargument1: 15281153 false) 
	#(211 1 #reduceActionForsubscript2: 14021634 false) 
	#(212 1 #liftFirstValue: 14137346 false) 
	#(189 2 #reduceActionFortrailer__trailer__2: 11864066 false) 
	#(195 0 #reduceActionForassign_after1: 12632065 false) 
	#(197 0 #reduceActionForassign_after1: 12800001 false) 
	#(199 0 #reduceActionForassign_after1: 12976129 false) 
	#(201 0 #reduceActionForassign_after1: 13160449 false) 
	#(218 2 #reduceActionFor_____test__test__1: 14408705 false) 
	#(217 3 #reduceActionFortestlist1: 14384129 false) 
	#(219 2 #reduceActionFor_____test__test___2: 14408706 false) 
	#(124 3 #reduceActionForexpr_stmt2: 6224898 false) 
	#(126 1 #liftFirstValue: 6422530 false) 
	#(126 1 #liftFirstValue: 6422529 false) 
	#(107 2 #reduceActionFortrailer__trailer__2: 4842498 false) 
	#(148 3 #reduceActionFordotted_name1: 8058881 false) 
	#(110 1 #liftFirstValue: 5039106 false) 
	#(108 4 #reduceActionFordecorator1: 4887553 false) 
	#(233 3 #reduceActionFortestlist11: 15938561 false) 
	#(152 3 #reduceActionFortest_test_opt2: 8355842 false) 
	#(223 4 #reduceActionForclassdef1: 14774273 false) 
	#(214 3 #reduceActionForexprlist1: 14200833 false) 
	#(151 4 #reduceActionForexec_stmt2: 8247298 false) 
	#(142 1 #reduceActionForimport_names_star1: 7607297 false) 
	#(143 1 #reduceActionFordotted_as_name1: 7692289 false) 
	#(139 4 #reduceActionForimport_from1: 7370753 false) 
	#(146 1 #reduceActionFordotted_as_names2: 7901186 false) 
	#(142 1 #reduceActionForimport_names_star3: 7607299 false) 
	#(150 3 #reduceActionFornamelist1: 8202241 false) 
	#(157 0 #nil 8836097 false) 
	#(147 3 #reduceActionFordotted_as_names1: 7983105 false) 
	#(144 3 #reduceActionFordotted_as_name2: 7766018 false) 
	#(120 2 #reduceActionForexprlist2: 5968898 false) 
	#(119 3 #reduceActionForfpdef2: 5910530 false) 
	#(208 4 #reduceActionForlambdef1: 13712385 false) 
	#(118 2 #reduceActionForinit_opt2: 5871618 false) 
	#(117 3 #reduceActionForvarargslist6: 5592070 false) 
	#(136 4 #reduceActionForraise_stmt3: 7085059 false) 
	#(167 1 #reduceActionForexcept_clause1: 9699329 false) 
	#(158 0 #nil 8914945 false) 
	#(165 3 #reduceActionFornamelist1: 9466881 false) 
	#(164 4 #reduceActionForwith_stmt1: 9413633 false) 
	#(166 3 #reduceActionForwith_item2: 9544706 false) 
	#(225 0 #reduceActionFormore_args1: 15056897 false) 
	#(224 2 #reduceActionForarglist4: 14917636 false) 
	#(226 2 #reduceActionForargument2: 15281154 false) 
	#(209 3 #reduceActionFortrailer2: 13791234 false) 
	#(224 2 #reduceActionForarglist2: 14917634 false) 
	#(209 3 #reduceActionFortrailer3: 13791235 false) 
	#(210 2 #reduceActionForexprlist2: 13925378 false) 
	#(125 3 #reduceActionFornamelist1: 6351874 false) 
	#(109 3 #liftSecondValue: 4974594 false) 
	#(115 3 #liftSecondValue: 5481473 false) 
	#(114 2 #reduceActionForreturn_annotation_opt2: 5396482 false) 
	#(145 2 #reduceActionForimport_as_names1: 7849985 false) 
	#(120 3 #reduceActionForexprlist1: 5968897 false) 
	#(117 4 #reduceActionForvarargslist1: 5592065 false) 
	#(117 4 #reduceActionForvarargslist7: 5592071 false) 
	#(169 1 #reduceActionFortrailer__trailer__1: 9995266 false) 
	#(167 2 #reduceActionForexcept_clause2: 9699330 false) 
	#(162 0 #nil 9261057 false) 
	#(159 5 #reduceActionForwhile_stmt1: 8958977 false) 
	#(222 1 #reduceActionFormore_tests1: 14697473 false) 
	#(221 4 #reduceActionFordictorsetmaker2: 14520322 false) 
	#(221 4 #reduceActionFordictorsetmaker1: 14520321 false) 
	#(216 5 #reduceActionFortest2: 14288898 false) 
	#(224 3 #reduceActionForarglist3: 14917635 false) 
	#(226 3 #reduceActionForargument3: 15281155 false) 
	#(224 3 #reduceActionForexprlist1: 14917633 false) 
	#(211 3 #reduceActionForsubscript1: 14021633 false) 
	#(210 3 #reduceActionForexprlist1: 13925377 false) 
	#(213 0 #nil 14158849 false) 
	#(193 5 #reduceActionForstring3: 12486659 false) 
	#(195 2 #reduceActionFor_____test__test___2: 12632066 false) 
	#(193 5 #reduceActionForstring3: 12486660 false) 
	#(197 2 #reduceActionFor_____test__test___2: 12800002 false) 
	#(193 5 #reduceActionForstring3: 12486661 false) 
	#(199 2 #reduceActionFor_____test__test___2: 12976130 false) 
	#(193 5 #reduceActionForstring3: 12486662 false) 
	#(201 2 #reduceActionFor_____test__test___2: 13160450 false) 
	#(113 6 #reduceActionForfuncdef1: 5270529 false) 
	#(143 3 #reduceActionFordotted_as_name2: 7692290 false) 
	#(142 3 #reduceActionForimport_names_star2: 7607298 false) 
	#(146 3 #reduceActionFordotted_as_names1: 7901185 false) 
	#(156 6 #reduceActionForif_stmt1: 8755201 false) 
	#(117 5 #reduceActionForvarargslist4: 5592068 false) 
	#(117 5 #reduceActionForvarargslist2: 5592066 false) 
	#(136 6 #reduceActionForraise_stmt4: 7085060 false) 
	#(169 2 #reduceActionFortrailer__trailer__2: 9995265 false) 
	#(168 4 #reduceActionForsuite2: 9919490 false) 
	#(161 6 #reduceActionFortry_stmt2: 9122818 false) 
	#(161 6 #reduceActionFortry_stmt1: 9122817 false) 
	#(163 3 #reduceActionForexcept_list2: 9313282 false) 
	#(231 4 #reduceActionForcomp_for1: 15700993 false) 
	#(228 4 #reduceActionForlist_for1: 15424513 false) 
	#(170 1 #reduceActionFortestlist_safe1: 10233857 false) 
	#(172 1 #liftFirstValue: 10379266 false) 
	#(172 1 #liftFirstValue: 10379265 false) 
	#(211 4 #reduceActionForsubscript3: 14021635 false) 
	#(194 2 #reduceActionFor_____test__test__1: 12632065 false) 
	#(196 2 #reduceActionFor_____test__test__1: 12800001 false) 
	#(198 2 #reduceActionFor_____test__test__1: 12976129 false) 
	#(200 2 #reduceActionFor_____test__test__1: 13160449 false) 
	#(113 7 #reduceActionForfuncdef2: 5270530 false) 
	#(223 7 #reduceActionForclassdef2: 14774274 false) 
	#(160 7 #reduceActionForfor_stmt1: 9032705 false) 
	#(167 4 #reduceActionForexcept_clause4: 9699332 false) 
	#(167 4 #reduceActionForexcept_clause3: 9699331 false) 
	#(158 3 #reduceActionForelse_opt2: 8914946 false) 
	#(163 4 #reduceActionForexcept_list1: 9313281 false) 
	#(231 5 #reduceActionForcomp_for2: 15700994 false) 
	#(230 1 #liftFirstValue: 15664129 false) 
	#(230 1 #liftFirstValue: 15664130 false) 
	#(228 5 #reduceActionForlist_for2: 15424514 false) 
	#(227 1 #liftFirstValue: 15388673 false) 
	#(227 1 #liftFirstValue: 15388674 false) 
	#(225 3 #reduceActionFormore_args2: 15056898 false) 
	#(225 3 #reduceActionFormore_args3: 15056899 false) 
	#(213 2 #reduceActionForsliceop2: 14158850 false) 
	#(162 3 #reduceActionForfinally_opt2: 9261058 false) 
	#(232 2 #reduceActionForcomp_if1: 15827969 false) 
	#(229 2 #reduceActionForlist_if1: 15553537 false) 
	#(171 1 #reduceActionFornamelist2: 10313730 false) 
	#(157 5 #reduceActionForelifs_opt2: 8836098 false) 
	#(232 3 #reduceActionForcomp_if2: 15827970 false) 
	#(173 4 #reduceActionForold_lambdef1: 10417153 false) 
	#(229 3 #reduceActionForlist_if2: 15553538 false) 
	#(170 4 #reduceActionFortestlist_safe2: 10233858 false) 
	#(222 5 #reduceActionFormore_tests2: 14697474 false) 
	#(171 3 #reduceActionFornamelist1: 10313729 false)
	).
]

{ #category : #'generated-accessing' }
PythonParser class >> scannerClass [
	^PythonScanner
]

{ #category : #generated }
PythonParser class >> startingStateForeval_input [
	^ 3
]

{ #category : #generated }
PythonParser class >> startingStateForfile_input [
	^ 1
]

{ #category : #generated }
PythonParser class >> startingStateForsingle_input [
	^ 2
]

{ #category : #generated }
PythonParser class >> symbolNames [
	^ #('"!="' '"%"' '"%="' '"&"' '"&="' '"*"' '"**"' '"**="' '"*="' '"+"' '"+="' '","' '"-"' '"-="' '"->"' '"."' '"/"' '"//"' '"//="' '"/="' '":"' '";"' '"<"' '"<<"' '"<<="' '"<="' '"<>"' '"="' '"=="' '">"' '">="' '">>"' '">>="' '"@"' '"^"' '"^="' '"`"' '"and"' '"as"' '"assert"' '"async"' '"await"' '"break"' '"class"' '"continue"' '"def"' '"del"' '"elif"' '"else"' '"except"' '"exec"' '"finally"' '"for"' '"from"' '"global"' '"if"' '"import"' '"in"' '"is"' '"lambda"' '"not"' '"or"' '"pass"' '"print"' '"raise"' '"return"' '"try"' '"while"' '"with"' '"yield"' '"|"' '"|="' '"~"' '<name>' '<string>' '<fStringWhole>' '<fStringSingleStart>' '<fStringSingleMid>' '<fStringSingleEnd>' '<fStringDoubleStart>' '<fStringDoubleMid>' '<fStringDoubleEnd>' '<fLongStringSingleStart>' '<fLongStringSingleMid>' '<fLongStringSingleEnd>' '<fLongStringDoubleStart>' '<fLongStringDoubleMid>' '<fLongStringDoubleEnd>' '<number>' '<emptyLine>' '<blankLine>' '<indent>' '<noindent>' '<comment>' '<whitespace>' '<NEWLINE>' '<lparen>' '<rparen>' '<lbrack>' '<rbrack>' '<lcurly>' '<rcurly>' 'B e g i n' 'file_input' 'single_input' 'eval_input' 'newline_opts' 'decorator' 'paren_arglist_opt' 'arglist_opt' 'decorators' 'decorated' 'funcdef' 'return_annotation_opt' 'parameters' 'varargslist_opt' 'varargslist' 'init_opt' 'fpdef' 'fplist' 'stmt' 'simple_stmt' 'semicolon_opt' 'expr_stmt' 'assign_after' 'yield_or_testlist' 'augassign' 'print_stmt' 'del_stmt' 'pass_stmt' 'flow_stmt' 'break_stmt' 'continue_stmt' 'return_stmt' 'yield_stmt' 'raise_stmt' 'import_stmt' 'import_name' 'import_from' 'dotopt_dotted_name' 'dots' 'import_names_star' 'import_as_name' 'dotted_as_name' 'import_as_names' 'import_as_names_in' 'dotted_as_names' 'dotted_name' 'global_stmt' 'namelist' 'exec_stmt' 'test_test_opt' 'assert_stmt' 'small_stmt' 'compound_stmt' 'if_stmt' 'elifs_opt' 'else_opt' 'while_stmt' 'for_stmt' 'try_stmt' 'finally_opt' 'except_list' 'with_stmt' 'with_items' 'with_item' 'except_clause' 'suite' 'stmts' 'testlist_safe' 'old_tests' 'old_test' 'old_lambdef' 'or_test' 'and_test' 'not_test' 'comparison' 'comp_op' 'expr' 'xor_expr' 'and_expr' 'shift_expr' 'arith_expr' 'term' 'factor' 'power' 'await' 'trailers' 'trailer ''trailer''+' 'atom' 'type_annotation' 'strings' 'string' '(<fStringSingleMid> ''part'' expr ''expression'')' '(<fStringSingleMid> ''part'' expr ''expression'')*' '(<fStringDoubleMid> ''part'' expr ''expression'')' '(<fStringDoubleMid> ''part'' expr ''expression'')*' '(<fLongStringSingleMid> ''part'' expr ''expression'')' '(<fLongStringSingleMid> ''part'' expr ''expression'')*' '(<fLongStringDoubleMid> ''part'' expr ''expression'')' '(<fLongStringDoubleMid> ''part'' expr ''expression'')*' 'StartFStringSingle' 'StartFStringDouble' 'StartFLongStringSingle' 'StartFLongStringDouble' 'listmaker' 'testlist_comp' 'lambdef' 'trailer' 'subscriptlist' 'subscript' 'test_opt' 'sliceop' 'exprlist' 'comma_opt' 'test' 'testlist' '("," test ''test'')' '("," test ''test'')+' 'testlist_opt' 'dictorsetmaker' 'more_tests' 'classdef' 'arglist' 'more_args' 'argument' 'list_iter' 'list_for' 'list_if' 'comp_iter' 'comp_for' 'comp_if' 'testlist1' 'yield_expr' '<DEDENT>' '<INDENT>' 'E O F' 'error')
]

{ #category : #generated }
PythonParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #PyFileInputNode #PyFileInputNode #PySingleInputNode #PyEvalInputNode #OrderedCollection #PyDecoratorNode #OrderedCollection #OrderedCollection #PyDecoratorsNode #PyDecoratedNode #PyFuncdefNode #PyReturnTypeAnnotationNode #PyVarArgListNode #PyVarArgListNode #OrderedCollection #PyInitOptNode #PyFpdefNode #OrderedCollection #PyRootNode #PySimpleStmtNode #SmaCCToken #PyExprStmtNode #OrderedCollection #PyRootNode #SmaCCToken #PyPrintNode #PyDelNode #PyPassNode #PyRootNode #PyBreakNode #PyContinueNode #PyReturnNode #PyYieldNode #PyRaiseNode #PyImportNode #PyImportNode #PyImportNode #PyDotoptDottedNameNode #PyDotsNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyDottedNameNode #PyGlobalNode #OrderedCollection #PyExecNode #PyTestTestOptNode #PyAssertNode #PyRootNode #PyRootNode #PyIfNode #PyElifNode #PyElseNode #PyWhileNode #PyForNode #PyTryNode #PyFinallyNode #OrderedCollection #PyWithNode #OrderedCollection #PyWithItemNode #PyExceptClauseNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyRootNode #PyLambdaNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyCompOpNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #OrderedCollection #PyRootNode #PyTypeAnnotationNode #PyStringsNode #PyRootNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #Array #Array #Array #Array #PyRootNode #PyRootNode #PyLambdaNode #PyTrailerNode #OrderedCollection #PySubscriptNode #PyRootNode #PySliceopNode #OrderedCollection #SmaCCToken #PyRootNode #PyRootNode #OrderedCollection #OrderedCollection #PyRootNode #PyRootNode #OrderedCollection #PyClassdefNode #OrderedCollection #OrderedCollection #PyArgumentNode #PyRootNode #PyListForNode #PyListIfNode #PyRootNode #PyCompForNode #PyCompIfNode #PyRootNode #PyYieldNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
PythonParser class >> transitionTable [
^#(
#[1 0 6 0 10 0 6 0 13 0 6 0 34 0 6 0 37 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 51 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 56 0 6 0 57 0 6 0 60 0 6 0 61 0 6 0 63 0 6 0 64 0 6 0 65 0 6 0 66 0 6 0 67 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 73 0 6 0 74 0 6 0 75 0 6 0 76 0 6 0 77 0 6 0 80 0 6 0 83 0 6 0 86 0 6 0 89 0 6 0 96 0 6 0 97 0 6 0 99 0 6 0 101 0 17 0 104 0 6 0 237] 
#[1 0 21 0 10 0 25 0 13 0 29 0 34 0 33 0 37 0 37 0 40 0 41 0 41 0 45 0 42 0 49 0 43 0 53 0 44 0 57 0 45 0 61 0 46 0 65 0 47 0 69 0 51 0 73 0 53 0 77 0 54 0 81 0 55 0 85 0 56 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 117 0 67 0 121 0 68 0 125 0 69 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 153 0 96 0 157 0 97 0 161 0 99 0 165 0 101 0 169 0 105 0 173 0 108 0 177 0 111 1 5 0 112 1 5 0 113 0 189 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 1 5 0 155 1 5 0 156 1 5 0 159 1 5 0 160 1 5 0 161 1 5 0 164 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 5 0 223 1 129 0 234] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 133 0 106 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 137 0 217] 
#[1 0 21 0 10 0 25 0 13 0 29 0 34 0 33 0 37 0 37 0 40 0 41 0 41 0 45 0 42 0 49 0 43 0 53 0 44 0 57 0 45 0 61 0 46 0 65 0 47 0 69 0 51 0 73 0 53 0 77 0 54 0 81 0 55 0 85 0 56 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 117 0 67 0 121 0 68 0 125 0 69 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 1 141 0 96 0 157 0 97 0 161 0 99 0 165 0 101 0 173 0 108 0 177 0 111 1 145 0 112 1 145 0 113 1 145 0 121 1 145 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 1 145 0 155 1 145 0 156 1 145 0 159 1 145 0 160 1 145 0 161 1 145 0 164 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 145 0 223 1 129 0 234 0 0 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 157 0 185 1 157 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 161 0 185 1 161 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 1 165 0 74 1 169 0 148] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 173 0 208 1 173 0 216 1 177 0 233] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 181 0 152 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 185 0 208 1 185 0 216] 
#[0 1 189 0 46] 
#[1 0 33 0 37 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 193 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 0 26 0 22 0 96] 
#[0 1 197 0 74] 
#[0 0 30 0 22 0 96] 
#[0 1 201 0 74] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 205 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 209 0 214] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 213 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 205 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 217 0 214] 
#[1 1 221 0 16 1 165 0 74 1 225 0 140 1 229 0 141 1 233 0 148] 
#[1 1 237 0 74 1 241 0 150] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 245 0 208 1 245 0 216] 
#[1 1 165 0 74 1 249 0 144 1 253 0 147 2 1 0 148] 
#[1 2 5 0 6 2 9 0 7 0 34 0 21 2 13 0 74 2 17 0 97 2 21 0 116 2 25 0 117 2 29 0 119] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 2 33 0 176 2 33 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 0 38 0 22 0 96] 
#[1 0 21 0 10 0 25 0 13 0 42 0 22 2 37 0 32 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 42 0 96 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 2 45 0 217 2 45 0 220] 
#[1 0 21 0 10 0 25 0 13 0 46 0 22 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 46 0 96 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 2 49 0 208 2 49 0 216] 
#[1 0 21 0 10 0 25 0 13 0 42 0 22 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 42 0 96 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 2 53 0 217 2 53 0 220] 
#[0 2 57 0 21] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 2 61 0 208 2 61 0 216] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 2 65 0 165 2 69 0 166 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 2 73 0 208 2 73 0 216] 
#[1 0 21 0 10 0 25 0 13 0 42 0 22 0 42 0 28 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 42 0 96 0 157 0 97 0 42 0 98 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 2 77 0 217 2 77 0 220] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 2 81 0 185 2 81 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 50 0 1 0 50 0 2 0 50 0 3 0 50 0 4 0 50 0 5 0 50 0 6 0 50 0 7 0 50 0 8 0 50 0 9 0 50 0 10 0 50 0 11 0 50 0 12 0 50 0 13 0 50 0 14 0 50 0 16 0 50 0 17 0 50 0 18 0 50 0 19 0 50 0 20 0 7 0 21 0 50 0 22 0 50 0 23 0 50 0 24 0 50 0 25 0 50 0 26 0 50 0 27 0 50 0 28 0 50 0 29 0 50 0 30 0 50 0 31 0 50 0 32 0 50 0 33 0 50 0 35 0 50 0 36 0 50 0 37 0 50 0 38 0 50 0 39 0 50 0 49 0 50 0 53 0 50 0 56 0 50 0 58 0 50 0 59 0 50 0 61 0 50 0 62 0 50 0 71 0 50 0 72 0 50 0 78 0 50 0 79 0 50 0 81 0 50 0 82 0 50 0 84 0 50 0 85 0 50 0 87 0 50 0 88 0 50 0 96 0 50 0 97 0 50 0 98 0 50 0 99 0 50 0 100 0 50 0 102 2 89 0 191 0 50 0 237] 
#[0 0 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 0 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 0 66 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 2 93 0 98 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 2 97 0 207 2 101 0 208 2 101 0 216 2 97 0 217 2 109 0 234] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 2 113 0 100 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 2 117 0 206 2 121 0 208 2 121 0 216 2 117 0 217] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 2 129 0 102 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 2 133 0 208 2 133 0 216 2 141 0 217 2 141 0 221] 
#[0 0 0 0 237] 
#[0 0 70 0 34 0 41 0 44 0 46] 
#[1 0 29 0 34 0 41 0 41 0 53 0 44 0 61 0 46 2 145 0 108 2 149 0 113 2 153 0 223] 
#[0 0 74 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 0 78 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 0 82 0 237] 
#[0 0 86 0 22 0 96] 
#[0 0 90 0 22 0 96] 
#[0 0 94 0 22 0 96] 
#[0 0 98 0 22 0 96] 
#[0 0 102 0 22 0 96] 
#[0 0 106 0 22 0 96] 
#[0 0 110 0 22 0 96] 
#[0 0 114 0 22 0 96] 
#[0 0 118 0 22 0 96] 
#[0 0 122 0 22 0 96] 
#[0 0 126 0 22 0 96] 
#[0 0 130 0 22 0 96] 
#[0 0 134 0 22 0 96] 
#[0 0 138 0 22 0 96] 
#[0 0 142 0 22 0 96] 
#[0 0 146 0 22 0 96] 
#[1 2 157 0 22 0 150 0 96 2 161 0 123] 
#[0 2 165 0 96] 
#[0 0 154 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 0 158 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 0 162 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 0 166 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 0 170 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[1 0 174 0 3 0 174 0 5 0 174 0 8 0 174 0 9 0 174 0 11 0 174 0 12 0 174 0 14 0 174 0 19 0 174 0 20 0 174 0 21 0 174 0 22 0 174 0 25 0 174 0 28 0 174 0 33 0 174 0 36 0 174 0 37 0 174 0 39 0 174 0 53 2 169 0 56 0 174 0 72 0 174 0 96 0 174 0 98 0 174 0 100 0 174 0 102 0 174 0 237] 
#[1 0 178 0 3 0 178 0 5 0 178 0 8 0 178 0 9 0 178 0 11 0 178 0 12 0 178 0 14 0 178 0 19 0 178 0 20 0 178 0 21 0 178 0 22 0 178 0 25 0 178 0 28 0 178 0 33 0 178 0 36 0 178 0 37 0 178 0 39 0 178 0 49 0 178 0 53 0 178 0 56 2 173 0 62 0 178 0 72 0 178 0 96 0 178 0 98 0 178 0 100 0 178 0 102 0 178 0 237] 
#[1 0 182 0 3 0 182 0 5 0 182 0 8 0 182 0 9 0 182 0 11 0 182 0 12 0 182 0 14 0 182 0 19 0 182 0 20 0 182 0 21 0 182 0 22 0 182 0 25 0 182 0 28 0 182 0 33 0 182 0 36 0 182 0 37 2 177 0 38 0 182 0 39 0 182 0 49 0 182 0 53 0 182 0 56 0 182 0 62 0 182 0 72 0 182 0 96 0 182 0 98 0 182 0 100 0 182 0 102 0 182 0 237] 
#[0 0 186 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 19 0 20 0 21 0 22 0 25 0 28 0 33 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 62 0 72 0 96 0 98 0 100 0 102 0 237] 
#[1 2 181 0 1 0 190 0 3 0 190 0 5 0 190 0 8 0 190 0 9 0 190 0 11 0 190 0 12 0 190 0 14 0 190 0 19 0 190 0 20 0 190 0 21 0 190 0 22 2 185 0 23 0 190 0 25 2 189 0 26 2 193 0 27 0 190 0 28 2 197 0 29 2 201 0 30 2 205 0 31 0 190 0 33 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 49 0 190 0 53 0 190 0 56 2 209 0 58 2 213 0 59 2 217 0 61 0 190 0 62 0 190 0 72 0 190 0 96 0 190 0 98 0 190 0 100 0 190 0 102 2 221 0 178 0 190 0 237] 
#[1 0 194 0 1 0 194 0 2 0 194 0 3 0 194 0 4 0 194 0 5 0 194 0 6 0 194 0 7 0 194 0 8 0 194 0 9 0 194 0 10 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 16 0 194 0 17 0 194 0 18 0 194 0 19 0 194 0 20 0 194 0 21 0 194 0 22 0 194 0 23 0 194 0 24 0 194 0 25 0 194 0 26 0 194 0 27 0 194 0 28 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 33 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 39 0 194 0 49 0 194 0 53 0 194 0 56 0 194 0 58 0 194 0 59 0 194 0 61 0 194 0 62 0 11 0 71 0 194 0 72 0 194 0 78 0 194 0 79 0 194 0 81 0 194 0 82 0 194 0 84 0 194 0 85 0 194 0 87 0 194 0 88 0 194 0 96 0 194 0 97 0 194 0 98 0 194 0 99 0 194 0 100 0 194 0 102 0 194 0 237] 
#[1 0 198 0 1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 5 0 198 0 6 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 10 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 16 0 198 0 17 0 198 0 18 0 198 0 19 0 198 0 20 0 198 0 21 0 198 0 22 0 198 0 23 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 15 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 49 0 198 0 53 0 198 0 56 0 198 0 58 0 198 0 59 0 198 0 61 0 198 0 62 0 198 0 71 0 198 0 72 0 198 0 78 0 198 0 79 0 198 0 81 0 198 0 82 0 198 0 84 0 198 0 85 0 198 0 87 0 198 0 88 0 198 0 96 0 198 0 97 0 198 0 98 0 198 0 99 0 198 0 100 0 198 0 102 0 198 0 237] 
#[1 0 202 0 1 0 202 0 2 0 202 0 3 0 19 0 4 0 202 0 5 0 202 0 6 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 16 0 202 0 17 0 202 0 18 0 202 0 19 0 202 0 20 0 202 0 21 0 202 0 22 0 202 0 23 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 28 0 202 0 29 0 202 0 30 0 202 0 31 0 202 0 32 0 202 0 33 0 202 0 35 0 202 0 36 0 202 0 37 0 202 0 38 0 202 0 39 0 202 0 49 0 202 0 53 0 202 0 56 0 202 0 58 0 202 0 59 0 202 0 61 0 202 0 62 0 202 0 71 0 202 0 72 0 202 0 78 0 202 0 79 0 202 0 81 0 202 0 82 0 202 0 84 0 202 0 85 0 202 0 87 0 202 0 88 0 202 0 96 0 202 0 97 0 202 0 98 0 202 0 99 0 202 0 100 0 202 0 102 0 202 0 237] 
#[1 0 206 0 1 0 206 0 2 0 206 0 3 0 206 0 4 0 206 0 5 0 206 0 6 0 206 0 7 0 206 0 8 0 206 0 9 0 206 0 10 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 16 0 206 0 17 0 206 0 18 0 206 0 19 0 206 0 20 0 206 0 21 0 206 0 22 0 206 0 23 0 23 0 24 0 206 0 25 0 206 0 26 0 206 0 27 0 206 0 28 0 206 0 29 0 206 0 30 0 206 0 31 0 27 0 32 0 206 0 33 0 206 0 35 0 206 0 36 0 206 0 37 0 206 0 38 0 206 0 39 0 206 0 49 0 206 0 53 0 206 0 56 0 206 0 58 0 206 0 59 0 206 0 61 0 206 0 62 0 206 0 71 0 206 0 72 0 206 0 78 0 206 0 79 0 206 0 81 0 206 0 82 0 206 0 84 0 206 0 85 0 206 0 87 0 206 0 88 0 206 0 96 0 206 0 97 0 206 0 98 0 206 0 99 0 206 0 100 0 206 0 102 0 206 0 237] 
#[1 0 210 0 1 0 210 0 2 0 210 0 3 0 210 0 4 0 210 0 5 0 210 0 6 0 210 0 7 0 210 0 8 0 210 0 9 0 31 0 10 0 210 0 11 0 210 0 12 0 35 0 13 0 210 0 14 0 210 0 16 0 210 0 17 0 210 0 18 0 210 0 19 0 210 0 20 0 210 0 21 0 210 0 22 0 210 0 23 0 210 0 24 0 210 0 25 0 210 0 26 0 210 0 27 0 210 0 28 0 210 0 29 0 210 0 30 0 210 0 31 0 210 0 32 0 210 0 33 0 210 0 35 0 210 0 36 0 210 0 37 0 210 0 38 0 210 0 39 0 210 0 49 0 210 0 53 0 210 0 56 0 210 0 58 0 210 0 59 0 210 0 61 0 210 0 62 0 210 0 71 0 210 0 72 0 210 0 78 0 210 0 79 0 210 0 81 0 210 0 82 0 210 0 84 0 210 0 85 0 210 0 87 0 210 0 88 0 210 0 96 0 210 0 97 0 210 0 98 0 210 0 99 0 210 0 100 0 210 0 102 0 210 0 237] 
#[1 0 214 0 1 0 39 0 2 0 214 0 3 0 214 0 4 0 214 0 5 0 43 0 6 0 214 0 7 0 214 0 8 0 214 0 9 0 214 0 10 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 0 214 0 16 0 47 0 17 0 51 0 18 0 214 0 19 0 214 0 20 0 214 0 21 0 214 0 22 0 214 0 23 0 214 0 24 0 214 0 25 0 214 0 26 0 214 0 27 0 214 0 28 0 214 0 29 0 214 0 30 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 35 0 214 0 36 0 214 0 37 0 214 0 38 0 214 0 39 0 214 0 49 0 214 0 53 0 214 0 56 0 214 0 58 0 214 0 59 0 214 0 61 0 214 0 62 0 214 0 71 0 214 0 72 0 214 0 78 0 214 0 79 0 214 0 81 0 214 0 82 0 214 0 84 0 214 0 85 0 214 0 87 0 214 0 88 0 214 0 96 0 214 0 97 0 214 0 98 0 214 0 99 0 214 0 100 0 214 0 102 0 214 0 237] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 0 222 0 1 0 222 0 2 0 222 0 3 0 222 0 4 0 222 0 5 0 222 0 6 0 55 0 7 0 222 0 8 0 222 0 9 0 222 0 10 0 222 0 11 0 222 0 12 0 222 0 13 0 222 0 14 0 222 0 16 0 222 0 17 0 222 0 18 0 222 0 19 0 222 0 20 0 222 0 21 0 222 0 22 0 222 0 23 0 222 0 24 0 222 0 25 0 222 0 26 0 222 0 27 0 222 0 28 0 222 0 29 0 222 0 30 0 222 0 31 0 222 0 32 0 222 0 33 0 222 0 35 0 222 0 36 0 222 0 37 0 222 0 38 0 222 0 39 0 222 0 49 0 222 0 53 0 222 0 56 0 222 0 58 0 222 0 59 0 222 0 61 0 222 0 62 0 222 0 71 0 222 0 72 0 222 0 78 0 222 0 79 0 222 0 81 0 222 0 82 0 222 0 84 0 222 0 85 0 222 0 87 0 222 0 88 0 222 0 96 0 222 0 97 0 222 0 98 0 222 0 99 0 222 0 100 0 222 0 102 0 222 0 237] 
#[0 0 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 0 230 0 1 0 230 0 2 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 6 0 230 0 7 0 230 0 8 0 230 0 9 0 230 0 10 0 230 0 11 0 230 0 12 0 230 0 13 0 230 0 14 0 59 0 16 0 230 0 17 0 230 0 18 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 22 0 230 0 23 0 230 0 24 0 230 0 25 0 230 0 26 0 230 0 27 0 230 0 28 0 230 0 29 0 230 0 30 0 230 0 31 0 230 0 32 0 230 0 33 0 230 0 35 0 230 0 36 0 230 0 37 0 230 0 38 0 230 0 39 0 230 0 49 0 230 0 53 0 230 0 56 0 230 0 58 0 230 0 59 0 230 0 61 0 230 0 62 0 230 0 71 0 230 0 72 0 230 0 78 0 230 0 79 0 230 0 81 0 230 0 82 0 230 0 84 0 230 0 85 0 230 0 87 0 230 0 88 0 230 0 96 0 63 0 97 0 230 0 98 0 67 0 99 0 230 0 100 0 230 0 102 3 29 0 189 3 33 0 209 0 230 0 237] 
#[0 0 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 0 238 0 1 0 238 0 2 0 238 0 3 0 238 0 4 0 238 0 5 0 238 0 6 0 238 0 7 0 238 0 8 0 238 0 9 0 238 0 10 0 238 0 11 0 238 0 12 0 238 0 13 0 238 0 14 0 238 0 16 0 238 0 17 0 238 0 18 0 238 0 19 0 238 0 20 0 238 0 21 0 238 0 22 0 238 0 23 0 238 0 24 0 238 0 25 0 238 0 26 0 238 0 27 0 238 0 28 0 238 0 29 0 238 0 30 0 238 0 31 0 238 0 32 0 238 0 33 0 238 0 35 0 238 0 36 0 238 0 37 0 238 0 38 0 238 0 39 0 238 0 49 0 238 0 53 0 238 0 56 0 238 0 58 0 238 0 59 0 238 0 61 0 238 0 62 0 238 0 71 0 238 0 72 0 141 0 75 0 145 0 76 0 10 0 77 0 238 0 78 0 238 0 79 0 14 0 80 0 238 0 81 0 238 0 82 0 18 0 83 0 238 0 84 0 238 0 85 0 22 0 86 0 238 0 87 0 238 0 88 0 238 0 96 0 238 0 97 0 238 0 98 0 238 0 99 0 238 0 100 0 238 0 102 3 37 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 0 238 0 237] 
#[0 3 41 0 77] 
#[0 3 45 0 80] 
#[0 3 49 0 83] 
#[0 3 53 0 86] 
#[0 0 242 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 19 0 20 0 21 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 72 0 96 0 98 0 100 0 102 0 237] 
#[1 0 246 0 3 0 246 0 5 0 246 0 8 0 246 0 9 0 246 0 11 3 57 0 12 0 246 0 14 0 246 0 19 0 246 0 20 0 246 0 21 0 246 0 22 0 246 0 25 0 246 0 28 0 246 0 33 0 246 0 36 0 246 0 72 0 246 0 96 0 246 0 98 3 61 0 218 3 65 0 219 0 246 0 237] 
#[1 3 121 0 3 3 121 0 5 3 121 0 8 3 121 0 9 3 121 0 11 3 121 0 14 3 121 0 19 3 121 0 20 0 250 0 22 3 121 0 25 0 250 0 28 3 121 0 33 3 121 0 36 3 121 0 72 0 250 0 96 3 117 0 125 3 121 0 127] 
#[0 0 254 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 1 2 0 22 0 96] 
#[0 0 0 0 237] 
#[1 1 6 0 96 3 125 0 107 1 6 0 237] 
#[0 1 10 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 237] 
#[0 1 14 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 237] 
#[0 1 18 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 1 22 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 1 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 1 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 1 34 0 12 0 16 0 22 0 39 0 57 0 96 0 97] 
#[1 3 129 0 16 1 38 0 96 3 133 0 97 3 137 0 109] 
#[1 3 141 0 12 1 42 0 37] 
#[0 3 145 0 37] 
#[0 1 46 0 22 0 96] 
#[1 3 149 0 12 1 50 0 22 1 50 0 96] 
#[0 3 153 0 74] 
#[0 1 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 3 157 0 21 3 161 0 97] 
#[1 3 165 0 97 3 169 0 115] 
#[1 3 173 0 12 1 58 0 22 1 58 0 58 1 58 0 96 3 177 0 215] 
#[0 1 62 0 22 0 96] 
#[1 1 66 0 22 3 181 0 58 1 66 0 96] 
#[0 3 185 0 58] 
#[0 1 70 0 16 0 57 0 74] 
#[0 3 189 0 57] 
#[1 3 193 0 16 1 74 0 57 1 165 0 74 3 197 0 148] 
#[1 3 129 0 16 1 78 0 57] 
#[0 1 82 0 12 0 22 0 96] 
#[1 3 201 0 12 1 86 0 22 1 86 0 96] 
#[0 3 205 0 21] 
#[0 1 90 0 12 0 22 0 96] 
#[1 3 209 0 12 1 94 0 22 1 94 0 96] 
#[1 1 98 0 12 3 129 0 16 1 98 0 22 3 213 0 39 1 98 0 96] 
#[0 3 217 0 74] 
#[0 3 221 0 74] 
#[0 1 102 0 12 0 21 0 28 0 98] 
#[1 2 13 0 74 2 17 0 97 3 225 0 119 3 229 0 120] 
#[0 3 233 0 21] 
#[0 1 106 0 21 0 98] 
#[1 1 110 0 12 0 71 0 21 3 237 0 28 1 110 0 98 3 241 0 118 3 245 0 191] 
#[0 1 114 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 19 0 20 0 21 0 22 0 25 0 28 0 33 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 62 0 72 0 96 0 98 0 100 0 102 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 3 249 0 217] 
#[0 1 118 0 22 0 28 0 96 0 98] 
#[0 1 122 0 22 0 96] 
#[1 3 253 0 12 1 126 0 22 1 126 0 96] 
#[0 1 130 0 22 0 96] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 4 9 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[0 4 13 0 21] 
#[1 4 17 0 12 4 21 0 21] 
#[0 1 134 0 12 0 21] 
#[1 1 138 0 12 1 138 0 21 4 25 0 39] 
#[0 1 142 0 22 0 28 0 96 0 98] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 29 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 4 33 0 98] 
#[1 3 57 0 12 4 37 0 53 0 246 0 98 3 61 0 218 3 65 0 219 4 41 0 231] 
#[0 1 158 0 98] 
#[0 4 45 0 98] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 4 49 0 100] 
#[1 3 57 0 12 4 53 0 53 0 246 0 100 3 61 0 218 3 65 0 219 4 57 0 228] 
#[0 1 166 0 100] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 3 57 0 12 4 61 0 21 4 37 0 53 0 246 0 102 3 61 0 218 3 65 0 219 4 65 0 231] 
#[0 1 174 0 102] 
#[0 4 69 0 102] 
#[0 1 178 0 34 0 41 0 44 0 46] 
#[0 1 182 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 1 186 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 1 190 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 73 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[0 4 77 0 96] 
#[0 1 194 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 81 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 85 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 89 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 1 198 0 10 0 13 0 37 0 42 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 1 202 0 10 0 13 0 37 0 42 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 1 206 0 10 0 13 0 37 0 42 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 1 210 0 10 0 13 0 37 0 42 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 1 214 0 10 0 13 0 37 0 42 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 1 218 0 10 0 13 0 37 0 42 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 1 222 0 10 0 13 0 37 0 42 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 1 226 0 10 0 13 0 37 0 42 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[1 1 230 0 10 1 230 0 13 1 230 0 37 1 230 0 42 4 93 0 61 1 230 0 73 1 230 0 74 1 230 0 75 1 230 0 76 1 230 0 77 1 230 0 80 1 230 0 83 1 230 0 86 1 230 0 89 1 230 0 97 1 230 0 99 1 230 0 101] 
#[0 4 97 0 58] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 101 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 105 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 109 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 113 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 117 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 121 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 125 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 129 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 133 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 137 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 141 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 145 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 149 0 185 4 149 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 4 153 0 74] 
#[1 4 157 0 6 4 161 0 7 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 4 165 0 98 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 4 169 0 208 4 169 0 216 4 173 0 224 4 177 0 226] 
#[1 0 21 0 10 0 25 0 13 4 181 0 16 1 234 0 21 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 4 197 0 208 4 185 0 210 4 189 0 211 4 193 0 212 4 197 0 216] 
#[1 1 238 0 1 1 238 0 2 1 238 0 3 1 238 0 4 1 238 0 5 1 238 0 6 1 238 0 7 1 238 0 8 1 238 0 9 1 238 0 10 1 238 0 11 1 238 0 12 1 238 0 13 1 238 0 14 0 75 0 16 1 238 0 17 1 238 0 18 1 238 0 19 1 238 0 20 1 238 0 21 1 238 0 22 1 238 0 23 1 238 0 24 1 238 0 25 1 238 0 26 1 238 0 27 1 238 0 28 1 238 0 29 1 238 0 30 1 238 0 31 1 238 0 32 1 238 0 33 1 238 0 35 1 238 0 36 1 238 0 37 1 238 0 38 1 238 0 39 1 238 0 49 1 238 0 53 1 238 0 56 1 238 0 58 1 238 0 59 1 238 0 61 1 238 0 62 1 238 0 71 1 238 0 72 1 238 0 78 1 238 0 79 1 238 0 81 1 238 0 82 1 238 0 84 1 238 0 85 1 238 0 87 1 238 0 88 1 238 0 96 0 79 0 97 1 238 0 98 0 83 0 99 1 238 0 100 1 238 0 102 4 201 0 209 1 238 0 237] 
#[0 1 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 1 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 205 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 209 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 213 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 217 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 1 250 0 3 1 250 0 5 1 250 0 8 1 250 0 9 0 21 0 10 1 250 0 11 0 25 0 13 1 250 0 14 1 250 0 19 1 250 0 20 1 250 0 21 1 250 0 22 1 250 0 25 1 250 0 28 1 250 0 33 1 250 0 36 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 1 250 0 72 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 1 250 0 96 0 157 0 97 1 250 0 98 0 161 0 99 1 250 0 100 0 165 0 101 1 250 0 102 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 4 221 0 208 4 221 0 216 1 250 0 237] 
#[0 1 254 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 19 0 20 0 21 0 22 0 25 0 28 0 33 0 36 0 72 0 96 0 98 0 100 0 102 0 237] 
#[1 1 58 0 3 1 58 0 5 1 58 0 8 1 58 0 9 1 58 0 11 4 225 0 12 1 58 0 14 1 58 0 19 1 58 0 20 1 58 0 21 1 58 0 22 1 58 0 25 1 58 0 28 1 58 0 33 1 58 0 36 1 58 0 72 1 58 0 96 1 58 0 98 1 58 0 100 1 58 0 102 4 229 0 215 4 233 0 218 1 58 0 237] 
#[0 2 2 0 10 0 13 0 37 0 42 0 60 0 61 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 2 6 0 10 0 13 0 37 0 42 0 60 0 61 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 2 10 0 10 0 13 0 37 0 42 0 60 0 61 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 2 14 0 10 0 13 0 37 0 42 0 60 0 61 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 2 18 0 10 0 13 0 37 0 42 0 60 0 61 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 2 22 0 10 0 13 0 37 0 42 0 60 0 61 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 2 26 0 10 0 13 0 37 0 42 0 60 0 61 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 2 30 0 10 0 13 0 37 0 42 0 60 0 61 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 2 34 0 10 0 13 0 37 0 42 0 60 0 61 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 2 38 0 10 0 13 0 37 0 42 0 60 0 61 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 2 42 0 10 0 13 0 37 0 42 0 60 0 61 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 2 46 0 10 0 13 0 37 0 42 0 60 0 61 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[1 2 50 0 22 4 237 0 28 2 50 0 96] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 4 241 0 126 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 4 241 0 217 4 241 0 234] 
#[1 4 253 0 96 2 54 0 237] 
#[0 5 1 0 74] 
#[1 4 157 0 6 4 161 0 7 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 2 58 0 98 0 161 0 99 0 165 0 101 5 5 0 110 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 4 169 0 208 4 169 0 216 5 5 0 224 4 177 0 226] 
#[0 5 13 0 96] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 173 0 208 1 173 0 216 5 17 0 233] 
#[0 2 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 5 21 0 208 5 21 0 216] 
#[1 3 165 0 97 5 25 0 115] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 5 29 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 42 0 98 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 5 33 0 217 5 33 0 220] 
#[1 2 5 0 6 2 9 0 7 2 13 0 74 2 17 0 97 0 34 0 98 5 37 0 116 2 25 0 117 2 29 0 119] 
#[1 5 41 0 15 2 66 0 21 5 45 0 114] 
#[1 0 21 0 10 0 25 0 13 2 70 0 22 0 33 0 37 0 45 0 42 2 70 0 58 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 2 70 0 96 0 157 0 97 0 161 0 99 0 165 0 101 1 205 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 5 49 0 214] 
#[0 2 74 0 22 0 58 0 96] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 5 53 0 152 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 185 0 208 1 185 0 216] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 5 57 0 217] 
#[1 5 61 0 6 5 65 0 74 5 69 0 97 5 73 0 142 5 77 0 143 5 81 0 145 5 85 0 146] 
#[0 2 78 0 16 0 57 0 74] 
#[1 3 129 0 16 2 82 0 57] 
#[0 5 89 0 74] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 5 93 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[1 1 165 0 74 5 97 0 144 2 1 0 148] 
#[0 5 101 0 74] 
#[1 5 105 0 12 2 86 0 21 2 86 0 98] 
#[0 2 90 0 21 0 98] 
#[1 5 109 0 12 1 58 0 98 5 113 0 215] 
#[0 5 117 0 98] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 5 121 0 208 5 121 0 216] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 5 125 0 208 5 125 0 216] 
#[1 5 129 0 12 1 58 0 21 1 58 0 98 5 133 0 215] 
#[1 1 110 0 12 1 110 0 21 3 237 0 28 1 110 0 98 5 137 0 118] 
#[0 2 94 0 22 0 96] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 5 141 0 208 5 141 0 216] 
#[0 5 145 0 236] 
#[0 2 98 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[1 5 149 0 50 5 153 0 52 5 157 0 163 5 161 0 167] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 5 165 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 5 169 0 166 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 2 73 0 208 2 73 0 216] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 5 173 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 5 177 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 2 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 205 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 5 181 0 214] 
#[0 2 110 0 98] 
#[0 2 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 205 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 5 185 0 214] 
#[0 2 122 0 100] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 5 189 0 208 5 189 0 216] 
#[0 2 126 0 102] 
#[0 2 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 134 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 2 138 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 5 193 0 49] 
#[0 2 142 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 19 0 20 0 21 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 49 0 53 0 56 0 72 0 96 0 98 0 100 0 102 0 237] 
#[0 2 146 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 19 0 20 0 21 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 49 0 53 0 56 0 62 0 72 0 96 0 98 0 100 0 102 0 237] 
#[0 2 150 0 10 0 13 0 37 0 42 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 2 154 0 10 0 13 0 37 0 42 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101] 
#[0 2 158 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 19 0 20 0 21 0 22 0 25 0 28 0 33 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 62 0 72 0 96 0 98 0 100 0 102 0 237] 
#[0 2 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 2 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 5 197 0 208 5 197 0 216] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 5 201 0 208 5 201 0 216] 
#[0 2 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 2 218 0 12 5 205 0 28 4 37 0 53 2 218 0 98 5 209 0 231] 
#[0 5 213 0 98] 
#[1 5 217 0 12 1 58 0 98 5 221 0 215] 
#[0 5 225 0 16] 
#[0 5 229 0 100] 
#[1 5 233 0 12 1 58 0 100 5 237 0 215] 
#[0 5 241 0 21] 
#[1 2 222 0 12 2 226 0 21 2 222 0 100] 
#[0 2 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 2 234 0 78 2 234 0 79 5 245 0 195] 
#[1 2 238 0 81 2 238 0 82 5 249 0 197] 
#[1 2 242 0 84 2 242 0 85 5 253 0 199] 
#[1 2 246 0 87 2 246 0 88 6 1 0 201] 
#[0 2 250 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 19 0 20 0 21 0 22 0 25 0 28 0 33 0 36 0 72 0 96 0 98 0 100 0 102 0 237] 
#[1 2 70 0 3 2 70 0 5 2 70 0 8 2 70 0 9 0 21 0 10 2 70 0 11 0 25 0 13 2 70 0 14 2 70 0 19 2 70 0 20 2 70 0 21 2 70 0 22 2 70 0 25 2 70 0 28 2 70 0 33 2 70 0 36 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 2 70 0 72 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 2 70 0 96 0 157 0 97 2 70 0 98 0 161 0 99 2 70 0 100 0 165 0 101 2 70 0 102 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 4 221 0 208 4 221 0 216 2 70 0 237] 
#[0 2 254 0 3 0 5 0 8 0 9 0 11 0 14 0 19 0 20 0 21 0 22 0 25 0 28 0 33 0 36 0 72 0 96 0 98 0 100 0 102 0 237] 
#[0 3 2 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 19 0 20 0 21 0 22 0 25 0 28 0 33 0 36 0 72 0 96 0 98 0 100 0 102 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 6 5 0 126 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 6 5 0 217 6 5 0 234] 
#[0 3 6 0 22 0 96] 
#[0 3 10 0 22 0 28 0 96] 
#[0 3 14 0 22 0 28 0 96] 
#[0 3 18 0 96 0 237] 
#[0 3 22 0 12 0 16 0 22 0 39 0 57 0 96 0 97] 
#[0 6 9 0 98] 
#[0 3 26 0 98] 
#[0 3 30 0 34 0 41 0 44 0 46] 
#[0 3 34 0 37] 
#[0 3 38 0 22 0 96] 
#[1 5 41 0 15 2 66 0 21 6 13 0 114] 
#[0 3 42 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 6 17 0 98] 
#[0 6 21 0 98] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 6 25 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 6 29 0 21] 
#[0 3 46 0 22 0 58 0 96] 
#[0 3 50 0 22 0 96] 
#[0 6 33 0 21] 
#[0 3 54 0 22 0 96] 
#[1 3 58 0 12 3 58 0 22 6 37 0 39 3 58 0 96 3 58 0 98] 
#[1 5 65 0 74 5 77 0 143 6 41 0 145 5 85 0 146] 
#[0 3 62 0 22 0 96] 
#[0 3 66 0 12 0 22 0 96 0 98] 
#[0 3 70 0 22 0 96] 
#[1 6 45 0 12 1 58 0 22 1 58 0 96 1 58 0 98 6 49 0 215] 
#[0 3 74 0 12 0 22 0 96] 
#[1 3 78 0 10 3 78 0 13 3 78 0 34 3 78 0 37 3 78 0 40 3 78 0 41 3 78 0 42 3 78 0 43 3 78 0 44 3 78 0 45 3 78 0 46 3 78 0 47 3 78 0 48 3 78 0 49 3 78 0 51 3 78 0 53 3 78 0 54 3 78 0 55 3 78 0 56 3 78 0 57 3 78 0 60 3 78 0 61 3 78 0 63 3 78 0 64 3 78 0 65 3 78 0 66 3 78 0 67 3 78 0 68 3 78 0 69 3 78 0 70 3 78 0 73 3 78 0 74 3 78 0 75 3 78 0 76 3 78 0 77 3 78 0 80 3 78 0 83 3 78 0 86 3 78 0 89 3 78 0 96 3 78 0 97 3 78 0 99 3 78 0 101 6 53 0 157 3 78 0 235 3 78 0 237] 
#[0 3 82 0 12 0 22 0 96] 
#[0 3 86 0 12 0 22 0 96] 
#[0 6 57 0 7] 
#[1 2 13 0 74 2 17 0 97 2 70 0 98 3 225 0 119 6 61 0 120] 
#[0 3 90 0 98] 
#[0 3 94 0 12 0 21 0 28 0 98] 
#[0 3 98 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 19 0 20 0 21 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 72 0 96 0 98 0 100 0 102 0 237] 
#[0 3 102 0 12 0 21 0 98] 
#[1 2 5 0 6 2 9 0 7 2 70 0 21 2 13 0 74 2 17 0 97 2 70 0 98 6 65 0 117 2 29 0 119] 
#[0 3 106 0 21 0 98] 
#[1 6 69 0 12 1 58 0 21 1 58 0 98 6 73 0 215] 
#[1 6 77 0 12 3 110 0 22 3 110 0 96] 
#[1 0 21 0 10 0 25 0 13 0 29 0 34 0 33 0 37 0 37 0 40 0 41 0 41 0 45 0 42 0 49 0 43 0 53 0 44 0 57 0 45 0 61 0 46 0 65 0 47 0 69 0 51 0 73 0 53 0 77 0 54 0 81 0 55 0 85 0 56 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 117 0 67 0 121 0 68 0 125 0 69 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 0 173 0 108 0 177 0 111 6 81 0 112 6 81 0 113 6 81 0 121 6 81 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 6 81 0 155 6 81 0 156 6 81 0 159 6 81 0 160 6 81 0 161 6 81 0 164 6 85 0 169 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 6 81 0 223 1 129 0 234] 
#[1 0 21 0 10 0 25 0 13 3 114 0 21 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 6 89 0 208 6 89 0 216] 
#[0 6 93 0 21] 
#[1 3 118 0 10 3 118 0 13 3 118 0 34 3 118 0 37 3 118 0 40 3 118 0 41 3 118 0 42 3 118 0 43 3 118 0 44 3 118 0 45 3 118 0 46 3 118 0 47 6 97 0 49 5 149 0 50 3 118 0 51 3 118 0 52 3 118 0 53 3 118 0 54 3 118 0 55 3 118 0 56 3 118 0 57 3 118 0 60 3 118 0 61 3 118 0 63 3 118 0 64 3 118 0 65 3 118 0 66 3 118 0 67 3 118 0 68 3 118 0 69 3 118 0 70 3 118 0 73 3 118 0 74 3 118 0 75 3 118 0 76 3 118 0 77 3 118 0 80 3 118 0 83 3 118 0 86 3 118 0 89 3 118 0 96 3 118 0 97 3 118 0 99 3 118 0 101 6 101 0 158 6 105 0 167 3 118 0 235 3 118 0 237] 
#[0 6 109 0 21] 
#[1 3 118 0 10 3 118 0 13 3 118 0 34 3 118 0 37 3 118 0 40 3 118 0 41 3 118 0 42 3 118 0 43 3 118 0 44 3 118 0 45 3 118 0 46 3 118 0 47 6 97 0 49 3 118 0 51 3 118 0 53 3 118 0 54 3 118 0 55 3 118 0 56 3 118 0 57 3 118 0 60 3 118 0 61 3 118 0 63 3 118 0 64 3 118 0 65 3 118 0 66 3 118 0 67 3 118 0 68 3 118 0 69 3 118 0 70 3 118 0 73 3 118 0 74 3 118 0 75 3 118 0 76 3 118 0 77 3 118 0 80 3 118 0 83 3 118 0 86 3 118 0 89 3 118 0 96 3 118 0 97 3 118 0 99 3 118 0 101 6 113 0 158 3 118 0 235 3 118 0 237] 
#[0 3 122 0 12 0 21] 
#[0 3 126 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 3 130 0 12 0 21] 
#[0 6 117 0 58] 
#[0 6 121 0 58] 
#[1 6 125 0 12 4 37 0 53 1 58 0 102 6 129 0 215 6 133 0 222 6 137 0 231] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 6 141 0 208 6 141 0 216] 
#[1 6 145 0 12 3 134 0 98 6 149 0 225] 
#[0 3 138 0 98] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 6 153 0 208 6 153 0 216] 
#[0 3 142 0 12 0 98] 
#[0 3 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 4 157 0 6 4 161 0 7 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 2 70 0 98 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 4 169 0 208 4 169 0 216 6 157 0 224 4 177 0 226] 
#[0 3 150 0 98] 
#[0 6 161 0 16] 
#[0 3 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 78 0 79 0 81 0 82 0 84 0 85 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[1 0 21 0 10 0 25 0 13 4 181 0 16 1 234 0 21 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 2 70 0 100 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 4 197 0 208 6 165 0 210 4 189 0 211 4 193 0 212 4 197 0 216] 
#[0 3 158 0 100] 
#[1 0 21 0 10 1 234 0 12 0 25 0 13 1 234 0 21 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 1 234 0 100 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 6 169 0 208 6 169 0 212 6 169 0 216] 
#[1 6 177 0 78 6 181 0 79 6 185 0 194] 
#[1 6 189 0 81 6 193 0 82 6 197 0 196] 
#[1 6 201 0 84 6 205 0 85 6 209 0 198] 
#[1 6 213 0 87 6 217 0 88 6 221 0 200] 
#[0 3 162 0 22 0 28 0 96] 
#[0 3 166 0 96] 
#[0 6 225 0 21] 
#[0 6 229 0 21] 
#[0 3 170 0 15 0 21] 
#[0 3 174 0 21] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 6 233 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 6 237 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[0 6 241 0 74] 
#[0 6 245 0 98] 
#[1 2 70 0 22 5 65 0 74 2 70 0 96 2 70 0 98 6 249 0 143] 
#[0 3 178 0 22 0 96 0 98] 
#[1 3 118 0 10 3 118 0 13 3 118 0 34 3 118 0 37 3 118 0 40 3 118 0 41 3 118 0 42 3 118 0 43 3 118 0 44 3 118 0 45 3 118 0 46 3 118 0 47 6 253 0 48 6 97 0 49 3 118 0 51 3 118 0 53 3 118 0 54 3 118 0 55 3 118 0 56 3 118 0 57 3 118 0 60 3 118 0 61 3 118 0 63 3 118 0 64 3 118 0 65 3 118 0 66 3 118 0 67 3 118 0 68 3 118 0 69 3 118 0 70 3 118 0 73 3 118 0 74 3 118 0 75 3 118 0 76 3 118 0 77 3 118 0 80 3 118 0 83 3 118 0 86 3 118 0 89 3 118 0 96 3 118 0 97 3 118 0 99 3 118 0 101 7 1 0 158 3 118 0 235 3 118 0 237] 
#[0 7 5 0 74] 
#[0 3 182 0 98] 
#[0 3 186 0 21 0 98] 
#[1 2 5 0 6 2 9 0 7 2 70 0 21 2 13 0 74 2 17 0 97 2 70 0 98 7 9 0 117 2 29 0 119] 
#[0 3 190 0 21 0 98] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 7 13 0 208 7 13 0 216] 
#[0 3 194 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101 0 235] 
#[1 0 21 0 10 0 25 0 13 0 29 0 34 0 33 0 37 0 37 0 40 0 41 0 41 0 45 0 42 0 49 0 43 0 53 0 44 0 57 0 45 0 61 0 46 0 65 0 47 0 69 0 51 0 73 0 53 0 77 0 54 0 81 0 55 0 85 0 56 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 117 0 67 0 121 0 68 0 125 0 69 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 0 173 0 108 0 177 0 111 7 17 0 112 7 17 0 113 7 17 0 121 7 17 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 7 17 0 155 7 17 0 156 7 17 0 159 7 17 0 160 7 17 0 161 7 17 0 164 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 7 17 0 223 1 129 0 234 7 21 0 235] 
#[1 7 25 0 12 3 198 0 21 7 29 0 39] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 7 33 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[0 7 37 0 21] 
#[1 3 202 0 10 3 202 0 13 3 202 0 34 3 202 0 37 3 202 0 40 3 202 0 41 3 202 0 42 3 202 0 43 3 202 0 44 3 202 0 45 3 202 0 46 3 202 0 47 3 202 0 51 7 41 0 52 3 202 0 53 3 202 0 54 3 202 0 55 3 202 0 56 3 202 0 57 3 202 0 60 3 202 0 61 3 202 0 63 3 202 0 64 3 202 0 65 3 202 0 66 3 202 0 67 3 202 0 68 3 202 0 69 3 202 0 70 3 202 0 73 3 202 0 74 3 202 0 75 3 202 0 76 3 202 0 77 3 202 0 80 3 202 0 83 3 202 0 86 3 202 0 89 3 202 0 96 3 202 0 97 3 202 0 99 3 202 0 101 7 45 0 162 3 202 0 235 3 202 0 237] 
#[0 7 49 0 21] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 7 53 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[0 3 206 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 7 57 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 7 61 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 7 65 0 170 7 69 0 172 7 69 0 173 7 69 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 2 70 0 102 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 7 81 0 208 7 81 0 216] 
#[0 3 210 0 102] 
#[0 3 214 0 102] 
#[0 3 218 0 102] 
#[0 3 222 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 19 0 20 0 21 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 72 0 96 0 98 0 100 0 102 0 237] 
#[1 7 85 0 7 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 4 169 0 208 4 169 0 216 7 89 0 226] 
#[0 3 226 0 98] 
#[0 3 230 0 12 0 98] 
#[0 3 234 0 98] 
#[0 3 238 0 12 0 100] 
#[0 3 242 0 100] 
#[1 3 246 0 12 7 93 0 21 3 246 0 100 7 97 0 213] 
#[0 2 226 0 12 0 21 0 100] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 7 101 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 3 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 3 254 0 78 0 79] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 7 105 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 4 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 4 6 0 81 0 82] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 7 109 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 4 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 4 14 0 84 0 85] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 7 113 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 4 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 56 0 58 0 59 0 61 0 62 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 96 0 97 0 98 0 99 0 100 0 102 0 237] 
#[0 4 22 0 87 0 88] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 7 117 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 7 121 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[0 4 26 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[1 3 118 0 10 3 118 0 13 3 118 0 34 3 118 0 37 3 118 0 40 3 118 0 41 3 118 0 42 3 118 0 43 3 118 0 44 3 118 0 45 3 118 0 46 3 118 0 47 6 97 0 49 3 118 0 51 3 118 0 53 3 118 0 54 3 118 0 55 3 118 0 56 3 118 0 57 3 118 0 60 3 118 0 61 3 118 0 63 3 118 0 64 3 118 0 65 3 118 0 66 3 118 0 67 3 118 0 68 3 118 0 69 3 118 0 70 3 118 0 73 3 118 0 74 3 118 0 75 3 118 0 76 3 118 0 77 3 118 0 80 3 118 0 83 3 118 0 86 3 118 0 89 3 118 0 96 3 118 0 97 3 118 0 99 3 118 0 101 7 125 0 158 3 118 0 235 3 118 0 237] 
#[0 4 30 0 12 0 22 0 96 0 98] 
#[0 4 34 0 22 0 96] 
#[0 4 38 0 12 0 22 0 96 0 98] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 7 129 0 208 7 129 0 216] 
#[0 4 42 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 4 46 0 21 0 98] 
#[0 4 50 0 21 0 98] 
#[0 4 54 0 22 0 96] 
#[0 4 58 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 97 0 99 0 101 0 235] 
#[0 4 62 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 7 133 0 208 7 133 0 216] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 7 137 0 208 7 137 0 216] 
#[0 4 66 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 7 141 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[0 7 145 0 21] 
#[0 4 70 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 7 149 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[0 4 74 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[1 4 78 0 12 4 37 0 53 7 153 0 56 4 78 0 98 4 78 0 102 7 157 0 230 7 157 0 231 7 157 0 232] 
#[1 2 5 0 6 2 9 0 7 0 34 0 21 2 13 0 74 2 17 0 97 7 169 0 116 2 25 0 117 2 29 0 119] 
#[1 4 53 0 53 7 173 0 56 4 82 0 100 7 177 0 227 7 177 0 228 7 177 0 229] 
#[1 7 189 0 12 4 86 0 53 4 86 0 56 4 86 0 100] 
#[0 4 90 0 12 0 53 0 56 0 98 0 100 0 102] 
#[0 4 94 0 12 0 53 0 56 0 98 0 100 0 102] 
#[0 7 193 0 21] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 7 197 0 208 7 197 0 216] 
#[1 6 145 0 12 3 134 0 98 7 201 0 225] 
#[1 0 21 0 10 1 234 0 12 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 1 234 0 100 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 7 205 0 208 7 205 0 212 7 205 0 216] 
#[0 4 98 0 12 0 100] 
#[0 4 102 0 78 0 79] 
#[0 4 106 0 81 0 82] 
#[0 4 110 0 84 0 85] 
#[0 4 114 0 87 0 88] 
#[0 4 118 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 4 122 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 4 126 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 7 209 0 21] 
#[0 4 130 0 21] 
#[0 4 134 0 21] 
#[0 4 138 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 7 213 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[0 4 142 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 7 61 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 7 217 0 172 7 217 0 173 7 217 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 4 146 0 12 0 98 0 102] 
#[0 4 150 0 12 0 98 0 102] 
#[0 4 154 0 12 0 98 0 102] 
#[0 7 221 0 21] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 7 61 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 7 225 0 172 7 225 0 173 7 225 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 4 158 0 100] 
#[0 4 162 0 100] 
#[0 4 166 0 100] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 7 61 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 7 229 0 171 7 233 0 172 7 233 0 173 7 233 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 0 93 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 7 237 0 208 7 237 0 216] 
#[0 4 170 0 98] 
#[0 4 174 0 98] 
#[0 4 178 0 12 0 100] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 37 0 40 0 45 0 42 0 49 0 43 0 57 0 45 0 65 0 47 0 69 0 51 0 77 0 54 0 81 0 55 0 89 0 57 0 93 0 60 0 97 0 61 0 101 0 63 0 105 0 64 0 109 0 65 0 113 0 66 0 129 0 70 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 4 1 0 96 0 157 0 97 0 161 0 99 0 165 0 101 4 5 0 122 1 1 0 124 1 1 0 128 1 1 0 129 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 139 1 1 0 149 1 1 0 151 1 1 0 153 1 1 0 154 7 241 0 168 1 29 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205 1 117 0 208 1 117 0 216 1 121 0 217 1 129 0 234] 
#[0 4 182 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[1 4 186 0 12 4 37 0 53 7 153 0 56 4 186 0 98 4 186 0 102 7 245 0 230 7 245 0 231 7 245 0 232] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 7 61 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 0 165 0 101 7 249 0 172 7 249 0 173 7 249 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[1 4 53 0 53 7 173 0 56 4 190 0 100 7 253 0 227 7 253 0 228 7 253 0 229] 
#[1 8 1 0 12 1 58 0 53 1 58 0 56 1 58 0 100 8 5 0 215] 
#[0 4 194 0 12 0 53 0 56 0 100] 
#[1 6 125 0 12 1 58 0 102 6 129 0 215 8 9 0 222] 
#[0 4 198 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 73 0 74 0 75 0 76 0 77 0 80 0 83 0 86 0 89 0 96 0 97 0 99 0 101 0 235 0 237] 
#[0 4 202 0 12 0 98 0 102] 
#[0 4 206 0 12 0 53 0 56 0 98 0 100 0 102] 
#[0 4 210 0 100] 
#[1 0 21 0 10 0 25 0 13 0 33 0 37 0 45 0 42 2 70 0 53 2 70 0 56 7 61 0 60 0 97 0 61 0 133 0 73 0 137 0 74 0 141 0 75 0 145 0 76 0 10 0 77 0 14 0 80 0 18 0 83 0 22 0 86 0 149 0 89 0 157 0 97 0 161 0 99 2 70 0 100 0 165 0 101 8 13 0 172 8 13 0 173 8 13 0 174 1 33 0 175 1 37 0 176 1 37 0 177 1 45 0 179 1 49 0 180 1 53 0 181 1 57 0 182 1 61 0 183 1 65 0 184 1 69 0 185 1 69 0 186 1 77 0 187 1 77 0 188 1 85 0 190 1 85 0 192 1 93 0 193 1 97 0 202 1 101 0 203 1 105 0 204 1 109 0 205] 
#[0 4 214 0 53 0 56 0 100] 
#[0 4 218 0 102] 
#[0 4 222 0 12 0 53 0 56 0 100]
	).
]

{ #category : #private }
PythonParser >> actionsForCurrentToken [
	| actions |
	actions := super actionsForCurrentToken.
	(actions isEmpty and: [ currentToken source = '}' ])
		ifTrue: [ | i scannerState stackItem |
			i := nodeStack size.
			scannerState := nil.
			[ i > 0 and: [ scannerState isNil ] ]
				whileTrue: [ stackItem := nodeStack at: i.
					(stackItem class = Array
						and: [ stackItem size = 2 and: [ stackItem first isSymbol ] ])
						ifTrue: [ scannerState := stackItem ].
					i := i - 1 ].
			scannerState notNil
				ifTrue: [ self scope: scannerState first.
					scanner lineJoiningStack: scannerState second.
					self position: currentToken startPosition - 1.
					currentToken := nil.
					self getNextToken.
					self scope: #default.
					currentToken source = '}'
						ifTrue: [ ^ actions ].
					^ self actionsForCurrentToken ] ].
	^ actions
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForStartFLongStringDouble1: nodes [
	^ {#fLongStringDouble.
		scanner lineJoiningStack copy}
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForStartFLongStringSingle1: nodes [
	^ {#fLongStringSingle.
		scanner lineJoiningStack copy}
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForStartFStringDouble1: nodes [
	^ {#fStringDouble.
		scanner lineJoiningStack copy}
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForStartFStringSingle1: nodes [
	^ {#fStringSingle.
		scanner lineJoiningStack copy}
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor_____test__test__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor_____test__test___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor_____test__test___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForand_expr2: nodes [
	| result |
	result := PyAndExprNode new.
	result one: (nodes at: 1).
	result andToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForand_test2: nodes [
	| result |
	result := PyAndNode new.
	result one: (nodes at: 1).
	result andToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForarglist2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForarglist3: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	result at: 4 put: ((nodes at: 3) at: 2).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForarglist4: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 4 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForargument1: nodes [
	| result |
	result := PyArgumentNode new.
	result test: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForargument2: nodes [
	| result |
	result := PyArgumentNode new.
	result test: (nodes at: 1).
	result comp: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForargument3: nodes [
	| result |
	result := PyArgumentNode new.
	result test: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result test2: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForarith_expr2: nodes [
	| result |
	result := PyPlusExprNode new.
	result one: (nodes at: 1).
	result plusToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForarith_expr3: nodes [
	| result |
	result := PyMinusExprNode new.
	result one: (nodes at: 1).
	result minusToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForassert_stmt1: nodes [
	| result |
	result := PyAssertNode new.
	result assertToken: (nodes at: 1).
	result condition: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForassign_after1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom10: nodes [
	| result |
	result := PyAnnotatedSymbolNode new.
	result nameToken: (nodes at: 1).
	result variableAnnotation: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom11: nodes [
	| result |
	result := PyNumberNode new.
	result numberToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom1: nodes [
	| result |
	result := PyAtomNode new.
	result lparenToken: (nodes at: 1).
	result rparenToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom3: nodes [
	| result |
	result := PyAtomNode new.
	result lparenToken: (nodes at: 1).
	result list: (nodes at: 2).
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom4: nodes [
	| result |
	result := PyAtomNode new.
	result lbrackToken: (nodes at: 1).
	result rbrackToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom5: nodes [
	| result |
	result := PyAtomNode new.
	result lbrackToken: (nodes at: 1).
	result list: (nodes at: 2).
	result rbrackToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom6: nodes [
	| result |
	result := PyAtomNode new.
	result lcurlyToken: (nodes at: 1).
	result list: (nodes at: 2).
	result rcurlyToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom7: nodes [
	| result |
	result := PyAtomNode new.
	result lcurlyToken: (nodes at: 1).
	result rcurlyToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom8: nodes [
	| result |
	result := PyBackTickNode new.
	result addToken: (nodes at: 1) to: result _Tokens.
	result list: (nodes at: 2).
	result addToken: (nodes at: 3) to: result _Tokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom9: nodes [
	| result |
	result := PySymbolNode new.
	result nameToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForawait2: nodes [
	| result |
	result := PyAwaitNode new.
	result awaitToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForbreak_stmt1: nodes [
	| result |
	result := PyBreakNode new.
	result breakToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForclassdef1: nodes [
	| result |
	result := PyClassdefNode new.
	result classToken: (nodes at: 1).
	result cname: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 4) at: 2).
	result iNDENTToken: ((nodes at: 4) at: 3).
	result dEDENTToken: ((nodes at: 4) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForclassdef2: nodes [
	| result |
	result := PyClassdefNode new.
	result classToken: (nodes at: 1).
	result cname: (nodes at: 2).
	result lparenToken: (nodes at: 3).
	result testlist: (nodes at: 4).
	result rparenToken: (nodes at: 5).
	result colonToken: (nodes at: 6).
	result addNodes: ((nodes at: 7) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 7) at: 2).
	result iNDENTToken: ((nodes at: 7) at: 3).
	result dEDENTToken: ((nodes at: 7) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_for1: nodes [
	| result |
	result := PyCompForNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result _in: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_for2: nodes [
	| result |
	result := PyCompForNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result _in: (nodes at: 4).
	result comp: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_if1: nodes [
	| result |
	result := PyCompIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_if2: nodes [
	| result |
	result := PyCompIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	result iter: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op10: nodes [
	| result |
	result := PyCompOpNode new.
	result _isToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op11: nodes [
	| result |
	result := PyCompOpNode new.
	result _isToken: (nodes at: 1).
	result notToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op1: nodes [
	| result |
	result := PyCompOpNode new.
	result lessThanToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op2: nodes [
	| result |
	result := PyCompOpNode new.
	result greaterThanToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op3: nodes [
	| result |
	result := PyCompOpNode new.
	result equalEqualToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op4: nodes [
	| result |
	result := PyCompOpNode new.
	result greaterThanEqualToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op5: nodes [
	| result |
	result := PyCompOpNode new.
	result lessThanEqualToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op6: nodes [
	| result |
	result := PyCompOpNode new.
	result lessThanGreaterThanToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op7: nodes [
	| result |
	result := PyCompOpNode new.
	result bangEqualToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op8: nodes [
	| result |
	result := PyCompOpNode new.
	result inToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op9: nodes [
	| result |
	result := PyCompOpNode new.
	result notToken: (nodes at: 1).
	result inToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomparison2: nodes [
	| result |
	result := PyComparisonNode new.
	result one: (nodes at: 1).
	result op: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcontinue_stmt1: nodes [
	| result |
	result := PyContinueNode new.
	result continueToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorated1: nodes [
	| result |
	result := PyDecoratedNode new.
	result decorators: (nodes at: 1).
	result classdef: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorated2: nodes [
	| result |
	result := PyDecoratedNode new.
	result decorators: (nodes at: 1).
	result funcdef: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorator1: nodes [
	| result |
	result := PyDecoratorNode new.
	result _Token: (nodes at: 1).
	result dotted_name: (nodes at: 2).
	result args: (nodes at: 3).
	result nEWLINEToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorators1: nodes [
	| result |
	result := nodes at: 1.
	result addNode: (nodes at: 2) to: result decorators.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorators2: nodes [
	| result |
	result := PyDecoratorsNode new.
	result addNode: (nodes at: 1) to: result decorators.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordel_stmt1: nodes [
	| result |
	result := PyDelNode new.
	result delToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordictorsetmaker1: nodes [
	| result |
	result := PyDictorsetmakerNode new.
	result addNode: (nodes at: 1) to: result objects.
	result addToken: (nodes at: 2) to: result colonTokens.
	result addNode: (nodes at: 3) to: result values.
	result comp: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordictorsetmaker2: nodes [
	| result |
	result := PyDictorsetmakerNode new.
	result addNode: (nodes at: 1) to: result objects.
	result addToken: (nodes at: 2) to: result colonTokens.
	result addNode: (nodes at: 3) to: result values.
	result addTokens: ((nodes at: 4) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 4) at: 2) to: result objects.
	result addTokens: ((nodes at: 4) at: 3) to: result colonTokens.
	result addNodes: ((nodes at: 4) at: 4) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordictorsetmaker3: nodes [
	| result |
	result := PyDictorsetmakerNode new.
	result addNode: (nodes at: 1) to: result objects.
	result comp: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotopt_dotted_name1: nodes [
	| result |
	result := PyDotoptDottedNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotopt_dotted_name2: nodes [
	| result |
	result := PyDotoptDottedNameNode new.
	result dots: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotopt_dotted_name3: nodes [
	| result |
	result := PyDotoptDottedNameNode new.
	result dots: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordots1: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result periodTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordots2: nodes [
	| result |
	result := PyDotsNode new.
	result addToken: (nodes at: 1) to: result periodTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotted_as_name1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotted_as_name2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotted_as_names1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: ((nodes at: 3) at: 1) to: (result at: 2).
	self add: ((nodes at: 3) at: 2) to: (result at: 3).
	self add: ((nodes at: 3) at: 3) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotted_as_names2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 2).
	self add: ((nodes at: 1) at: 2) to: (result at: 3).
	self add: ((nodes at: 1) at: 3) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotted_name1: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result periodTokens.
	result addToken: (nodes at: 3) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotted_name2: nodes [
	| result |
	result := PyDottedNameNode new.
	result addToken: (nodes at: 1) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForelifs_opt2: nodes [
	| result |
	result := PyElifNode new.
	result elifs_opt: (nodes at: 1).
	result elifToken: (nodes at: 2).
	result elif: (nodes at: 3).
	result colonToken: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 5) at: 2).
	result iNDENTToken: ((nodes at: 5) at: 3).
	result dEDENTToken: ((nodes at: 5) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForelse_opt2: nodes [
	| result |
	result := PyElseNode new.
	result elseToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 3) at: 2).
	result iNDENTToken: ((nodes at: 3) at: 3).
	result dEDENTToken: ((nodes at: 3) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForeval_input1: nodes [
	| result |
	result := PyEvalInputNode new.
	result testlist: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result nEWLINETokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause1: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause2: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result except: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause3: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result except: (nodes at: 2).
	result asToken: (nodes at: 3).
	result another: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause4: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result except: (nodes at: 2).
	result commaToken: (nodes at: 3).
	result except2: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_list1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 3).
	self add: ((nodes at: 4) at: 2) to: (result at: 4).
	self add: ((nodes at: 4) at: 3) to: (result at: 5).
	self add: ((nodes at: 4) at: 4) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_list2: nodes [
	| result |
	result := Array new: 6.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 3).
	self add: ((nodes at: 3) at: 2) to: (result at: 4).
	self add: ((nodes at: 3) at: 3) to: (result at: 5).
	self add: ((nodes at: 3) at: 4) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexec_stmt1: nodes [
	| result |
	result := PyExecNode new.
	result execToken: (nodes at: 1).
	result expr: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexec_stmt2: nodes [
	| result |
	result := PyExecNode new.
	result execToken: (nodes at: 1).
	result expr: (nodes at: 2).
	result inToken: (nodes at: 3).
	result tests_opt: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexpr2: nodes [
	| result |
	result := PyVBarExprNode new.
	result one: (nodes at: 1).
	result orToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexpr_stmt1: nodes [
	| result |
	result := PyExprStmtNode new.
	result testlist: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result assigns.
	result addNodes: ((nodes at: 2) at: 2) to: result tos.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexpr_stmt2: nodes [
	| result |
	result := PyExprStmtNode new.
	result testlist: (nodes at: 1).
	result addToken: (nodes at: 2) to: result assigns.
	result addNode: (nodes at: 3) to: result tos.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexprlist1: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexprlist2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfactor2: nodes [
	| result |
	result := PyFactorNode new.
	result plusToken: (nodes at: 1).
	result factor: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfactor3: nodes [
	| result |
	result := PyFactorNode new.
	result minusToken: (nodes at: 1).
	result factor: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfactor4: nodes [
	| result |
	result := PyFactorNode new.
	result tildeToken: (nodes at: 1).
	result factor: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfile_input1: nodes [
	| result |
	result := PyFileInputNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfile_input2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result nEWLINETokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfile_input3: nodes [
	| result |
	result := nodes at: 1.
	result addNode: (nodes at: 2) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfinally_opt2: nodes [
	| result |
	result := PyFinallyNode new.
	result finallyToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 3) at: 2).
	result iNDENTToken: ((nodes at: 3) at: 3).
	result dEDENTToken: ((nodes at: 3) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfor_stmt1: nodes [
	| result |
	result := PyForNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result testlist: (nodes at: 4).
	result colonToken: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 6) at: 2).
	result iNDENTToken: ((nodes at: 6) at: 3).
	result dEDENTToken: ((nodes at: 6) at: 4).
	result else: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfpdef1: nodes [
	| result |
	result := PyFpdefNode new.
	result nameToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfpdef2: nodes [
	| result |
	result := PyFpdefNode new.
	result lparenToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result fpdefs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfuncdef1: nodes [
	| result |
	result := PyFuncdefNode new.
	result defToken: (nodes at: 1).
	result fname: (nodes at: 2).
	result parameters: (nodes at: 3).
	result returnAnnotation: (nodes at: 4).
	result colonToken: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 6) at: 2).
	result iNDENTToken: ((nodes at: 6) at: 3).
	result dEDENTToken: ((nodes at: 6) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfuncdef2: nodes [
	| result |
	result := PyFuncdefNode new.
	result asyncToken: (nodes at: 1).
	result defToken: (nodes at: 2).
	result fname: (nodes at: 3).
	result parameters: (nodes at: 4).
	result returnAnnotation: (nodes at: 5).
	result colonToken: (nodes at: 6).
	result addNodes: ((nodes at: 7) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 7) at: 2).
	result iNDENTToken: ((nodes at: 7) at: 3).
	result dEDENTToken: ((nodes at: 7) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForglobal_stmt1: nodes [
	| result |
	result := PyGlobalNode new.
	result globalToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result nameTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForif_stmt1: nodes [
	| result |
	result := PyIfNode new.
	result ifToken: (nodes at: 1).
	result if: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 4) at: 2).
	result iNDENTToken: ((nodes at: 4) at: 3).
	result dEDENTToken: ((nodes at: 4) at: 4).
	result elsif: (nodes at: 5).
	result else: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_as_names1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_from1: nodes [
	| result |
	result := PyImportNode new.
	result fromToken: (nodes at: 1).
	result from: (nodes at: 2).
	result importToken: (nodes at: 3).
	result timesToken: ((nodes at: 4) at: 1).
	result lparenToken: ((nodes at: 4) at: 2).
	result addTokens: ((nodes at: 4) at: 3) to: result commaTokens.
	result addObjects: ((nodes at: 4) at: 4) to: result names.
	result addTokens: ((nodes at: 4) at: 5) to: result asTokens.
	result addTokens: ((nodes at: 4) at: 6) to: result renames.
	result rparenToken: ((nodes at: 4) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_name1: nodes [
	| result |
	result := PyImportNode new.
	result importToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addObjects: ((nodes at: 2) at: 2) to: result names.
	result addTokens: ((nodes at: 2) at: 3) to: result asTokens.
	result addTokens: ((nodes at: 2) at: 4) to: result renames.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_names_star1: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_names_star2: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 2 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 6).
	result at: 7 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_names_star3: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 5).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForinit_opt2: nodes [
	| result |
	result := PyInitOptNode new.
	result equalToken: (nodes at: 1).
	result test: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForlambdef1: nodes [
	| result |
	result := PyLambdaNode new.
	result lambdaToken: (nodes at: 1).
	result arguments: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result body: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForlist_for1: nodes [
	| result |
	result := PyListForNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result tests.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForlist_for2: nodes [
	| result |
	result := PyListForNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result tests.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result list: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForlist_if1: nodes [
	| result |
	result := PyListIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForlist_if2: nodes [
	| result |
	result := PyListIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	result iter: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForlistmaker1: nodes [
	| result |
	result := PyListmakerNode new.
	result test: (nodes at: 1).
	result list_for: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFormore_args1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFormore_args2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFormore_args3: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFormore_tests1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFormore_tests2: nodes [
	| result |
	result := nodes at: 5.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	self addFirst: (nodes at: 3) to: (result at: 3).
	self addFirst: (nodes at: 4) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFornamelist1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFornamelist2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFornewline_opts1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFornot_test1: nodes [
	| result |
	result := PyNotNode new.
	result notToken: (nodes at: 1).
	result negated: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForold_lambdef1: nodes [
	| result |
	result := PyLambdaNode new.
	result lambdaToken: (nodes at: 1).
	result args: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result body: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForor_test2: nodes [
	| result |
	result := PyOrNode new.
	result one: (nodes at: 1).
	result orToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForpass_stmt1: nodes [
	| result |
	result := PyPassNode new.
	result passToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForpower2: nodes [
	| result |
	result := PyPowerNode new.
	result timesTimesToken: (nodes at: 2).
	result factor: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForprint_stmt1: nodes [
	| result |
	result := PyPrintNode new.
	result printToken: (nodes at: 1).
	result testlist: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForprint_stmt2: nodes [
	| result |
	result := PyPrintNode new.
	result printToken: (nodes at: 1).
	result greaterThanGreaterThanToken: (nodes at: 2).
	result testlist: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt1: nodes [
	| result |
	result := PyRaiseNode new.
	result raiseToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt2: nodes [
	| result |
	result := PyRaiseNode new.
	result raiseToken: (nodes at: 1).
	result arg1: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt3: nodes [
	| result |
	result := PyRaiseNode new.
	result raiseToken: (nodes at: 1).
	result arg1: (nodes at: 2).
	result addToken: (nodes at: 3) to: result commaTokens.
	result arg2: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt4: nodes [
	| result |
	result := PyRaiseNode new.
	result raiseToken: (nodes at: 1).
	result arg1: (nodes at: 2).
	result addToken: (nodes at: 3) to: result commaTokens.
	result arg2: (nodes at: 4).
	result addToken: (nodes at: 5) to: result commaTokens.
	result arg3: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForreturn_annotation_opt2: nodes [
	| result |
	result := PyReturnTypeAnnotationNode new.
	result minusGreaterThanToken: (nodes at: 1).
	result typeExpression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForreturn_stmt1: nodes [
	| result |
	result := PyReturnNode new.
	result returnToken: (nodes at: 1).
	result testlist: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForshift_expr2: nodes [
	| result |
	result := PyLShiftExprNode new.
	result one: (nodes at: 1).
	result lessThanLessThanToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForshift_expr3: nodes [
	| result |
	result := PyRShiftExprNode new.
	result one: (nodes at: 1).
	result greaterThanGreaterThanToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsimple_stmt1: nodes [
	| result |
	result := nodes at: 3.
	result addFirstNode: (nodes at: 1) to: result stmts.
	result addFirstToken: (nodes at: 2) to: result semicolonTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsimple_stmt2: nodes [
	| result |
	result := PySimpleStmtNode new.
	result addNode: (nodes at: 1) to: result stmts.
	result addToken: (nodes at: 2) to: result semicolonTokens.
	result nEWLINEToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsingle_input1: nodes [
	| result |
	result := PySingleInputNode new.
	result nEWLINEToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsingle_input2: nodes [
	| result |
	result := PySingleInputNode new.
	result statement: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsingle_input3: nodes [
	| result |
	result := PySingleInputNode new.
	result statement: (nodes at: 1).
	result nEWLINEToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsliceop2: nodes [
	| result |
	result := PySliceopNode new.
	result colonToken: (nodes at: 1).
	result test: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForstring1: nodes [
	| result |
	result := PyStringNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForstring3: nodes [
	| result |
	result := PyInterpolatedStringNode new.
	result addToken: (nodes at: 2) to: result parts.
	result addNode: (nodes at: 3) to: result expressions.
	result addTokens: ((nodes at: 4) at: 1) to: result parts.
	result addNodes: ((nodes at: 4) at: 2) to: result expressions.
	result addToken: (nodes at: 5) to: result parts.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForstrings1: nodes [
	| result |
	result := nodes at: 2.
	result addFirstNode: (nodes at: 1) to: result strings.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForstrings2: nodes [
	| result |
	result := PyStringsNode new.
	result addNode: (nodes at: 1) to: result strings.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsubscript1: nodes [
	| result |
	result := PySubscriptNode new.
	result addToken: (nodes at: 1) to: result periodTokens.
	result addToken: (nodes at: 2) to: result periodTokens.
	result addToken: (nodes at: 3) to: result periodTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsubscript2: nodes [
	| result |
	result := PySubscriptNode new.
	result test: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsubscript3: nodes [
	| result |
	result := PySubscriptNode new.
	result test: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result test2: (nodes at: 3).
	result slice: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsuite1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsuite2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	self addAll: (nodes at: 3) to: (result at: 1).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForterm2: nodes [
	| result |
	result := PyTermNode new.
	result factor: (nodes at: 1).
	result timesToken: (nodes at: 2).
	result term: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForterm3: nodes [
	| result |
	result := PyTermNode new.
	result factor: (nodes at: 1).
	result divideToken: (nodes at: 2).
	result term: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForterm4: nodes [
	| result |
	result := PyTermNode new.
	result factor: (nodes at: 1).
	result percentToken: (nodes at: 2).
	result term: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForterm5: nodes [
	| result |
	result := PyTermNode new.
	result factor: (nodes at: 1).
	result divideDivideToken: (nodes at: 2).
	result term: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortest2: nodes [
	| result |
	result := PyIfTestNode new.
	result or: (nodes at: 1).
	result ifToken: (nodes at: 2).
	result if: (nodes at: 3).
	result elseToken: (nodes at: 4).
	result else: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortest_test_opt1: nodes [
	| result |
	result := PyTestTestOptNode new.
	result test1: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortest_test_opt2: nodes [
	| result |
	result := PyTestTestOptNode new.
	result test1: (nodes at: 1).
	result commaToken: (nodes at: 2).
	result test2: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist11: nodes [
	| result |
	result := PyTestlist1Node new.
	result test: (nodes at: 1).
	result commaToken: (nodes at: 2).
	result tests: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist1: nodes [
	| result |
	result := PyTestlistNode new.
	result addNode: (nodes at: 1) to: result tests.
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result tests.
	result addToken: (nodes at: 3) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist3: nodes [
	| result |
	result := PyTestlistNode new.
	result addNode: (nodes at: 1) to: result tests.
	result addToken: (nodes at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist_comp1: nodes [
	| result |
	result := PyTestlistCompNode new.
	result test: (nodes at: 1).
	result comp_for: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist_safe1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist_safe2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailer1: nodes [
	| result |
	result := PyTrailerNode new.
	result lparenToken: (nodes at: 1).
	result rparenToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailer2: nodes [
	| result |
	result := PyTrailerNode new.
	result lparenToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result arguments.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result timesToken: ((nodes at: 2) at: 3).
	result timesTimesToken: ((nodes at: 2) at: 4).
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailer3: nodes [
	| result |
	result := PyTrailerNode new.
	result lbrackToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result subscripts.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rbrackToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailer4: nodes [
	| result |
	result := PyTrailerNode new.
	result periodToken: (nodes at: 1).
	result nameToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailer__trailer__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailer__trailer__2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailers2: nodes [
	| result |
	result := PyTrailersNode new.
	result atom: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result trailers.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortry_stmt1: nodes [
	| result |
	result := PyTryNode new.
	result tryToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result colonTokens.
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result addToken: ((nodes at: 3) at: 2) to: result nEWLINETokens.
	result addToken: ((nodes at: 3) at: 3) to: result iNDENTTokens.
	result addToken: ((nodes at: 3) at: 4) to: result dEDENTTokens.
	result addNodes: ((nodes at: 4) at: 1) to: result clauses.
	result addTokens: ((nodes at: 4) at: 2) to: result colonTokens.
	result addNodes: ((nodes at: 4) at: 3) to: result statements.
	result addTokens: ((nodes at: 4) at: 4) to: result nEWLINETokens.
	result addTokens: ((nodes at: 4) at: 5) to: result iNDENTTokens.
	result addTokens: ((nodes at: 4) at: 6) to: result dEDENTTokens.
	result else: (nodes at: 5).
	result finally: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortry_stmt2: nodes [
	| result |
	result := PyTryNode new.
	result tryToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result colonTokens.
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result addToken: ((nodes at: 3) at: 2) to: result nEWLINETokens.
	result addToken: ((nodes at: 3) at: 3) to: result iNDENTTokens.
	result addToken: ((nodes at: 3) at: 4) to: result dEDENTTokens.
	result finallyToken: (nodes at: 4).
	result addToken: (nodes at: 5) to: result colonTokens.
	result addNodes: ((nodes at: 6) at: 1) to: result statements.
	result addToken: ((nodes at: 6) at: 2) to: result nEWLINETokens.
	result addToken: ((nodes at: 6) at: 3) to: result iNDENTTokens.
	result addToken: ((nodes at: 6) at: 4) to: result dEDENTTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortype_annotation1: nodes [
	| result |
	result := PyTypeAnnotationNode new.
	result colonToken: (nodes at: 1).
	result typeExpression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist1: nodes [
	| result |
	result := nodes at: 4.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	self addFirst: (nodes at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist2: nodes [
	| result |
	result := nodes at: 5.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 4).
	self addFirst: (nodes at: 3) to: (result at: 2).
	self addFirst: (nodes at: 4) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist3: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist4: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	result at: 7 put: (nodes at: 4).
	result at: 8 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist5: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist6: nodes [
	| result |
	result := Array new: 8.
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
PythonParser >> reduceActionForvarargslist7: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 2).
	self add: (nodes at: 4) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist_opt2: nodes [
	| result |
	result := PyVarArgListNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result args.
	result addNodes: ((nodes at: 1) at: 2) to: result inits.
	result addTokens: ((nodes at: 1) at: 3) to: result commaTokens.
	result addNodes: ((nodes at: 1) at: 4) to: result parameterAnnotations.
	result timesToken: ((nodes at: 1) at: 5).
	result sname: ((nodes at: 1) at: 6).
	result timesTimesToken: ((nodes at: 1) at: 7).
	result ssname: ((nodes at: 1) at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForwhile_stmt1: nodes [
	| result |
	result := PyWhileNode new.
	result whileToken: (nodes at: 1).
	result test: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 4) at: 2).
	result iNDENTToken: ((nodes at: 4) at: 3).
	result dEDENTToken: ((nodes at: 4) at: 4).
	result else: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForwith_item1: nodes [
	| result |
	result := PyWithItemNode new.
	result test: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForwith_item2: nodes [
	| result |
	result := PyWithItemNode new.
	result test: (nodes at: 1).
	result asToken: (nodes at: 2).
	result expr: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForwith_stmt1: nodes [
	| result |
	result := PyWithNode new.
	result withToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result withItems.
	result colonToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 4) at: 2).
	result iNDENTToken: ((nodes at: 4) at: 3).
	result dEDENTToken: ((nodes at: 4) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForxor_expr2: nodes [
	| result |
	result := PyXorExprNode new.
	result one: (nodes at: 1).
	result upArrowToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForyield_expr1: nodes [
	| result |
	result := PyYieldNode new.
	result yieldToken: (nodes at: 1).
	result testlist: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForyield_stmt1: nodes [
	| result |
	result := nodes at: 1.
	^ result
]
