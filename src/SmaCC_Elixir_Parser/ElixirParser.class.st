Class {
	#name : #ElixirParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirParser class >> ambiguousTransitions [
^#(
#[ 0 37 0 250] 
#[ 0 42 1 6] 
#[ 0 114 1 14] 
#[ 0 114 1 14 1 137] 
#[ 0 114 1 14 1 141] 
#[ 0 114 1 14 1 145] 
#[ 0 114 1 14 1 149] 
#[ 0 114 1 14 1 153] 
#[ 0 114 1 14 1 157] 
#[ 0 114 1 14 1 161] 
#[ 0 114 1 14 1 165] 
#[ 0 114 1 14 1 169] 
#[ 0 114 1 14 1 173] 
#[ 0 114 1 14 1 177] 
#[ 0 114 1 14 1 181] 
#[ 0 114 1 14 1 185] 
#[ 0 114 1 14 1 189] 
#[ 0 114 1 14 1 193] 
#[ 0 122 1 18] 
#[ 0 114 1 26] 
#[ 0 114 1 26 1 137] 
#[ 0 114 1 26 1 141] 
#[ 0 114 1 26 1 145] 
#[ 0 114 1 26 1 149] 
#[ 0 114 1 26 1 153] 
#[ 0 114 1 26 1 157] 
#[ 0 114 1 26 1 161] 
#[ 0 114 1 26 1 165] 
#[ 0 114 1 26 1 169] 
#[ 0 114 1 26 1 173] 
#[ 0 114 1 26 1 177] 
#[ 0 114 1 26 1 181] 
#[ 0 114 1 26 1 185] 
#[ 0 114 1 26 1 189] 
#[ 0 114 1 26 1 193] 
#[ 0 122 1 30] 
#[ 0 114 1 182] 
#[ 0 114 1 137 1 182] 
#[ 0 114 1 141 1 182] 
#[ 0 114 1 145 1 182] 
#[ 0 114 1 149 1 182] 
#[ 0 114 1 153 1 182] 
#[ 0 114 1 157 1 182] 
#[ 0 114 1 161 1 182] 
#[ 0 114 1 165 1 182] 
#[ 0 114 1 169 1 182] 
#[ 0 114 1 173 1 182] 
#[ 0 114 1 177 1 182] 
#[ 0 114 1 181 1 182] 
#[ 0 114 1 182 1 185] 
#[ 0 114 1 182 1 189] 
#[ 0 114 1 182 1 193] 
#[ 0 122 1 186] 
#[ 1 174 1 242] 
#[ 0 170 1 246] 
#[ 0 190 1 250] 
#[ 1 70 2 18] 
#[ 1 226 2 22] 
#[ 0 130 2 142] 
#[ 0 134 2 146] 
#[ 0 138 2 150] 
#[ 3 142 4 229]
	).
]

{ #category : #'generated-accessing' }
ElixirParser class >> cacheId [
	^'2024-10-28T12:26:56.522334+08:00'
]

{ #category : #generated }
ElixirParser class >> definitionComment [
"# Modified from https://github.com/elixir-lang/elixir/blob/master/lib/elixir/src/elixir_parser.yrl (f38895cebba0fa06f686e1dd9b74e5729aebcb45)
# Apache License 2.0: https://github.com/elixir-lang/elixir/blob/master/LICENSE

%glr;

%id <identifier> <do_identifier> <block_identifier> <bracket_identifier> <paren_identifier> <op_identifier> 
	<dot_call_op> <dot_op> <eol> <kw_identifier> <map_op> <struct_op> <semicolon> <alias> <string>;

<decimal>
	: [0-9]+ (_ [0-9]+)*
	;
<octal>
	:  0 o [0-7]+
	;
<hex>
	: 0 x [0-9a-fA-F]+
	;
<binary>
	: 0 b [0-1]+
	;
<int>
	: <decimal>
	| <octal>
	| <hex>
	| <binary>
	;
<atomName>
	: (_ | <isLetter>) (_ | <isLetter> | <isDigit> | \@)* [?!]?
	| ' [^']+ '
	| \: "" [^""]+ ""
	| [+\-*/!\^<>=&]	#operators
	| \+\+ 
	| \-\- 
	| \.\.
	| <>
	| ^^^
	| \|>
	| <<[~<]
	| [~>]>>
	| <[~=]
	| ~>
	| <~>
	| <\|>
	| >=
	| ===?
	| !=
	| =~
	| !==
	| &&&?
	| \|{1,3}
	| \:\:
	| <\-
	| \\\\
	;
<atom>
	: \: <atomName>
	| \: <string>
	;
<string>
	: "" ([^\\""] | \\.)* ""
	;
<string_heredoc_line>
	: [\t ]* ("" ([^""\r\n][^\r\n]*)? | """" ([^""\r\n][^\r\n]*)? | [^""\r\n\t ][^\r\n]*)? [\r\n]+
	;
<string_heredoc_endline>
	: [\t ]* """"""
	;
<string_heredoc>	
	: """""" [\t ]* (\r\n?|\n) <string_heredoc_line>+ <string_heredoc_endline>
	;
<charlist>
	: ' ([^\\'] | \\.)* '
	;
<charlist_heredoc_line>
	: [\t ]* (' ([^'\r\n][^\r\n]*)? | '' ([^'\r\n][^\r\n]*)? | [^'\r\n\t ][^\r\n]*)? [\r\n]+
	;
<scharlist_heredoc_endline>
	: [\t ]* '''
	;
<charlist_heredoc>
	: ''' [\t ]* (\r\n?|\n) <charlist_heredoc_line>+ <scharlist_heredoc_endline>
	;
<variable>
	: (_ | <isLowercase>) (_ | <isLetter> | <isDigit>) [?!]?
	;
<whitespace>
	: [ \t]+
	;
<comment>
	: \# [^\r\n]*
	;
<eol>
	: \r\n? 
	| \n
	;
<struct_op> 
	: \% 
	;
<map_op>
	: \%\{\}
	;
<stab_op>
	: \-\>
	;
<comp_op>
	: ={2,3}
	| \!={1,2}
	| =~
	;
<when_op>
	: when
	;
<type_op>
	: \:\:
	;
<pipe_op>
	: \|>?
	;
<assoc_op>
	: =>
	;
<capture_op>
	: \&
	;
<match_op>
	: =
	;
<or_op>
	: \|{2,3}
	| or
	;
<and_op>
	: \&{2,3}
	| and
	;
<rel_op>
	: [<>]=?
	;
<arrow_op>
	: \|\>
	| \<\<\<
	| \>\>\>
	| \<\<?~
	| ~\>?\>
	| \<[\~\|]\>
	;
<in_op>
	: (not\s+)? in
	;
<three_op>
	: ^^^
	;
<two_op>
	: \+\+
	| \-\-
	| \.\.
	| \<\>
	;
<dual_op>
	: \+
	| \-
	;
<mult_op>
	: \*
	| /
	;
<unary_op>
	: \+
	| \-
	|\!
	| \^
	| not
	| \~\~\~
	;
<at_op>
	: \@
	;
<flt>
	: <decimal>\. <decimal> ([eE] [\+\-]? <decimal>)?
	| <decimal> [eE] [\+\-]? <decimal>
	;
<char>
	: \? ([^\\] | \\.)
	;
<in_match_op>
	: \<\-
	| \\\\
	;
#<dot_call_op>
#	: \.
#	;
<dot_op>
	: \.
	;
<sigilValue>
	: \/ [^\/]* \/
	| \| [^\|]* \|
	| \"" [^\""]* \""
	| \' [^\']* \'
	| \( [^\)]* \)
	| \[ [^\]]* \]
	| \{ [^\}]* \}
	| \< [^\>]* \>
	| <string_heredoc>
	| <charlist_heredoc>
	;
<sigilEscape>
	: \\ ([^xu] | (x [0-9a-fA-F]{2,2}) | (u [0-9a-fA-F]{4,4}))
	;
<sigilEscapedValue>
	: \/ ([^\/\\]|<sigilEscape>)* \/
	| \| ([^\|\\]|<sigilEscape>)* \|
	| \"" ([^\""\\]|<sigilEscape>)* \""
	| \' ([^\'\\]|<sigilEscape>)* \'
	| \( ([^\)\\]|<sigilEscape>)* \)
	| \[ ([^\]\\]|<sigilEscape>)* \]
	| \{ ([^\}\\]|<sigilEscape>)* \}
	| \< ([^\>\\]|<sigilEscape>)* \>
	| <string_heredoc>
	;
<sigilModifier>
	: [a-zA-Z]*		# what are the potential values
	;
<sigil>
	: \~ [a-z] <sigilEscapedValue> <sigilModifier>
	| \~ [A-Z] <sigilValue> <sigilModifier>
	;
	
<identifier>
	: (_ | <isLowercase>) (<isLetter> | <isDigit> |  _)* [\?\!]?
	;
<kw_identifier>
	: <identifier> \:
	| <alias> \:
	| <string> \:
	;
<alias>
	: <isUppercase> (<isLetter> | <isDigit> |  _)* [\?\!]?
	;
<semicolon>
	: \;
	;
/* 

Terminals
  identifier kw_identifier kw_identifier_safe kw_identifier_unsafe bracket_identifier
  paren_identifier do_identifier block_identifier
  fn ""end"" alias
  atom atom_safe atom_unsafe bin_string list_string sigil
  bin_heredoc list_heredoc
  dot_call_op op_identifier
  comp_op at_op unary_op and_op or_op arrow_op match_op in_op in_match_op
  type_op dual_op mult_op two_op three_op pipe_op stab_op when_op assoc_op
  capture_op rel_op
  ""true"" ""false"" ""nil"" ""do"" eol "";"" "","" "".""
  ""("" "")"" ""["" ""]"" ""{"" ""}"" ""<<"" "">>"" ""%{}"" ""%""
  int flt char
  .

Rootsymbol grammar.
*/
## Two shift/reduce conflicts coming from call_args_parens and
## one coming from empty_paren on stab.
#Expect 3.

## Changes in ops and precedence should be reflected on lib/elixir/lib/code/identifier.ex
## and lib/elixir/pages/Operators.md
## Note though the operator => in practice has lower precedence than all others,
## its entry in the table is only to support the %{user | foo => bar} syntax.
%left      ""do"";
%right     <stab_op>;     ## ->
%left      "","";
%left      <in_match_op>; ## <-, \\ (allowed in matches along =)
%right     <when_op>;     ## when
%right     <type_op>;     ## ::
%right     <pipe_op>;     ## |
%right     <assoc_op>;    ## =>
%nonassoc <capture_op>;  ## &
%right    <match_op>;    ## =
%left     <or_op>;       ## ||, |||, or
%left     <and_op>;      ## &&, &&&, and
%left     <comp_op>;     ## ==, !=, =~, ===, !==
%left     <rel_op>;      ## <, >, <=, >=
%left     <arrow_op>;    ## |>, <<<, >>>, <<~, ~>>, <~, ~>, <~>, <|>
%left     <in_op>;       ## in, not in
%left     <three_op>;    ## ^^^
%right    <two_op>;      ## ++, --, .., <>
%left     <dual_op>;     ## +, -
%left     <mult_op>;     ## *, /
%nonassoc <unary_op>;    ## +, -, !, ^, not, ~~~
%left     <dot_call_op>;
%left     <dot_op>;          ## .
%nonassoc <at_op>;
%prefix Elixir;
%suffix Node;
%root Program;
%start grammar;       ## @
#%nonassoc dot_identifier;

### MAIN FLOW OF EXPRESSIONS

grammar 
	: eoe'eoe' {{}}
	| expr_list'expressions' {{}}
	|  eoe'eoe' expr_list'expressions' {{}}
	|  expr_list'expressions' eoe'eoe' {{}}
	| eoe'eoe' expr_list 'expressions' eoe 'eoe' {{}}
	| {{}}
	;

# Note expressions are on reverse order
expr_list 
	: expr 'expression' {{}}
	| expr_list eoe 'eoe' expr 'expression' {{}}
	;

expr 
	: matched_expr
	|  no_parens_expr
	|  unmatched_expr
	;

## In Elixir we have three main call syntaxes;
## without parentheses and with do blocks. They are represented
## in the AST as matched, no_parens and unmatched.
##
## Calls without parentheses are further divided according to how
## problematic they are:
##
## (a) no_parens_one: a call with one unproblematic argument
## (e.g. `f a` or `f g a` and similar) (includes unary operators)
##
## (b) no_parens_many: a call with several arguments (e.g. `f a, b`)
##
## (c) no_parens_one_ambig: a call with one argument which is
## itself a no_parens_many or no_parens_one_ambig (e.g. `f g a, b`
## or `f g h a, b` and similar)
##
## Note, in particular, that no_parens_one_ambig expressions are
## ambiguous and are interpreted such that the outer function has
## arity 1 (e.g. `f g a, b` is interpreted as `f(g(a, b))` rather
## than `f(g(a), b)`). Hence the name, no_parens_one_ambig.
##
## The distinction is required because we can't, for example, have
## a function call with a do block as argument inside another do
## block call, unless there are parentheses:
##
##   if if true do true else false end do  #=> invalid
##   if(if true do true else false end) do #=> valid
##
## Similarly, it is not possible to nest calls without parentheses
## if their arity is more than 1:
##
##   foo a, bar b, c  #=> invalid
##   foo(a, bar b, c) #=> invalid
##   foo bar a, b     #=> valid
##   foo a, bar(b, c) #=> valid
##
## So the different grammar rules need to take into account
## if calls without parentheses are do blocks in particular
## segments and act accordingly.
matched_expr 
	: matched_expr matched_op_expr'expression' {{}}
	| unary_op_eol matched_expr {{}}
	| <at_op> 'op' matched_expr  {{}}
	| <capture_op> 'op' matched_expr {{}} 
	| no_parens_one_expr 'expression' {{}}
	| no_parens_zero_expr 'expression' {{}}
	| access_expr 'expression' {{}}
	| access_expr 'expression' <kw_identifier> 'identifier' {{}}
	;

unmatched_expr 
	: matched_expr 'matched' unmatched_op_expr'expression' {{}}
	| unmatched_expr matched_op_expr'expression'{{}}
	| unmatched_expr unmatched_op_expr'expression' {{}}
	| unmatched_expr no_parens_op_expr'expression' {{}}
	| unary_op_eol expr 'expression' {{}}
	| <at_op> 'op' expr 'expression' {{}}
	| <capture_op> 'op' expr 'expression' {{}} 
	| block_expr 'expression' {{}}
	;

no_parens_expr 
	: matched_expr'expression' no_parens_op_expr'expressoin' {{}}
	| unary_op_eol no_parens_expr {{}}
	| <at_op>'op' no_parens_expr {{}}
	| <capture_op> 'op' no_parens_expr {{}}
	| no_parens_one_ambig_expr 'expression'{{}}
	| no_parens_many_expr 'expression' {{}}
	;

block_expr 
	: dot_call_identifier'identifier' call_args_parens'call' do_block 'do_block' {{}}
	| dot_call_identifier'identifier' call_args_parens'call' call_args_parens 'call2' do_block 'do_block' {{}}
	| dot_do_identifier'identifier' do_block 'do_block' {{}}
	| dot_op_identifier'identifier' call_args_no_parens_all'call' do_block 'do_block' {{}}
	| dot_identifier'identifier' call_args_no_parens_all'call' do_block 'do_block' {{}}
	;

matched_op_expr 
	: <match_op> 'op' matched_expr'expression' {{}}
	| <dual_op> 'op' matched_expr'expression' {{}}
	| <mult_op> 'op' matched_expr'expression' {{}}
	| <two_op> 'op' matched_expr'expression' {{}}
	| <three_op> 'op' matched_expr'expression' {{}}
	| <and_op> 'op' matched_expr'expression' {{}}
	| <or_op> 'op' matched_expr'expression' {{}}
	| <in_op> 'op' matched_expr'expression' {{}}
	| <in_match_op> 'op' matched_expr'expression' {{}}
	| <type_op> 'op' matched_expr'expression' {{}}
	| <when_op> 'op' matched_expr'expression' {{}}
	| <pipe_op> 'op' matched_expr'expression' {{}}
	| <rel_op> 'op' matched_expr'expression' {{}}
	| <comp_op> 'op' matched_expr'expression' {{}}
	| <arrow_op> 'op' matched_expr'expression' {{}}
## Warn for no parens subset
	| <arrow_op> 'op' no_parens_one_expr'expression' {{}}
	;

unmatched_op_expr 
	: <match_op> 'op' unmatched_expr'expression' {{}}
	| <dual_op> 'op' unmatched_expr'expression' {{}}
	| <mult_op> 'op' unmatched_expr'expression' {{}}
	| <two_op> 'op' unmatched_expr'expression' {{}}
	| <three_op> 'op' unmatched_expr'expression' {{}}
	| <and_op> 'op' unmatched_expr'expression' {{}}
	| <or_op> 'op' unmatched_expr'expression' {{}}
	| <in_op> 'op' unmatched_expr'expression' {{}}
	| <in_match_op> 'op' unmatched_expr'expression' {{}}
	| <type_op> 'op' unmatched_expr'expression' {{}}
	| <when_op> 'op' unmatched_expr'expression' {{}}
	| <pipe_op> 'op' unmatched_expr'expression' {{}}
	| <comp_op> 'op' unmatched_expr'expression' {{}}
	| <rel_op> 'op' unmatched_expr'expression' {{}}
	| <arrow_op> 'op' unmatched_expr'expression' {{}}
	;

no_parens_op_expr 
	: <match_op> 'op' no_parens_expr'expression' {{}}
	| <dual_op> 'op' no_parens_expr'expression' {{}}
	| <mult_op> 'op' no_parens_expr'expression' {{}}
	| <two_op> 'op' no_parens_expr'expression' {{}}
	| <three_op> 'op' no_parens_expr'expression' {{}}
	| <and_op> 'op' no_parens_expr'expression' {{}}
	| <or_op> 'op' no_parens_expr'expression' {{}}
	| <in_op> 'op' no_parens_expr'expression' {{}}
	| <in_match_op> 'op' no_parens_expr'expression' {{}}
	| <type_op> 'op' no_parens_expr'expression' {{}}
	| <when_op> 'op' no_parens_expr'expression' {{}}
	| <pipe_op> 'op' no_parens_expr'expression' {{}}
	| <comp_op> 'op' no_parens_expr'expression' {{}}
	| <rel_op> 'op' no_parens_expr'expression' {{}}
	| <arrow_op> 'op' no_parens_expr'expression' {{}}
## Warn for no parens subset
	| <arrow_op> 'op' no_parens_one_ambig_expr'expression' {{}}
	| <arrow_op> 'op' no_parens_many_expr'expression' {{}}
## Allow when (and only when) with keywords
	| <when_op> 'op' call_args_no_parens_kw'expression' {{}}
	;

no_parens_one_ambig_expr 
	: dot_op_identifier'identifier' call_args_no_parens_ambig'expression'{{}}
	| dot_identifier'identifier' call_args_no_parens_ambig'expression' {{}}
	;

no_parens_many_expr 
	: dot_op_identifier'identifier' call_args_no_parens_many_strict'expression' {{}}
	| dot_identifier'identifier' call_args_no_parens_many_strict'expression' {{}}
	;

no_parens_one_expr 
	: dot_op_identifier'identifier' call_args_no_parens_one'call' {{}}
	| dot_identifier'identifier' call_args_no_parens_one'call' {{}}
	;
no_parens_zero_expr 
	: dot_do_identifier 
	| dot_identifier 
	;

## From this point on, we just have constructs that can be
## used with the access syntax. Notice that (dot_)identifier
## is not included in this list simply because the tokenizer
## marks identifiers followed by brackets as bracket_identifier.
access_expr 
	: bracket_at_expr 
	| bracket_expr 
	| <capture_op> 'op' <int> 'int' {{Capture}}
	| fn_eoe'fn' stab'stab' end_eoe'end' {{Lambda}}
	| open_paren 'leftParen' stab'stab' close_paren'rightParen' {{}}
	| open_paren 'leftParen' stab'stab' "";"" close_paren'rightParen' {{}}
	| open_paren 'leftParen' "";"" 'semi' stab'stab'"";"" close_paren'rightParen' {{}}
	| open_paren 'leftParen' "";"" 'semi' stab'stab' close_paren'rightParen' {{}}
	| open_paren 'leftParen' "";"" 'semi' close_paren'rightParen' {{}}
	| empty_paren 
	| number 
	| list 
	| map 
	| tuple 
	| ""true"" 'true' {{True}}
	| ""false"" 'false' {{False}}
	| ""nil"" 'nil' {{Nil}}
	| bin_string 
	| list_string 
	| bin_heredoc 
	| list_heredoc 
	| bit_string 
	| <sigil> 'sigil' {{Sigil}}
	| <atom> 'atom' {{Atom}}
#	| atom_safe 		# what are these?
#	| atom_unsafe 
	| dot_alias 
	| parens_call 
	;
	
bin_string
	: <string> 'string' {{}}
	;
	
list_string
	: <charlist> 'string' {{}}
	;
	
bin_heredoc
	: <string_heredoc> 'string' {{}}
	;
	
list_heredoc
	: <charlist_heredoc> 'string' {{}}
	;

number 
	: <int> 'int'  {{}}
	| <flt> 'float' {{}}
	| <char> 'char' {{}}
	;
## Also used by maps and structs
parens_call 
	: dot_call_identifier'identifier' call_args_parens'call' {{}}
	| dot_call_identifier'identifier' call_args_parens'call' call_args_parens'call2' {{}}
	;
	
bracket_value	# added
	: kw_base
	| container_expr
	;
bracket_values	# added
	: bracket_value#'value'{{}}
	| bracket_values "","" 'com' bracket_value#'value' {{}}
	;

bracket_arg 
#	: open_bracket kw close_bracket 
#	| open_bracket container_expr close_bracket 
#	| open_bracket container_expr "","" close_bracket 
	: open_bracket 'leftBracket' bracket_values'arg'? "","" 'com'? close_bracket'rightBracket'{{}}	# modified
	;

bracket_expr 
	: dot_bracket_identifier'identifier' bracket_arg'arg' {{}}
	| access_expr'identifier' bracket_arg'arg' {{}}
	;

bracket_at_expr 
	: <at_op> 'op' dot_bracket_identifier'identifier' bracket_arg'arg' {{}}
	| <at_op> 'op' access_expr'identifier' bracket_arg'arg' {{}}
	;

## Blocks

do_block 
	: do_eoe'do' ""end"" 'end' {{}}
	| do_eoe'do' stab'stab' end_eoe 'end' {{}}
	| do_eoe'do' block_list'block' ""end"" 'end' {{}}
	| do_eoe'do' stab_eoe'stab' block_list'block' ""end"" 'end' {{}}
	;

eoe 
	: <eol> 
	| <semicolon>
	;

fn_eoe 
	: ""fn"" 'fn' {{}}
	| ""fn"" 'fn' eoe 'eoe' {{}}
	;

do_eoe 
	: ""do"" 'do' {{}}
	| ""do"" 'do' eoe 'eoe' {{}}
	;

end_eoe 
	: ""end"" 'end' {{}}
	| eoe 'eoe' ""end"" 'end' {{}}
	;

block_eoe 
	: <block_identifier> 'identifier' {{}}
	| <block_identifier> 'identifier' eoe'eoe' {{}}
	;

stab 
	: stab_expr 'stab' {{}}
	| stab eoe 'eoe' stab_expr 'stab' {{}}
	;

stab_eoe
	 : stab 'stab' {{}}
	| stab'stab' eoe 'eoe' 
	;

## Here, `element(1, Token)` is the stab operator,
## while `element(2, Token)` is the expression.
stab_expr 
	: expr 'expression'  {{}}
	| stab_op_eol_and_expr'expression' {{}}
	| empty_paren'args' stab_op_eol_and_expr'expression' {{}}
	| empty_paren 'args'<when_op> expr 'guard' stab_op_eol_and_expr'expression' {{}}
	| call_args_no_parens_all'args' stab_op_eol_and_expr'expression' {{}}
	| stab_parens_many'args' stab_op_eol_and_expr'expression' {{}}
	| stab_parens_many'args' <when_op> expr 'guard' stab_op_eol_and_expr'expression' {{}}
	;

stab_op_eol_and_expr 
	: <stab_op> 'op' expr 'body'? {{}}
	;

block_item 
	: block_eoe'block' stab_eoe'stab' {{}}
	| block_eoe'block' {{}}
	;

block_list 
	: block_item'item' {{}}
	| block_item'item' block_list {{}}
	;

## Helpers

open_paren 
	: ""("" 
	;
close_paren 
	: "")"" 
	;

empty_paren 
	: open_paren 'leftParen' "")"" 'close' {{}}
	;

open_bracket  
	: ""[""
	;
close_bracket 
	: ""]"" 
	;

open_bit  
	: ""<<""
	;
close_bit 
	: "">>"" 
	;

open_curly  
	: ""{""
	;
close_curly 
	: ""}"" 'rightCurly'
	;

# Operators

unary_op_eol 
	: <unary_op> 'op'
	| <dual_op> 'op'
	;

# Dot operator

dot_identifier 
	: <identifier>'identifier' {{}}
	| matched_expr'expression' <dot_op> 'dot' <identifier>'identifier' {{}}
	;

dot_alias 
	: <alias>'alias' {{}}
	| matched_expr'expression' <dot_op> 'op' <alias>'alias' {{}}
	| matched_expr'expression' <dot_op> 'op' open_curly 'leftCurly' ""}"" 'rightCurly' {{}}
	| matched_expr'expression' <dot_op> 'op' open_curly 'leftCurly' container_args'alias' close_curly'rightCurly' {{}}
	;

dot_op_identifier 
	: <op_identifier> {{}}
	| matched_expr <dot_op> 'op' <op_identifier> {{}}
	;

dot_do_identifier 
	: <do_identifier> 'identifier' {{}}
	| matched_expr'expression' <dot_op> 'op' <do_identifier>'identifier' {{}}
	;

dot_bracket_identifier 
	: <bracket_identifier>'identifier' {{}}
	| matched_expr'expression' <dot_op> 'op' <bracket_identifier>'identifier' {{}}
	;

dot_paren_identifier
	 : <paren_identifier>'identifier' {{}}
	| matched_expr'expression' <dot_op> 'op' <paren_identifier>'identifier' {{}}
	;

dot_call_identifier 
	: dot_paren_identifier'identifier' {{}}
	| matched_expr'identifier' <dot_call_op> 'op' {{}}
	;

# Function calls with no parentheses

call_args_no_parens_expr 
	: matched_expr 
	| no_parens_expr 
	;

call_args_no_parens_comma_expr 
	: matched_expr'expression' "","" 'com' call_args_no_parens_expr'args' {{}}
	| call_args_no_parens_comma_expr "","" 'com' call_args_no_parens_expr'args' {{}}
	;

call_args_no_parens_all 
	: call_args_no_parens_one 
	| call_args_no_parens_ambig 
	| call_args_no_parens_many 
	;

call_args_no_parens_one 
	: call_args_no_parens_kw 
	| matched_expr 
	;

call_args_no_parens_ambig 
	: no_parens_expr 
	;

call_args_no_parens_many 
	: matched_expr 'expression' "","" 'com' call_args_no_parens_kw'args' {{}}
	| call_args_no_parens_comma_expr'expression' {{}}
	| call_args_no_parens_comma_expr'expression' "","" 'com' call_args_no_parens_kw'args' {{}}
	;

call_args_no_parens_many_strict 
	: call_args_no_parens_many'args' {{}}
	| open_paren 'leftParen' call_args_no_parens_kw'args' close_paren'rightParen' {{}}
	| open_paren 'leftParen' call_args_no_parens_many'args' close_paren'rightParen' {{}}
	;

stab_parens_many 
	: open_paren 'leftParen' call_args_no_parens_kw'args' close_paren {{}}
	| open_paren 'leftParen' call_args_no_parens_many'args' close_paren {{}}
	;

# Containers

container_expr 
	: matched_expr 
	| unmatched_expr 
	| no_parens_expr 
	;

container_args_base 
	: container_expr 'expression' {{}}
	| container_args_base "","" 'com' container_expr'expression' {{}}
	;

container_args 
	: container_args_base 'base'{{}}
	| container_args_base 'base'"","" 'com' kw'kw'? {{}}
	;

# Function calls with parentheses

call_args_parens_expr 
	: matched_expr 
	| unmatched_expr 
	| no_parens_expr 
	;

call_args_parens_base 
	: call_args_parens_expr 'arg' {{}}
	| call_args_parens_base "","" 'com' call_args_parens_expr 'arg' {{}}
	;

call_args_parens 
	: open_paren 'leftParen' "")"" 'rightParen' {{}}
	| open_paren 'leftParen' no_parens_expr'args' close_paren 'rightParen' {{}}
	| open_paren 'leftParen' kw_base'kw' close_paren 'rightParen' {{}}
	| open_paren 'leftParen' kw_base'kw' "","" 'com' close_paren 'rightParen' {{}}
	| open_paren 'leftParen' call_args_parens_base'args' close_paren 'rightParen' {{}}
	| open_paren 'leftParen' call_args_parens_base'args' "","" 'com' kw_base'kw' close_paren 'rightParen' {{}}
	| open_paren 'leftParen' call_args_parens_base'args' "","" 'com' kw_base'kw' "","" 'com' close_paren 'rightParen' {{}}
	;

# KV

kw_eol 
	: <kw_identifier>
#	| <kw_identifier_safe> 			# what is this???
#	| <kw_identifier_unsafe> 		# what is this???
	;

kw_base 
	: kw_eol 'key' container_expr 'value'{{}}
	| kw_base "","" 'com' kw_eol 'key' container_expr 'value' {{}}
	;

kw 
	: kw_base "",""?
	;

call_args_no_parens_kw_expr 
	: kw_eol'key' matched_expr'value' {{}}
	| kw_eol'key' no_parens_expr'value' {{}}
	;

call_args_no_parens_kw 
	: call_args_no_parens_kw_expr 'kw' {{}}
	| call_args_no_parens_kw_expr 'kw' "","" 'com' call_args_no_parens_kw {{}}
	;

# Lists

list_args 
	: kw'kw' {{}}
	| container_args_base 'container'{{}}
	| container_args_base 'container' "","" 'com' {{}}
	| container_args_base 'container' "","" 'com'kw 'kw' {{}}
	;

list 
	: open_bracket 'leftBracket' ""]"" 'close' {{}}
	| open_bracket 'leftBracket' list_args 'args' close_bracket 'close' {{}}
	;

# Tuple

tuple 
	: open_curly 'leftCurly' ""}"" 'rightCurly' {{}}
	| open_curly 'leftCurly' container_args'elements' close_curly {{}}
	;

# Bitstrings

bit_string 
	: open_bit 'open' "">>"" 'close' {{}}
	| open_bit 'open' container_args 'args' close_bit 'close'{{}}
	;

# Map and structs

assoc_op_eol 
	: <assoc_op> 'op'
	;

assoc_expr 
	: matched_expr'key' assoc_op_eol matched_expr 'value' {{}}
	| unmatched_expr 'key'assoc_op_eol unmatched_expr 'value' {{}}
	| matched_expr 'key'assoc_op_eol unmatched_expr 'value'{{}}
	| unmatched_expr'key' assoc_op_eol matched_expr 'value'{{}}
	| dot_identifier 'value' {{}}
	| parens_call 'value'{{}}
	;

assoc_update 
	: matched_expr'expression' <pipe_op> 'pipe' assoc_expr'associatoin' {{}}
	| unmatched_expr'expression' <pipe_op> 'pipe' assoc_expr'association' {{}}
	;

assoc_update_kw 
	: matched_expr 'expression' <pipe_op> 'pipe' kw 'kw' {{}}
	| unmatched_expr 'expression' <pipe_op> 'pipe' kw'kw' {{}}
	;

assoc_base 
	: assoc_expr 'assoc'{{}} 
	| assoc_base "","" 'com' assoc_expr 'assoc'{{}}
	;

assoc 
	: assoc_base 'assoc'
	| assoc_base 'assoc' "","" 'com' {{}}
	;

map_op 
	: <map_op> 'cen'
	;

map_close 
	: kw'kw' close_curly 'close' {{}}
	| assoc'association' close_curly 'close' {{}}
	| assoc_base'association' "","" 'com' kw'kw' close_curly 'close' {{}}
	;

map_args 
	: open_curly 'leftCurly' ""}"" 'rightCurly' {{}}
	| open_curly 'leftCurly' map_close'rightCurly' {{}}
	| open_curly 'leftCurly' assoc_update'association' close_curly 'rightCurly'{{}}
	| open_curly 'leftCurly' assoc_update'association' "","" 'com' close_curly'rightCurly' {{}}
	| open_curly 'leftCurly' assoc_update'association' "","" 'com' map_close 'rightCurly'{{}}
	| open_curly 'leftCurly' assoc_update_kw'association' close_curly'rightCurly' {{}}
	;

struct_expr 
	: <atom> 'identifier' {{}}
	| dot_alias'identifier' {{}}
	| dot_identifier'identifier' {{}}
	| <at_op> 'op' struct_expr {{}}
	| unary_op_eol struct_expr {{}}
	| parens_call'identifier' {{}}
	;

map 
	: map_op map_args'args' {{}}
	| <struct_op> 'cen' struct_expr 'struct' ? map_args'args' {{}}			# added ?
	;"
]

{ #category : #'file types' }
ElixirParser class >> fileExtensions [
	^ #('.exs' '.ex')
]

{ #category : #generated }
ElixirParser class >> reduceTable [
^#(
	#(57 0 #reduceActionForgrammar6: 5580806 false) 
	#(95 1 #liftFirstValue: 16171009 false) 
	#(100 1 #liftFirstValue: 16334849 false) 
	#(98 1 #liftFirstValue: 16281601 false) 
	#(71 1 #reduceActionForaccess_expr16: 12620816 false) 
	#(85 1 #reduceActionForfn_eoe1: 14948353 false) 
	#(71 1 #reduceActionForaccess_expr17: 12620817 false) 
	#(71 1 #reduceActionForaccess_expr15: 12620815 false) 
	#(102 1 #liftFirstValue: 16381953 false) 
	#(76 1 #reduceActionFornumber1: 13691905 false) 
	#(71 1 #reduceActionForaccess_expr24: 12620824 false) 
	#(72 1 #reduceActionForbin_string1: 13496321 false) 
	#(74 1 #reduceActionForbin_heredoc1: 13585409 false) 
	#(73 1 #reduceActionForlist_string1: 13539329 false) 
	#(75 1 #reduceActionForlist_heredoc1: 13637633 false) 
	#(84 1 #liftFirstValue: 14913537 false) 
	#(141 1 #liftFirstValue: 22045697 false) 
	#(104 1 #liftFirstValue: 16456706 false) 
	#(104 1 #liftFirstValue: 16456705 false) 
	#(76 1 #reduceActionFornumber2: 13691906 false) 
	#(76 1 #reduceActionFornumber3: 13691907 false) 
	#(71 1 #reduceActionForaccess_expr23: 12620823 false) 
	#(105 1 #reduceActionFordot_identifier1: 16529409 false) 
	#(106 1 #reduceActionFordot_alias1: 16658433 false) 
	#(84 1 #liftFirstValue: 14913538 false) 
	#(57 1 #reduceActionForgrammar2: 5580802 false) 
	#(58 1 #reduceActionForexpr_list1: 5828609 false) 
	#(59 1 #liftFirstValue: 5917697 false) 
	#(59 1 #liftFirstValue: 5917699 false) 
	#(59 1 #liftFirstValue: 5917698 false) 
	#(61 1 #reduceActionForunmatched_expr8: 7949320 false) 
	#(62 1 #reduceActionForno_parens_expr5: 8350725 false) 
	#(62 1 #reduceActionForno_parens_expr5: 8350726 false) 
	#(60 1 #reduceActionFormatched_expr5: 7588869 false) 
	#(60 1 #reduceActionFormatched_expr5: 7588870 false) 
	#(60 1 #reduceActionFormatched_expr5: 7588871 false) 
	#(71 1 #liftFirstValue: 12620818 false) 
	#(71 1 #liftFirstValue: 12620819 false) 
	#(71 1 #liftFirstValue: 12620820 false) 
	#(71 1 #liftFirstValue: 12620821 false) 
	#(71 1 #liftFirstValue: 12620811 false) 
	#(71 1 #liftFirstValue: 12620826 false) 
	#(71 1 #liftFirstValue: 12620802 false) 
	#(71 1 #liftFirstValue: 12620801 false) 
	#(57 1 #reduceActionForgrammar1: 5580801 false) 
	#(71 1 #liftFirstValue: 12620810 false) 
	#(70 1 #liftFirstValue: 12301314 false) 
	#(71 1 #liftFirstValue: 12620825 false) 
	#(70 1 #liftFirstValue: 12301313 false) 
	#(111 1 #reduceActionFordot_call_identifier1: 17506305 false) 
	#(71 1 #liftFirstValue: 12620812 false) 
	#(71 1 #liftFirstValue: 12620814 false) 
	#(71 1 #liftFirstValue: 12620822 false) 
	#(71 1 #liftFirstValue: 12620813 false) 
	#(109 1 #reduceActionFordot_bracket_identifier1: 17207297 false) 
	#(108 1 #reduceActionFordot_do_identifier1: 17069057 false) 
	#(107 1 #reduceActionFordot_op_identifier1: 16968705 false) 
	#(110 1 #reduceActionFordot_paren_identifier1: 17359873 false) 
	#(85 2 #reduceActionForfn_eoe2: 14948354 false) 
	#(144 1 #reduceActionForstruct_expr1: 22717441 false) 
	#(144 1 #reduceActionForstruct_expr1: 22717446 false) 
	#(144 1 #reduceActionForstruct_expr1: 22717443 false) 
	#(144 1 #reduceActionForstruct_expr1: 22717442 false) 
	#(145 2 #reduceActionFormap2: 22930434 false) 
	#(71 2 #reduceActionForaccess_expr3: 12620803 false) 
	#(61 2 #reduceActionForunmatched_expr7: 7949319 false) 
	#(60 2 #reduceActionFormatched_expr4: 7588868 false) 
	#(62 2 #reduceActionFormatched_expr4: 8350724 false) 
	#(61 2 #reduceActionForunmatched_expr7: 7949318 false) 
	#(60 2 #reduceActionFormatched_expr4: 7588867 false) 
	#(62 2 #reduceActionFormatched_expr4: 8350723 false) 
	#(57 2 #reduceActionForgrammar4: 5580804 false) 
	#(60 2 #reduceActionFormatched_expr1: 7588865 false) 
	#(61 2 #reduceActionForunmatched_expr1: 7949313 false) 
	#(62 2 #reduceActionForno_parens_expr1: 8350721 false) 
	#(111 2 #reduceActionFordot_call_identifier2: 17506306 false) 
	#(61 2 #reduceActionFormatched_expr1: 7949314 false) 
	#(61 2 #reduceActionFormatched_expr1: 7949315 false) 
	#(61 2 #reduceActionFormatched_expr1: 7949316 false) 
	#(60 2 #reduceActionFormatched_expr8: 7588872 false) 
	#(81 2 #reduceActionForbracket_expr2: 14405634 false) 
	#(57 2 #reduceActionForgrammar3: 5580803 false) 
	#(92 1 #reduceActionForstab_op_eol_and_expr1: 15933441 false) 
	#(126 1 #liftFirstValue: 20048897 false) 
	#(91 1 #reduceActionForstab_expr1: 15476737 false) 
	#(115 1 #liftFirstValue: 18046978 false) 
	#(116 1 #liftFirstValue: 18121729 false) 
	#(89 1 #reduceActionForstab1: 15238145 false) 
	#(91 1 #reduceActionForstab_expr1: 15476738 false) 
	#(117 1 #reduceActionForcall_args_no_parens_many2: 18172930 false) 
	#(114 1 #liftFirstValue: 17928193 false) 
	#(114 1 #liftFirstValue: 17928194 false) 
	#(114 1 #liftFirstValue: 17928195 false) 
	#(130 1 #reduceActionForcall_args_no_parens_kw1: 20439041 false) 
	#(115 1 #liftFirstValue: 18046977 false) 
	#(97 2 #reduceActionForempty_paren1: 16220161 false) 
	#(132 2 #reduceActionForlist1: 20774913 false) 
	#(120 1 #liftFirstValue: 18861057 false) 
	#(120 1 #liftFirstValue: 18861058 false) 
	#(120 1 #liftFirstValue: 18861059 false) 
	#(121 1 #reduceActionForcontainer_args_base1: 18937857 false) 
	#(131 1 #reduceActionForlist_args2: 20594690 false) 
	#(128 1 #liftFirstValue: 20296705 false) 
	#(131 1 #reduceActionForlist_args1: 20594689 false) 
	#(134 2 #reduceActionForbit_string1: 21062657 false) 
	#(122 1 #reduceActionForcontainer_args1: 19066881 false) 
	#(133 2 #reduceActionFortuple1: 20918273 false) 
	#(61 2 #reduceActionForunmatched_expr7: 7949317 false) 
	#(60 2 #reduceActionFormatched_expr4: 7588866 false) 
	#(62 2 #reduceActionFormatched_expr4: 8350722 false) 
	#(69 2 #reduceActionForno_parens_one_expr2: 12141570 false) 
	#(67 2 #reduceActionForno_parens_one_ambig_expr2: 11768834 false) 
	#(118 1 #reduceActionForcall_args_no_parens_many_strict1: 18422785 false) 
	#(68 2 #reduceActionForno_parens_many_expr2: 11951106 false) 
	#(69 2 #reduceActionForno_parens_one_expr2: 12141569 false) 
	#(67 2 #reduceActionForno_parens_one_ambig_expr2: 11768833 false) 
	#(68 2 #reduceActionForno_parens_many_expr2: 11951105 false) 
	#(86 1 #reduceActionFordo_eoe1: 15007745 false) 
	#(63 2 #reduceActionForblock_expr3: 8638467 false) 
	#(81 2 #reduceActionForbracket_expr2: 14405633 false) 
	#(77 2 #reduceActionForparens_call1: 13803521 false) 
	#(145 2 #reduceActionFormap2: 22930433 false) 
	#(144 2 #reduceActionFormatched_expr4: 22717444 false) 
	#(143 2 #reduceActionFormap_args1: 22246401 false) 
	#(136 1 #reduceActionForassoc_expr6: 21238790 false) 
	#(136 1 #reduceActionForassoc_expr6: 21238789 false) 
	#(139 1 #reduceActionForassoc_base1: 21881857 false) 
	#(140 1 #liftFirstValue: 21974017 false) 
	#(143 2 #reduceActionFormap_args1: 22246402 false) 
	#(144 2 #reduceActionFormatched_expr4: 22717445 false) 
	#(145 3 #reduceActionFormap3: 22930435 false) 
	#(82 3 #reduceActionForbracket_at_expr2: 14535682 false) 
	#(82 3 #reduceActionForbracket_at_expr2: 14535681 false) 
	#(58 3 #reduceActionForexpr_list2: 5828610 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086990 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931789 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723341 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086987 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931787 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723339 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723346 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086986 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931786 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723338 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086988 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931788 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723340 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086977 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931777 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723329 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086983 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931783 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723335 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086982 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931782 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723334 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086989 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931790 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723342 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086991 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931791 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723343 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723344 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723345 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086992 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086984 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931784 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723336 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086981 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931781 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723333 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086980 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931780 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723332 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086978 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931778 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723330 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086979 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931779 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723331 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9086985 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9931785 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10723337 false) 
	#(105 3 #reduceActionFordot_identifier2: 16529410 false) 
	#(106 3 #reduceActionFordot_alias2: 16658434 false) 
	#(109 3 #reduceActionFordot_bracket_identifier2: 17207298 false) 
	#(108 3 #reduceActionFordot_do_identifier2: 17069058 false) 
	#(107 3 #reduceActionFordot_op_identifier2: 16968706 false) 
	#(110 3 #reduceActionFordot_paren_identifier2: 17359874 false) 
	#(99 1 #liftFirstValue: 16307201 false) 
	#(79 1 #liftFirstValue: 14030849 false) 
	#(80 2 #reduceActionForbracket_arg1: 14144513 false) 
	#(78 1 #liftFirstValue: 13975554 false) 
	#(78 1 #liftFirstValue: 13975553 false) 
	#(57 3 #reduceActionForgrammar5: 5580805 false) 
	#(92 2 #reduceActionForstab_op_eol_and_expr2: 15933442 false) 
	#(87 1 #reduceActionForend_eoe1: 15067137 false) 
	#(71 3 #reduceActionForaccess_expr4: 12620804 false) 
	#(91 2 #reduceActionForstab_expr3: 15476739 false) 
	#(91 2 #reduceActionForstab_expr3: 15476741 false) 
	#(91 2 #reduceActionForstab_expr3: 15476742 false) 
	#(129 2 #reduceActionForcall_args_no_parens_kw_expr1: 20321281 false) 
	#(129 2 #reduceActionForcall_args_no_parens_kw_expr1: 20321282 false) 
	#(96 1 #liftFirstValue: 16194561 false) 
	#(71 3 #reduceActionForaccess_expr9: 12620809 false) 
	#(71 3 #reduceActionForaccess_expr5: 12620805 false) 
	#(131 2 #reduceActionForlist_args3: 20594691 false) 
	#(127 2 #reduceActionForkw_base1: 20175873 false) 
	#(128 2 #liftFirstValue: 20296706 false) 
	#(132 3 #reduceActionForlist2: 20774914 false) 
	#(122 2 #reduceActionForcontainer_args2: 19066882 false) 
	#(101 1 #liftFirstValue: 16357377 false) 
	#(134 3 #reduceActionForbit_string2: 21062658 false) 
	#(103 1 #liftFirstValue: 16405505 false) 
	#(133 3 #reduceActionFortuple2: 20918274 false) 
	#(63 3 #reduceActionForblock_expr5: 8638469 false) 
	#(63 3 #reduceActionForblock_expr5: 8638468 false) 
	#(86 2 #reduceActionFordo_eoe2: 15007746 false) 
	#(83 2 #reduceActionFordo_block1: 14706689 false) 
	#(93 1 #reduceActionForblock_item2: 15996930 false) 
	#(90 1 #reduceActionForstab_eoe1: 15314945 false) 
	#(94 1 #reduceActionForblock_list1: 16079873 false) 
	#(88 1 #reduceActionForblock_eoe1: 15131649 false) 
	#(125 2 #reduceActionForcall_args_parens1: 19429377 false) 
	#(123 1 #liftFirstValue: 19211265 false) 
	#(123 1 #liftFirstValue: 19211266 false) 
	#(123 1 #liftFirstValue: 19211267 false) 
	#(124 1 #reduceActionForcall_args_parens_base1: 19295233 false) 
	#(63 3 #reduceActionForblock_expr5: 8638465 false) 
	#(77 3 #reduceActionForparens_call2: 13803522 false) 
	#(135 1 #liftFirstValue: 21200897 false) 
	#(142 2 #reduceActionFormap_close1: 22076417 false) 
	#(143 3 #reduceActionFormap_args3: 22246403 false) 
	#(143 3 #reduceActionFormap_args3: 22246406 false) 
	#(140 2 #reduceActionForassoc2: 21974018 false) 
	#(142 2 #reduceActionFormap_close2: 22076418 false) 
	#(106 4 #reduceActionFordot_alias3: 16658435 false) 
	#(80 3 #reduceActionForbracket_arg2: 14144514 false) 
	#(80 3 #reduceActionForbracket_arg3: 14144515 false) 
	#(112 1 #liftFirstValue: 17666049 false) 
	#(112 1 #liftFirstValue: 17666050 false) 
	#(113 3 #reduceActionForcall_args_no_parens_comma_expr1: 17733633 false) 
	#(117 3 #reduceActionForcall_args_no_parens_many1: 18172929 false) 
	#(87 2 #reduceActionForend_eoe2: 15067138 false) 
	#(89 3 #reduceActionForstab2: 15238146 false) 
	#(119 3 #reduceActionForstab_parens_many2: 18674690 false) 
	#(119 3 #reduceActionForstab_parens_many2: 18674689 false) 
	#(113 3 #reduceActionForcall_args_no_parens_comma_expr2: 17733634 false) 
	#(117 3 #reduceActionForcall_args_no_parens_many1: 18172931 false) 
	#(130 3 #reduceActionForcall_args_no_parens_kw2: 20439042 false) 
	#(71 4 #reduceActionForaccess_expr8: 12620808 false) 
	#(71 4 #reduceActionForaccess_expr6: 12620806 false) 
	#(121 3 #reduceActionForcontainer_args_base2: 18937858 false) 
	#(131 3 #reduceActionForlist_args4: 20594692 false) 
	#(122 3 #reduceActionForcontainer_args3: 19066883 false) 
	#(118 3 #reduceActionForcall_args_no_parens_many_strict3: 18422787 false) 
	#(118 3 #reduceActionForcall_args_no_parens_many_strict3: 18422786 false) 
	#(93 2 #reduceActionForblock_item1: 15996929 false) 
	#(90 2 #liftFirstValue: 15314946 false) 
	#(83 3 #reduceActionFordo_block2: 14706690 false) 
	#(94 2 #reduceActionForblock_list2: 16079874 false) 
	#(83 3 #reduceActionFordo_block3: 14706691 false) 
	#(88 2 #reduceActionForblock_eoe2: 15131650 false) 
	#(125 3 #reduceActionForcall_args_parens2: 19429378 false) 
	#(125 3 #reduceActionForcall_args_parens2: 19429381 false) 
	#(125 3 #reduceActionForcall_args_parens3: 19429379 false) 
	#(63 4 #reduceActionForblock_expr2: 8638466 false) 
	#(138 3 #reduceActionForassoc_update_kw1: 21738497 false) 
	#(137 3 #reduceActionForassoc_update1: 21566465 false) 
	#(136 3 #reduceActionForassoc_expr1: 21238785 false) 
	#(136 3 #reduceActionForassoc_expr1: 21238787 false) 
	#(138 3 #reduceActionForassoc_update_kw1: 21738498 false) 
	#(137 3 #reduceActionForassoc_update2: 21566466 false) 
	#(136 3 #reduceActionForassoc_expr1: 21238788 false) 
	#(136 3 #reduceActionForassoc_expr1: 21238786 false) 
	#(143 4 #reduceActionFormap_args4: 22246404 false) 
	#(143 4 #reduceActionFormap_args4: 22246405 false) 
	#(139 3 #reduceActionForassoc_base2: 21881858 false) 
	#(106 5 #reduceActionFordot_alias4: 16658436 false) 
	#(79 3 #liftFirstValue: 14030850 false) 
	#(80 4 #reduceActionForbracket_arg4: 14144516 false) 
	#(91 4 #reduceActionForstab_expr4: 15476740 false) 
	#(91 4 #reduceActionForstab_expr4: 15476743 false) 
	#(71 5 #reduceActionForaccess_expr7: 12620807 false) 
	#(127 4 #reduceActionForkw_base2: 20175874 false) 
	#(83 4 #reduceActionFordo_block4: 14706692 false) 
	#(124 3 #reduceActionForcall_args_parens_base2: 19295234 false) 
	#(125 4 #reduceActionForcall_args_parens4: 19429380 false) 
	#(142 4 #reduceActionFormap_close3: 22076419 false) 
	#(125 5 #reduceActionForcall_args_parens6: 19429382 false) 
	#(125 6 #reduceActionForcall_args_parens7: 19429383 false)
	).
]

{ #category : #examples }
ElixirParser class >> samples [
	"Some sample expressions from https://hexdocs.pm/elixir/syntax-reference.html"

	<gtExample>
	^ #('test = """
    this
    is
    a
    test
"""' 'test = """
    This
    Is
    A
    Test
    """' 'case 1 do
  2 -> 3
  4 -> 5
end' 'cond do
  true -> false
end' '(integer(), boolean() -> integer())' 'fn
  x, y -> x + y
end' 'quote do
  %{1 => 2, 3 => 4}
end' '~s/f#{"o"}o/' '~S/f#{"o"}o/' 'sum(1, 2, 3)' '{:sum, meta, [1, 2, 3]}' 'quote do
  sum()
end' 'quote do
  sum
end' 'quote do
  1 + 2
end' 'quote do
  foo.(1, 2, 3)
end' 'quote do
  Foo.Bar.Baz
end' 'quote do
  __MODULE__.Bar.Baz
end' 'quote do
  [1, 2, 3]
end' 'quote do
  {1, 2}
end' 'quote do
  {1, 2, 3}
end' 'quote do
  <<1, 2, 3>>
end' 'quote do
  1
  2
  3
end' 'quote do 1; 2; 3; end' 'quote do
  case 1 do
    2 -> 3
    4 -> 5
  end
end' 'quote do
  cond do
    true -> false
  end
end' 'quote do
  (1, 2 -> 3
   4, 5 -> 6)
end' 'quote do
  fn
    1, 2 -> 3
    4, 5 -> 6
  end
end' '1_000_000' '0xABCD' '0o01234567' '0b10101010' '?é' 'quote do
  opts[arg]
end' 'quote do
  sum 1, 2, 3
end' '[{:foo, 1}, {:bar, 2}]' '[foo: 1, bar: 2]' '[{:"foo bar", 1}, {:"bar baz", 2}] == ["foo bar": 1, "bar baz": 2]' 'if(condition, do: this, else: that)' 'if(condition, [do: this, else: that])' 'if(condition, [{:do, this}, {:else, that}])' 'if true do
  this
else
  that
end' 'if(true, do: (this), else: (that))' 'if true do
  this
  that
end' 'if(true, do: (
  this
  that
))' 'defmodule Math do
  def add(a, b) do
    a + b
  end
end' 'defmodule(Math, [
  {:do, def(add(a, b), [{:do, a + b}])}
])' 'query = from w in Weather,
      where: w.prcp > 0,
      where: w.temp < 20,
     select: w') collect: [ :each | self parse: each ]
]

{ #category : #'generated-accessing' }
ElixirParser class >> scannerClass [
	^ElixirScanner
]

{ #category : #generated }
ElixirParser class >> startingStateForgrammar [
	^ 1
]

{ #category : #generated }
ElixirParser class >> symbolNames [
	^ #('"("' '")"' '","' '";"' '"<<"' '">>"' '"["' '"]"' '"do"' '"end"' '"false"' '"fn"' '"nil"' '"true"' '"{"' '"}"' '<int>' '<atom>' '<string>' '<string_heredoc>' '<charlist>' '<charlist_heredoc>' '<whitespace>' '<comment>' '<eol>' '<struct_op>' '<map_op>' '<stab_op>' '<comp_op>' '<when_op>' '<type_op>' '<pipe_op>' '<assoc_op>' '<capture_op>' '<match_op>' '<or_op>' '<and_op>' '<rel_op>' '<arrow_op>' '<in_op>' '<three_op>' '<two_op>' '<dual_op>' '<mult_op>' '<unary_op>' '<at_op>' '<flt>' '<char>' '<in_match_op>' '<dot_op>' '<sigil>' '<identifier>' '<kw_identifier>' '<alias>' '<semicolon>' 'B e g i n' 'grammar' 'expr_list' 'expr' 'matched_expr' 'unmatched_expr' 'no_parens_expr' 'block_expr' 'matched_op_expr' 'unmatched_op_expr' 'no_parens_op_expr' 'no_parens_one_ambig_expr' 'no_parens_many_expr' 'no_parens_one_expr' 'no_parens_zero_expr' 'access_expr' 'bin_string' 'list_string' 'bin_heredoc' 'list_heredoc' 'number' 'parens_call' 'bracket_value' 'bracket_values' 'bracket_arg' 'bracket_expr' 'bracket_at_expr' 'do_block' 'eoe' 'fn_eoe' 'do_eoe' 'end_eoe' 'block_eoe' 'stab' 'stab_eoe' 'stab_expr' 'stab_op_eol_and_expr' 'block_item' 'block_list' 'open_paren' 'close_paren' 'empty_paren' 'open_bracket' 'close_bracket' 'open_bit' 'close_bit' 'open_curly' 'close_curly' 'unary_op_eol' 'dot_identifier' 'dot_alias' 'dot_op_identifier' 'dot_do_identifier' 'dot_bracket_identifier' 'dot_paren_identifier' 'dot_call_identifier' 'call_args_no_parens_expr' 'call_args_no_parens_comma_expr' 'call_args_no_parens_all' 'call_args_no_parens_one' 'call_args_no_parens_ambig' 'call_args_no_parens_many' 'call_args_no_parens_many_strict' 'stab_parens_many' 'container_expr' 'container_args_base' 'container_args' 'call_args_parens_expr' 'call_args_parens_base' 'call_args_parens' 'kw_eol' 'kw_base' 'kw' 'call_args_no_parens_kw_expr' 'call_args_no_parens_kw' 'list_args' 'list' 'tuple' 'bit_string' 'assoc_op_eol' 'assoc_expr' 'assoc_update' 'assoc_update_kw' 'assoc_base' 'assoc' 'map_op' 'map_close' 'map_args' 'struct_expr' 'map' '<block_identifier>' '<bracket_identifier>' '<do_identifier>' '<dot_call_op>' '<op_identifier>' '<paren_identifier>' 'E O F' 'error')
]

{ #category : #generated }
ElixirParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirGrammarNode #ElixirGrammarNode #ElixirExprListNode #ElixirProgramNode #ElixirMatchedExprNode #ElixirUnmatchedExprNode #ElixirNoParensExprNode #ElixirBlockExprNode #ElixirMatchedOpExprNode #ElixirUnmatchedOpExprNode #ElixirNoParensOpExprNode #ElixirNoParensOneAmbigExprNode #ElixirNoParensManyExprNode #ElixirNoParensOneExprNode #ElixirProgramNode #ElixirProgramNode #ElixirBinStringNode #ElixirListStringNode #ElixirBinHeredocNode #ElixirListHeredocNode #ElixirNumberNode #ElixirParensCallNode #ElixirProgramNode #ElixirProgramNode #ElixirBracketArgNode #ElixirBracketExprNode #ElixirBracketAtExprNode #ElixirDoBlockNode #SmaCCToken #ElixirFnEoeNode #ElixirDoEoeNode #ElixirEndEoeNode #ElixirBlockEoeNode #ElixirStabNode #ElixirProgramNode #ElixirStabExprNode #ElixirStabOpEolAndExprNode #ElixirBlockItemNode #ElixirBlockListNode #SmaCCToken #SmaCCToken #ElixirEmptyParenNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirDotIdentifierNode #ElixirDotAliasNode #ElixirDotOpIdentifierNode #ElixirDotDoIdentifierNode #ElixirDotBracketIdentifierNode #ElixirDotParenIdentifierNode #ElixirDotCallIdentifierNode #ElixirProgramNode #ElixirCallArgsNoParensCommaExprNode #ElixirProgramNode #ElixirProgramNode #ElixirNoParensExprNode #ElixirCallArgsNoParensManyNode #ElixirCallArgsNoParensManyStrictNode #ElixirStabParensManyNode #ElixirProgramNode #ElixirContainerArgsBaseNode #ElixirContainerArgsNode #ElixirProgramNode #ElixirCallArgsParensBaseNode #ElixirCallArgsParensNode #SmaCCToken #ElixirKwBaseNode #ElixirKwBaseNode #ElixirCallArgsNoParensKwExprNode #ElixirCallArgsNoParensKwNode #ElixirListArgsNode #ElixirListNode #ElixirTupleNode #ElixirBitStringNode #SmaCCToken #ElixirAssocExprNode #ElixirAssocUpdateNode #ElixirAssocUpdateKwNode #ElixirAssocBaseNode #ElixirProgramNode #SmaCCToken #ElixirMapCloseNode #ElixirMapArgsNode #ElixirStructExprNode #ElixirMapNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
ElixirParser class >> transitionTable [
^#(
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 197 0 25 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 197 0 55 0 117 0 57 0 121 0 58 0 125 0 59 0 129 0 60 0 133 0 61 0 125 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 197 0 84 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151 0 6 0 152] 
#[0 0 10 0 1 0 2 0 4 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 0 14 0 1 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[0 0 18 0 1 0 3 0 5 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 0 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 26 0 1 0 26 0 5 0 26 0 7 0 26 0 11 0 26 0 12 0 26 0 13 0 26 0 14 0 26 0 15 0 26 0 17 0 26 0 18 0 26 0 19 0 26 0 20 0 26 0 21 0 26 0 22 1 37 0 25 0 26 0 26 0 26 0 27 0 26 0 28 0 26 0 34 0 26 0 43 0 26 0 45 0 26 0 46 0 26 0 47 0 26 0 48 0 26 0 51 0 26 0 52 0 26 0 53 0 26 0 54 1 37 0 55 1 37 0 84 0 26 0 147 0 26 0 148 0 26 0 150 0 26 0 151] 
#[0 0 30 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 34 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 38 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 0 42 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 46 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 50 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 58 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 62 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 66 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 146 0 147 0 148 0 150 0 151 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 1 61 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 1 65 0 43 1 65 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 53 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 1 57 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 1 61 0 102 1 65 0 104 1 69 0 105 1 73 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 1 89 0 143 1 93 0 144 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 70 0 15] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 101 0 59 1 105 0 60 0 133 0 61 1 109 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 74 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[0 0 78 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 113 0 59 1 117 0 60 0 133 0 61 1 121 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 1 125 0 71 1 125 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 81 1 125 0 82 0 201 0 85 0 205 0 95 1 125 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 1 125 0 106 0 237 0 107 0 241 0 108 1 129 0 109 0 249 0 110 0 253 0 111 1 125 0 132 1 125 0 133 1 125 0 134 1 13 0 141 1 125 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 146 0 147 0 148 0 149 0 150 0 151 0 152] 
#[0 0 98 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 102 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 146 0 147 0 148 0 150 0 151 0 152] 
#[0 0 0 0 152] 
#[1 1 133 0 25 1 133 0 55 1 133 0 84 0 106 0 152] 
#[0 0 110 0 25 0 55 0 152] 
#[1 0 114 0 2 0 114 0 4 0 114 0 10 0 114 0 25 0 114 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 0 114 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 114 0 146 1 213 0 149 0 114 0 152] 
#[1 0 118 0 2 0 118 0 3 0 118 0 4 0 118 0 6 0 118 0 8 0 118 0 10 0 118 0 16 0 118 0 25 0 118 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 0 118 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 0 118 0 55 1 217 0 64 1 221 0 65 1 225 0 66 0 118 0 146 0 118 0 152] 
#[0 0 122 0 2 0 3 0 4 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 0 126 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 0 130 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 134 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 138 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 142 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 6 1 237 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 16 0 146 0 25 0 146 0 28 0 146 0 29 0 146 0 30 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 44 0 146 0 49 0 146 0 50 1 229 0 53 0 146 0 55 1 233 0 80 1 237 0 98 0 146 0 146 0 146 0 149 0 146 0 152] 
#[0 0 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 158 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 241 0 58 0 125 0 59 0 129 0 60 0 133 0 61 0 125 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151 0 182 0 152] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 9 0 89 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 21 0 1 2 65 0 2 2 69 0 4 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 73 0 89 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 186 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 2 77 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 60 2 85 0 61 2 93 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 97 0 121 2 101 0 126 2 105 0 127 2 109 0 128 2 113 0 131 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 2 117 0 6 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 93 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 121 0 121 2 125 0 122 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 2 129 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 93 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 121 0 121 2 133 0 122 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 137 0 59 2 141 0 60 0 133 0 61 2 145 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 165 0 1 0 190 0 2 0 190 0 3 0 190 0 4 0 217 0 5 0 190 0 6 0 213 0 7 0 190 0 8 0 190 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 190 0 25 0 69 0 26 1 13 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 2 169 0 43 0 190 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 190 0 55 2 157 0 60 2 189 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 165 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 181 0 114 2 185 0 115 2 189 0 116 2 193 0 117 2 197 0 118 2 53 0 126 2 57 0 129 2 185 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 0 190 0 146 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151 0 190 0 152] 
#[0 0 194 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 165 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 60 2 209 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 165 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 201 0 114 2 205 0 115 2 209 0 116 2 193 0 117 2 213 0 118 2 53 0 126 2 57 0 129 2 205 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 6 0 198 0 8 2 217 0 9 0 198 0 10 0 198 0 16 0 198 0 25 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 0 198 0 44 0 198 0 49 0 198 0 50 0 198 0 55 2 221 0 83 2 225 0 86 0 198 0 146 0 198 0 149 0 198 0 152] 
#[1 1 237 0 7 2 229 0 80 1 237 0 98] 
#[0 0 202 0 1] 
#[1 2 233 0 1 2 233 0 95 2 237 0 125] 
#[0 0 206 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 210 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 214 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 241 0 15 2 241 0 102 2 245 0 143] 
#[0 0 218 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 222 0 7] 
#[0 0 226 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 230 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 0 234 0 1] 
#[0 0 238 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[1 0 46 0 7 0 242 0 15 0 46 0 29 0 46 0 30 0 46 0 31 0 46 0 32 0 46 0 35 0 46 0 36 0 46 0 37 0 46 0 38 0 46 0 39 0 46 0 40 0 46 0 41 0 46 0 42 0 46 0 43 0 46 0 44 0 46 0 49 0 46 0 50 0 46 0 53 0 46 0 149] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 253 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 1 65 0 43 1 65 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 9 0 60 0 153 0 69 0 157 0 70 1 125 0 71 1 125 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 57 0 77 1 125 0 81 1 125 0 82 0 201 0 85 0 205 0 95 1 125 0 97 0 213 0 98 0 217 0 100 0 221 0 102 1 65 0 104 1 69 0 105 1 73 0 106 1 77 0 107 0 157 0 108 1 129 0 109 0 249 0 110 1 85 0 111 1 125 0 132 1 125 0 133 1 125 0 134 1 13 0 141 3 13 0 144 1 125 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 0 170 0 7 0 246 0 15 0 170 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 44 0 170 0 49 0 170 0 50 0 170 0 53 0 170 0 149] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 3 77 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 3 81 0 60 3 85 0 61 2 93 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 3 93 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 121 0 121 2 133 0 122 2 101 0 126 2 105 0 127 3 97 0 128 0 161 0 132 0 161 0 133 0 161 0 134 3 101 0 136 3 105 0 137 3 109 0 138 3 113 0 139 3 117 0 140 1 13 0 141 3 121 0 142 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 1 65 0 43 1 65 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 125 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 1 57 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 1 65 0 104 1 69 0 105 1 73 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 3 129 0 144 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 7 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 1 45 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 3 1 0 43 0 190 0 44 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 3 133 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 3 137 0 115 2 53 0 126 2 57 0 129 3 137 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151] 
#[1 0 194 0 7 0 254 0 15 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 49 0 194 0 50 0 194 0 53 0 194 0 149] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 3 133 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 3 141 0 115 2 53 0 126 2 57 0 129 3 141 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 233 0 1 2 233 0 95 3 145 0 125] 
#[0 1 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 241 0 15 2 241 0 102 3 149 0 143] 
#[0 0 11 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 1 10 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 15 0 2 0 15 0 3 0 15 0 4 0 15 0 6 0 15 0 8 0 15 0 10 0 15 0 16 0 15 0 25 0 15 0 28 0 19 0 29 0 23 0 30 0 27 0 31 0 31 0 32 0 15 0 33 0 35 0 35 0 39 0 36 0 43 0 37 0 47 0 38 0 51 0 39 0 55 0 40 0 59 0 41 0 63 0 42 0 67 0 43 0 71 0 44 0 75 0 49 1 197 0 50 0 15 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 15 0 146 1 213 0 149 0 15 0 152] 
#[0 0 79 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 22 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 83 0 2 0 83 0 3 0 83 0 4 0 83 0 6 0 83 0 8 0 83 0 10 0 83 0 16 0 83 0 25 0 83 0 28 0 87 0 29 0 91 0 30 0 95 0 31 0 99 0 32 0 83 0 33 0 103 0 35 0 107 0 36 0 111 0 37 0 115 0 38 0 119 0 39 0 123 0 40 0 127 0 41 0 131 0 42 0 135 0 43 0 139 0 44 0 143 0 49 1 26 0 50 0 83 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 83 0 146 1 26 0 149 0 83 0 152] 
#[0 0 147 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 6 1 237 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 16 0 146 0 25 0 146 0 28 0 146 0 29 0 146 0 30 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 44 0 146 0 49 0 146 0 50 1 229 0 53 0 146 0 55 3 153 0 80 1 237 0 98 0 146 0 146 0 146 0 149 0 146 0 152] 
#[1 1 237 0 7 3 157 0 80 1 237 0 98] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 161 0 59 0 129 0 60 0 133 0 61 3 161 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151 1 34 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 165 0 60 3 169 0 61 3 173 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 3 177 0 60 3 181 0 61 3 185 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 53 0 126 2 57 0 129 3 189 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 193 0 60 3 197 0 61 3 201 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 205 0 60 3 209 0 61 3 213 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 217 0 60 3 221 0 61 3 225 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 229 0 60 3 233 0 61 3 237 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 241 0 60 3 245 0 61 3 249 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 253 0 60 4 1 0 61 4 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 9 0 60 4 13 0 61 4 17 0 62 0 141 0 63 4 21 0 67 4 25 0 68 4 29 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 33 0 60 4 37 0 61 4 41 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 45 0 60 4 49 0 61 4 53 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 57 0 60 4 61 0 61 4 65 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 69 0 60 4 73 0 61 4 77 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 81 0 60 4 85 0 61 4 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 93 0 60 4 97 0 61 4 101 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 4 113 0 15 4 105 0 52 4 109 0 54 4 113 0 102 4 117 0 147 4 121 0 148 4 125 0 150 4 129 0 151] 
#[0 1 38 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 42 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 46 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 50 0 1] 
#[0 1 54 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 58 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 62 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 66 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 70 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 4 133 0 3 0 217 0 5 0 213 0 7 4 149 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 60 2 85 0 61 4 145 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 4 145 0 78 4 145 0 79 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 4 149 0 99 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 4 145 0 120 2 101 0 126 4 157 0 127 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 4 161 0 25 4 161 0 55 4 161 0 84 1 74 0 152] 
#[1 0 205 0 1 1 78 0 2 1 78 0 4 0 217 0 5 0 213 0 7 1 78 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 1 78 0 25 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 78 0 55 4 165 0 59 0 129 0 60 0 133 0 61 4 165 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 78 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 1 82 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[0 1 86 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 0 114 0 2 4 169 0 3 0 114 0 4 0 114 0 10 0 114 0 25 1 90 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 0 114 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 114 0 146 1 213 0 149] 
#[1 0 122 0 2 0 122 0 4 0 122 0 10 0 122 0 25 1 94 0 28 0 122 0 55 0 122 0 146] 
#[1 4 173 0 10 4 177 0 25 4 177 0 55 4 177 0 84 4 181 0 87] 
#[0 1 98 0 2 0 4 0 10 0 25 0 55 0 146] 
#[0 1 102 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 2 21 0 1 2 65 0 2 2 69 0 4 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 73 0 89 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 4 185 0 117 2 49 0 119 2 53 0 126 2 57 0 129 4 189 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 186 0 2 0 186 0 3 0 186 0 4 0 186 0 7 0 186 0 10 0 186 0 25 1 245 0 28 0 186 0 29 4 193 0 30 0 186 0 31 0 186 0 32 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 42 0 186 0 43 0 186 0 44 0 186 0 49 0 186 0 50 0 186 0 53 0 186 0 55 4 197 0 92 0 186 0 146 0 186 0 149] 
#[1 1 106 0 2 4 201 0 3 1 106 0 4 1 106 0 6 1 106 0 8 1 106 0 9 1 106 0 10 1 106 0 16 1 106 0 25 1 106 0 28 1 106 0 29 1 106 0 30 1 106 0 31 1 106 0 32 1 106 0 33 1 106 0 35 1 106 0 36 1 106 0 37 1 106 0 38 1 106 0 39 1 106 0 40 1 106 0 41 1 106 0 42 1 106 0 43 1 106 0 44 1 106 0 49 1 106 0 50 1 106 0 55 1 106 0 146 1 106 0 149 1 106 0 152] 
#[1 1 245 0 28 4 205 0 92] 
#[0 1 110 0 28] 
#[0 1 114 0 9 0 28] 
#[0 1 118 0 9 0 28] 
#[1 1 245 0 28 4 209 0 30 4 213 0 92] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 217 0 60 4 221 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 1 122 0 2 4 225 0 3 1 122 0 4 1 122 0 6 1 122 0 8 1 122 0 9 1 122 0 10 1 122 0 16 1 122 0 25 1 122 0 28 1 122 0 29 1 122 0 30 1 122 0 31 1 122 0 32 1 122 0 33 1 122 0 35 1 122 0 36 1 122 0 37 1 122 0 38 1 122 0 39 1 122 0 40 1 122 0 41 1 122 0 42 1 122 0 43 1 122 0 44 1 122 0 49 1 122 0 50 1 122 0 55 1 122 0 146 1 122 0 149 1 122 0 152] 
#[0 1 126 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 130 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 21 0 1 4 237 0 2 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 4 233 0 89 2 13 0 91 2 17 0 92 2 21 0 95 4 237 0 96 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 4 249 0 2 4 241 0 4 4 245 0 25 4 245 0 55 4 245 0 84 4 249 0 96] 
#[0 1 134 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 1 138 0 2 1 138 0 3 1 138 0 6 1 138 0 8 1 138 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 1 213 0 149] 
#[1 1 142 0 2 1 142 0 3 1 142 0 6 1 142 0 8 1 142 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[0 1 146 0 2 0 3 0 6 0 8 0 16] 
#[0 1 150 0 3 0 6 0 8 0 16] 
#[1 4 253 0 3 1 154 0 8] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 5 1 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 5 1 0 120 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 5 5 0 3 1 158 0 6 1 158 0 8 1 158 0 16] 
#[0 1 162 0 8] 
#[0 5 9 0 8 0 99] 
#[0 1 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 5 13 0 3 1 170 0 6 1 170 0 16] 
#[0 5 21 0 6 0 101] 
#[0 1 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 5 29 0 16 0 103] 
#[0 1 178 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 151 0 2 0 151 0 3 0 151 0 4 0 151 0 6 0 151 0 8 0 151 0 10 0 151 0 16 0 151 0 25 0 151 0 28 0 155 0 29 0 159 0 30 0 163 0 31 0 167 0 32 0 151 0 33 0 171 0 35 0 175 0 36 0 179 0 37 0 183 0 38 0 187 0 39 0 191 0 40 0 195 0 41 0 199 0 42 0 203 0 43 0 207 0 44 0 211 0 49 1 197 0 50 0 151 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 151 0 146 1 213 0 149 0 151 0 152] 
#[0 0 215 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 33 0 60 5 37 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 41 0 60 5 45 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 1 125 0 71 1 125 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 81 1 125 0 82 0 201 0 85 0 205 0 95 1 125 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 1 125 0 106 2 177 0 107 0 157 0 108 1 129 0 109 0 249 0 110 1 85 0 111 1 125 0 132 1 125 0 133 1 125 0 134 1 13 0 141 1 125 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 1 90 0 2 4 169 0 3 1 90 0 4 1 90 0 6 1 90 0 8 1 90 0 9 1 90 0 10 1 90 0 16 1 90 0 25 1 90 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 1 90 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 1 90 0 55 1 201 0 64 1 209 0 66 1 90 0 146 1 213 0 149 1 90 0 152] 
#[0 1 94 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 21 0 1 2 65 0 2 2 69 0 4 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 73 0 89 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 5 109 0 117 2 49 0 119 2 53 0 126 2 57 0 129 5 113 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 117 0 60 5 121 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 165 0 1 0 190 0 2 0 190 0 3 0 190 0 4 0 217 0 5 0 190 0 6 0 213 0 7 0 190 0 8 0 190 0 9 0 190 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 190 0 25 0 69 0 26 1 13 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 2 169 0 43 0 190 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 190 0 55 2 157 0 60 5 125 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 165 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 3 137 0 115 5 125 0 116 5 129 0 117 2 197 0 118 2 53 0 126 2 57 0 129 3 137 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 0 190 0 146 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151 0 190 0 152] 
#[1 2 165 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 60 5 133 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 165 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 3 141 0 115 5 133 0 116 5 129 0 117 2 213 0 118 2 53 0 126 2 57 0 129 3 141 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 217 0 9 5 137 0 83 2 225 0 86] 
#[1 1 190 0 2 1 190 0 3 1 190 0 4 1 190 0 6 1 190 0 8 1 110 0 9 1 190 0 10 1 190 0 16 1 190 0 25 1 190 0 28 1 190 0 29 1 190 0 30 1 190 0 31 1 190 0 32 1 190 0 33 1 190 0 35 1 190 0 36 1 190 0 37 1 190 0 38 1 190 0 39 1 190 0 40 1 190 0 41 1 190 0 42 1 190 0 43 1 190 0 44 1 190 0 49 1 190 0 50 1 190 0 55 1 190 0 146 1 190 0 149 1 190 0 152] 
#[1 1 194 0 2 1 194 0 3 1 194 0 4 1 194 0 6 1 194 0 8 1 114 0 9 1 194 0 10 1 194 0 16 1 194 0 25 1 194 0 28 1 194 0 29 1 194 0 30 1 194 0 31 1 194 0 32 1 194 0 33 1 194 0 35 1 194 0 36 1 194 0 37 1 194 0 38 1 194 0 39 1 194 0 40 1 194 0 41 1 194 0 42 1 194 0 43 1 194 0 44 1 194 0 49 1 194 0 55 1 194 0 146 1 194 0 152] 
#[1 1 198 0 2 1 198 0 3 1 198 0 4 1 198 0 6 1 198 0 8 1 118 0 9 1 198 0 10 1 198 0 16 1 198 0 25 1 198 0 28 1 198 0 29 1 198 0 30 1 198 0 31 1 198 0 32 1 198 0 33 1 198 0 35 1 198 0 36 1 198 0 37 1 198 0 38 1 198 0 39 1 198 0 40 1 198 0 41 1 198 0 42 1 198 0 43 1 198 0 44 1 198 0 49 1 198 0 55 1 198 0 146 1 198 0 152] 
#[0 1 202 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 217 0 9 5 141 0 83 2 225 0 86] 
#[1 1 206 0 2 1 206 0 3 1 206 0 4 1 206 0 6 1 206 0 8 1 110 0 9 1 206 0 10 1 206 0 16 1 206 0 25 1 206 0 28 1 206 0 29 1 206 0 30 1 206 0 31 1 206 0 32 1 206 0 33 1 206 0 35 1 206 0 36 1 206 0 37 1 206 0 38 1 206 0 39 1 206 0 40 1 206 0 41 1 206 0 42 1 206 0 43 1 206 0 44 1 206 0 49 1 206 0 50 1 206 0 55 1 206 0 146 1 206 0 149 1 206 0 152] 
#[1 1 210 0 2 1 210 0 3 1 210 0 4 1 210 0 6 1 210 0 8 1 114 0 9 1 210 0 10 1 210 0 16 1 210 0 25 1 210 0 28 1 210 0 29 1 210 0 30 1 210 0 31 1 210 0 32 1 210 0 33 1 210 0 35 1 210 0 36 1 210 0 37 1 210 0 38 1 210 0 39 1 210 0 40 1 210 0 41 1 210 0 42 1 210 0 43 1 210 0 44 1 210 0 49 1 210 0 55 1 210 0 146 1 210 0 152] 
#[0 1 214 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 1 218 0 1 1 218 0 5 1 218 0 7 1 218 0 10 1 218 0 11 1 218 0 12 1 218 0 13 1 218 0 14 1 218 0 15 1 218 0 17 1 218 0 18 1 218 0 19 1 218 0 20 1 218 0 21 1 218 0 22 5 145 0 25 1 218 0 26 1 218 0 27 1 218 0 28 1 218 0 34 1 218 0 43 1 218 0 45 1 218 0 46 1 218 0 47 1 218 0 48 1 218 0 51 1 218 0 52 1 218 0 53 1 218 0 54 5 145 0 55 5 145 0 84 1 218 0 146 1 218 0 147 1 218 0 148 1 218 0 150 1 218 0 151] 
#[0 1 222 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 5 149 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 5 153 0 88 5 157 0 89 5 161 0 90 2 13 0 91 2 17 0 92 5 165 0 93 5 169 0 94 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 5 173 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 1 226 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 5 177 0 2 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 5 181 0 60 5 185 0 61 5 189 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 5 193 0 123 5 197 0 124 2 101 0 126 5 201 0 127 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 233 0 1 1 230 0 2 1 230 0 3 1 230 0 4 1 230 0 6 1 230 0 7 1 230 0 8 2 217 0 9 1 230 0 10 1 230 0 16 1 230 0 25 1 230 0 28 1 230 0 29 1 230 0 30 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 40 1 230 0 41 1 230 0 42 1 230 0 43 1 230 0 44 1 230 0 49 1 230 0 50 1 230 0 53 1 230 0 55 5 205 0 83 2 225 0 86 2 233 0 95 5 209 0 125 1 230 0 146 1 230 0 149 1 230 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 5 213 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 5 225 0 60 5 229 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 5 237 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 3 97 0 128 0 161 0 132 0 161 0 133 0 161 0 134 3 101 0 136 3 105 0 137 3 109 0 138 3 113 0 139 3 117 0 140 1 13 0 141 3 121 0 142 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 1 234 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 9 0 60 0 153 0 69 0 157 0 70 1 125 0 71 1 125 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 81 1 125 0 82 0 201 0 85 0 205 0 95 1 125 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 1 125 0 106 1 77 0 107 0 157 0 108 1 129 0 109 0 249 0 110 1 85 0 111 1 125 0 132 1 125 0 133 1 125 0 134 1 13 0 141 1 125 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 3 17 0 29 1 14 0 30 1 14 0 31 1 14 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 1 14 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 125 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 1 45 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 3 1 0 43 0 190 0 44 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 3 133 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 3 137 0 115 2 53 0 126 2 57 0 129 3 137 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151] 
#[1 1 26 0 29 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 35 1 26 0 36 1 26 0 37 1 26 0 38 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 44 1 26 0 49 1 26 0 50 1 201 0 64 1 26 0 149] 
#[0 1 238 0 15] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 245 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 249 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 253 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 1 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 5 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 9 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 13 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 17 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 21 0 60 4 29 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 25 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 29 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 33 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 37 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 41 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 45 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 1 242 0 2 1 242 0 3 1 242 0 4 1 242 0 6 0 219 0 7 1 242 0 8 1 242 0 9 1 242 0 10 1 242 0 16 1 242 0 25 1 242 0 28 0 219 0 29 0 219 0 30 0 219 0 31 0 219 0 32 1 242 0 33 0 219 0 35 0 219 0 36 0 219 0 37 0 219 0 38 0 219 0 39 0 219 0 40 0 219 0 41 0 219 0 42 0 219 0 43 0 219 0 44 0 219 0 49 0 219 0 50 0 219 0 53 1 242 0 55 1 242 0 146 0 219 0 149 1 242 0 152] 
#[1 1 138 0 3 1 138 0 16 1 137 0 29 1 141 0 30 1 145 0 31 6 49 0 32 6 57 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 6 57 0 135 1 213 0 149] 
#[1 1 142 0 3 1 142 0 16 1 137 0 29 1 141 0 30 1 145 0 31 6 61 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 65 0 135] 
#[1 0 223 0 3 0 170 0 7 0 223 0 16 0 170 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 33 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 44 0 170 0 49 0 170 0 50 0 170 0 53 0 170 0 149] 
#[1 2 165 0 1 0 227 0 3 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 227 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 2 169 0 43 0 190 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 60 2 189 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 165 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 181 0 114 2 185 0 115 2 189 0 116 2 193 0 117 2 197 0 118 2 53 0 126 2 57 0 129 2 185 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151] 
#[0 6 69 0 16 0 103] 
#[0 1 254 0 3 0 16] 
#[1 6 73 0 3 6 77 0 16 6 77 0 103] 
#[0 6 81 0 16 0 103] 
#[1 6 85 0 3 2 2 0 16] 
#[0 6 89 0 16 0 103] 
#[0 2 6 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[0 2 10 0 15] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[0 1 190 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 233 0 1 1 230 0 2 1 230 0 3 1 230 0 4 1 230 0 6 1 230 0 7 1 230 0 8 1 230 0 9 1 230 0 10 1 230 0 15 1 230 0 16 1 230 0 25 1 230 0 28 1 230 0 29 1 230 0 30 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 40 1 230 0 41 1 230 0 42 1 230 0 43 1 230 0 44 1 230 0 49 1 230 0 50 1 230 0 53 1 230 0 55 2 233 0 95 6 93 0 125 1 230 0 146 1 230 0 149 1 230 0 152] 
#[0 2 14 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 231 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 235 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 2 26 0 25 0 55 0 152] 
#[1 2 30 0 2 2 30 0 3 2 30 0 4 2 30 0 6 2 30 0 8 2 30 0 10 2 30 0 16 2 30 0 25 2 30 0 28 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 30 0 49 1 197 0 50 2 30 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 30 0 146 1 213 0 149 2 30 0 152] 
#[1 2 34 0 2 2 34 0 3 2 34 0 4 2 34 0 6 2 34 0 8 2 34 0 10 2 34 0 16 2 34 0 25 2 34 0 28 2 34 0 29 2 34 0 30 2 34 0 31 2 34 0 32 2 34 0 33 2 34 0 35 2 34 0 36 2 34 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 34 0 49 2 34 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 34 0 146 2 34 0 152] 
#[0 2 38 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 42 0 2 2 42 0 3 2 42 0 4 2 42 0 6 2 42 0 8 2 42 0 10 2 42 0 16 2 42 0 25 2 42 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 42 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 42 0 49 1 197 0 50 2 42 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 42 0 146 1 213 0 149 2 42 0 152] 
#[1 2 46 0 2 2 46 0 3 2 46 0 4 2 46 0 6 2 46 0 8 2 46 0 10 2 46 0 16 2 46 0 25 2 46 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 46 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 46 0 49 2 46 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 46 0 146 2 46 0 152] 
#[0 2 50 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 2 54 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 58 0 2 2 58 0 3 2 58 0 4 2 58 0 6 2 58 0 8 2 58 0 10 2 58 0 16 2 58 0 25 2 58 0 28 1 137 0 29 2 58 0 30 1 145 0 31 1 149 0 32 2 58 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 58 0 49 1 197 0 50 2 58 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 58 0 146 1 213 0 149 2 58 0 152] 
#[1 2 62 0 2 2 62 0 3 2 62 0 4 2 62 0 6 2 62 0 8 2 62 0 10 2 62 0 16 2 62 0 25 2 62 0 28 1 137 0 29 2 62 0 30 1 145 0 31 1 149 0 32 2 62 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 62 0 49 2 62 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 62 0 146 2 62 0 152] 
#[0 2 66 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 70 0 2 2 70 0 3 2 70 0 4 2 70 0 6 2 70 0 8 2 70 0 10 2 70 0 16 2 70 0 25 2 70 0 28 1 137 0 29 2 70 0 30 2 70 0 31 1 149 0 32 2 70 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 70 0 49 1 197 0 50 2 70 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 70 0 146 1 213 0 149 2 70 0 152] 
#[1 2 74 0 2 2 74 0 3 2 74 0 4 2 74 0 6 2 74 0 8 2 74 0 10 2 74 0 16 2 74 0 25 2 74 0 28 1 137 0 29 2 74 0 30 2 74 0 31 1 149 0 32 2 74 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 74 0 49 2 74 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 74 0 146 2 74 0 152] 
#[0 2 78 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 82 0 2 2 82 0 3 2 82 0 4 2 82 0 6 2 82 0 8 2 82 0 10 2 82 0 16 2 82 0 25 2 82 0 28 1 137 0 29 2 82 0 30 2 82 0 31 2 82 0 32 2 82 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 82 0 49 1 197 0 50 2 82 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 82 0 146 1 213 0 149 2 82 0 152] 
#[1 2 86 0 2 2 86 0 3 2 86 0 4 2 86 0 6 2 86 0 8 2 86 0 10 2 86 0 16 2 86 0 25 2 86 0 28 1 137 0 29 2 86 0 30 2 86 0 31 2 86 0 32 2 86 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 86 0 49 2 86 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 86 0 146 2 86 0 152] 
#[0 2 90 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 6 2 94 0 8 2 94 0 10 2 94 0 16 2 94 0 25 2 94 0 28 1 137 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 94 0 49 1 197 0 50 2 94 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 94 0 146 1 213 0 149 2 94 0 152] 
#[1 2 98 0 2 2 98 0 3 2 98 0 4 2 98 0 6 2 98 0 8 2 98 0 10 2 98 0 16 2 98 0 25 2 98 0 28 1 137 0 29 2 98 0 30 2 98 0 31 2 98 0 32 2 98 0 33 2 98 0 35 2 98 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 98 0 49 2 98 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 98 0 146 2 98 0 152] 
#[0 2 102 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 6 2 106 0 8 2 106 0 10 2 106 0 16 2 106 0 25 2 106 0 28 1 137 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 35 2 106 0 36 2 106 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 106 0 49 1 197 0 50 2 106 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 106 0 146 1 213 0 149 2 106 0 152] 
#[1 2 110 0 2 2 110 0 3 2 110 0 4 2 110 0 6 2 110 0 8 2 110 0 10 2 110 0 16 2 110 0 25 2 110 0 28 1 137 0 29 2 110 0 30 2 110 0 31 2 110 0 32 2 110 0 33 2 110 0 35 2 110 0 36 2 110 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 110 0 49 2 110 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 110 0 146 2 110 0 152] 
#[0 2 114 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 118 0 2 2 118 0 3 2 118 0 4 2 118 0 6 2 118 0 8 2 118 0 10 2 118 0 16 2 118 0 25 2 118 0 28 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 118 0 49 1 197 0 50 2 118 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 118 0 146 1 213 0 149 2 118 0 152] 
#[1 2 122 0 2 2 122 0 3 2 122 0 4 2 122 0 6 2 122 0 8 2 122 0 10 2 122 0 16 2 122 0 25 2 122 0 28 2 122 0 29 2 122 0 30 2 122 0 31 2 122 0 32 2 122 0 33 2 122 0 35 2 122 0 36 2 122 0 37 2 122 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 122 0 49 2 122 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 122 0 146 2 122 0 152] 
#[0 2 126 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 130 0 2 2 130 0 3 2 130 0 4 2 130 0 6 2 130 0 8 2 130 0 10 2 130 0 16 2 130 0 25 2 130 0 28 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 130 0 49 1 197 0 50 2 130 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 130 0 146 1 213 0 149 2 130 0 152] 
#[1 2 134 0 2 2 134 0 3 2 134 0 4 2 134 0 6 2 134 0 8 2 134 0 10 2 134 0 16 2 134 0 25 2 134 0 28 2 134 0 29 2 134 0 30 2 134 0 31 2 134 0 32 2 134 0 33 2 134 0 35 2 134 0 36 2 134 0 37 2 134 0 38 2 134 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 134 0 49 2 134 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 134 0 146 2 134 0 152] 
#[0 2 138 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 239 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 243 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 247 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 154 0 2 2 154 0 3 2 154 0 4 2 154 0 6 2 154 0 8 2 154 0 10 2 154 0 16 2 154 0 25 2 154 0 28 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 154 0 49 1 197 0 50 2 154 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 154 0 146 1 213 0 149 2 154 0 152] 
#[1 2 158 0 2 2 158 0 3 2 158 0 4 2 158 0 6 2 158 0 8 2 158 0 10 2 158 0 16 2 158 0 25 2 158 0 28 2 158 0 29 2 158 0 30 2 158 0 31 2 158 0 32 2 158 0 33 2 158 0 35 2 158 0 36 2 158 0 37 2 158 0 38 2 158 0 39 2 158 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 158 0 49 2 158 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 158 0 146 2 158 0 152] 
#[0 2 162 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 166 0 2 2 166 0 3 2 166 0 4 2 166 0 6 2 166 0 8 2 166 0 10 2 166 0 16 2 166 0 25 2 166 0 28 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 166 0 49 1 197 0 50 2 166 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 166 0 146 1 213 0 149 2 166 0 152] 
#[1 2 170 0 2 2 170 0 3 2 170 0 4 2 170 0 6 2 170 0 8 2 170 0 10 2 170 0 16 2 170 0 25 2 170 0 28 2 170 0 29 2 170 0 30 2 170 0 31 2 170 0 32 2 170 0 33 2 170 0 35 2 170 0 36 2 170 0 37 2 170 0 38 2 170 0 39 2 170 0 40 2 170 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 170 0 49 2 170 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 170 0 146 2 170 0 152] 
#[0 2 174 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 178 0 2 2 178 0 3 2 178 0 4 2 178 0 6 2 178 0 8 2 178 0 10 2 178 0 16 2 178 0 25 2 178 0 28 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 178 0 49 1 197 0 50 2 178 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 178 0 146 1 213 0 149 2 178 0 152] 
#[1 2 182 0 2 2 182 0 3 2 182 0 4 2 182 0 6 2 182 0 8 2 182 0 10 2 182 0 16 2 182 0 25 2 182 0 28 2 182 0 29 2 182 0 30 2 182 0 31 2 182 0 32 2 182 0 33 2 182 0 35 2 182 0 36 2 182 0 37 2 182 0 38 2 182 0 39 2 182 0 40 2 182 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 182 0 49 2 182 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 182 0 146 2 182 0 152] 
#[0 2 186 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 190 0 2 2 190 0 3 2 190 0 4 2 190 0 6 2 190 0 8 2 190 0 10 2 190 0 16 2 190 0 25 2 190 0 28 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 1 189 0 44 2 190 0 49 1 197 0 50 2 190 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 190 0 146 1 213 0 149 2 190 0 152] 
#[1 2 194 0 2 2 194 0 3 2 194 0 4 2 194 0 6 2 194 0 8 2 194 0 10 2 194 0 16 2 194 0 25 2 194 0 28 2 194 0 29 2 194 0 30 2 194 0 31 2 194 0 32 2 194 0 33 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 38 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 42 2 194 0 43 1 189 0 44 2 194 0 49 2 194 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 194 0 146 2 194 0 152] 
#[0 2 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 202 0 2 2 202 0 3 2 202 0 4 2 202 0 6 2 202 0 8 2 202 0 10 2 202 0 16 2 202 0 25 2 202 0 28 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 2 202 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 202 0 146 1 213 0 149 2 202 0 152] 
#[1 2 206 0 2 2 206 0 3 2 206 0 4 2 206 0 6 2 206 0 8 2 206 0 10 2 206 0 16 2 206 0 25 2 206 0 28 2 206 0 29 2 206 0 30 2 206 0 31 2 206 0 32 2 206 0 33 2 206 0 35 2 206 0 36 2 206 0 37 2 206 0 38 2 206 0 39 2 206 0 40 2 206 0 41 2 206 0 42 2 206 0 43 2 206 0 44 2 206 0 49 2 206 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 206 0 146 2 206 0 152] 
#[0 2 210 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 214 0 2 2 214 0 3 2 214 0 4 2 214 0 6 2 214 0 8 2 214 0 10 2 214 0 16 2 214 0 25 2 214 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 214 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 214 0 49 1 197 0 50 2 214 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 214 0 146 1 213 0 149 2 214 0 152] 
#[1 2 218 0 2 2 218 0 3 2 218 0 4 2 218 0 6 2 218 0 8 2 218 0 10 2 218 0 16 2 218 0 25 2 218 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 218 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 218 0 49 2 218 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 218 0 146 2 218 0 152] 
#[0 2 222 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 2 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 146 0 147 0 148 0 149 0 150 0 151 0 152] 
#[0 2 230 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 6 97 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 93 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 121 0 121 6 101 0 122 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 2 234 0 7] 
#[0 2 238 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 2 242 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 2 246 0 1] 
#[0 6 105 0 8 0 99] 
#[0 2 250 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 2 254 0 3 0 8] 
#[1 6 109 0 3 6 113 0 8 6 113 0 99] 
#[0 3 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 6 0 3 0 8] 
#[1 6 117 0 3 3 10 0 8] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 161 0 59 0 129 0 60 0 133 0 61 3 161 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151 3 14 0 152] 
#[0 3 18 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 6 121 0 60 6 129 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 6 129 0 112 2 53 0 126 2 57 0 129 6 133 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 6 137 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 6 141 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 26 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 6 145 0 2 1 118 0 28 6 145 0 96] 
#[1 6 149 0 2 1 126 0 28 6 149 0 96] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 153 0 59 0 129 0 60 0 133 0 61 6 153 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 30 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 6 121 0 60 6 157 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 6 157 0 112 2 53 0 126 2 57 0 129 6 161 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 34 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 165 0 59 0 129 0 60 0 133 0 61 6 165 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 38 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 3 42 0 2 3 42 0 3 3 42 0 4 3 42 0 6 3 42 0 8 3 42 0 9 3 42 0 10 3 42 0 16 3 42 0 25 3 42 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 3 42 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 3 42 0 55 1 201 0 64 1 209 0 66 3 42 0 146 1 213 0 149 3 42 0 152] 
#[0 3 46 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 53 0 53 2 53 0 126 2 57 0 129 6 169 0 130] 
#[0 3 50 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 6 177 0 2 6 173 0 4 4 245 0 25 4 245 0 55 4 245 0 84 6 177 0 96] 
#[0 3 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 6 181 0 2 0 96] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 6 141 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 58 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 3 62 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 60 2 85 0 61 6 185 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 6 185 0 120 2 101 0 126 2 105 0 127 6 189 0 128 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 66 0 2 0 3 0 6 0 8 0 16] 
#[1 3 70 0 6 3 70 0 8 3 70 0 16 6 193 0 53 6 193 0 126] 
#[0 3 74 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 3 78 0 6 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 3 78 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 60 2 85 0 61 6 185 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 6 185 0 120 2 101 0 126 2 105 0 127 6 197 0 128 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 94 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 1 14 0 2 1 14 0 3 1 14 0 4 1 14 0 6 1 14 0 8 1 14 0 9 1 14 0 10 1 14 0 16 1 14 0 25 1 14 0 28 5 49 0 29 1 14 0 30 1 14 0 31 1 14 0 32 1 14 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 1 14 0 49 1 197 0 50 1 14 0 55 1 201 0 64 1 209 0 66 1 14 0 146 1 213 0 149 1 14 0 152] 
#[0 1 18 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 1 26 0 2 1 26 0 3 1 26 0 4 1 26 0 6 1 26 0 8 1 26 0 9 1 26 0 10 1 26 0 16 1 26 0 25 1 26 0 28 1 26 0 29 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 33 1 26 0 35 1 26 0 36 1 26 0 37 1 26 0 38 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 44 1 26 0 49 1 26 0 50 1 26 0 55 1 201 0 64 1 209 0 66 1 26 0 146 1 26 0 149 1 26 0 152] 
#[0 1 30 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 201 0 60 3 173 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 6 205 0 60 3 185 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 53 0 126 2 57 0 129 3 189 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 209 0 60 3 201 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 213 0 60 3 213 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 217 0 60 3 225 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 221 0 60 3 237 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 225 0 60 3 249 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 229 0 60 4 5 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 233 0 60 4 17 0 62 4 21 0 67 4 25 0 68 4 29 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 237 0 60 4 41 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 241 0 60 4 53 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 245 0 60 4 65 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 249 0 60 4 77 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 253 0 60 4 89 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 1 0 60 4 101 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 7 5 0 2 1 118 0 28 7 5 0 96] 
#[1 7 9 0 2 1 126 0 28 7 9 0 96] 
#[1 1 182 0 2 1 182 0 3 1 182 0 4 1 182 0 6 1 182 0 8 1 182 0 9 1 182 0 10 1 182 0 16 1 182 0 25 1 182 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 1 182 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 1 182 0 55 1 201 0 64 1 209 0 66 1 182 0 146 1 213 0 149 1 182 0 152] 
#[0 1 186 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 194 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 210 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 3 98 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 3 102 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 3 106 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 146 0 147 0 148 0 150 0 151] 
#[0 3 110 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 3 114 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 7 13 0 89 7 17 0 90 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 3 114 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 4 173 0 10 7 21 0 25 7 21 0 55 7 21 0 84 7 25 0 87 3 118 0 146] 
#[1 5 153 0 88 5 165 0 93 7 29 0 94 5 173 0 146] 
#[1 3 122 0 10 5 153 0 88 5 165 0 93 7 33 0 94 5 173 0 146] 
#[0 7 37 0 10] 
#[1 3 126 0 1 3 126 0 5 3 126 0 7 3 126 0 10 3 126 0 11 3 126 0 12 3 126 0 13 3 126 0 14 3 126 0 15 3 126 0 17 3 126 0 18 3 126 0 19 3 126 0 20 3 126 0 21 3 126 0 22 7 41 0 25 3 126 0 26 3 126 0 27 3 126 0 28 3 126 0 34 3 126 0 43 3 126 0 45 3 126 0 46 3 126 0 47 3 126 0 48 3 126 0 51 3 126 0 52 3 126 0 53 3 126 0 54 7 41 0 55 7 41 0 84 3 126 0 146 3 126 0 147 3 126 0 148 3 126 0 150 3 126 0 151] 
#[0 3 130 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 3 134 0 2 3 134 0 3 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 1 213 0 149] 
#[1 3 138 0 2 3 138 0 3 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[1 0 251 0 2 3 142 0 3 7 45 0 96] 
#[0 3 146 0 2 0 3] 
#[1 7 53 0 2 7 49 0 3 7 53 0 96] 
#[1 7 61 0 2 7 57 0 3 7 61 0 96] 
#[0 3 150 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 3 154 0 2 3 154 0 3 3 154 0 4 3 154 0 6 3 154 0 7 3 154 0 8 2 217 0 9 3 154 0 10 3 154 0 16 3 154 0 25 3 154 0 28 3 154 0 29 3 154 0 30 3 154 0 31 3 154 0 32 3 154 0 33 3 154 0 35 3 154 0 36 3 154 0 37 3 154 0 38 3 154 0 39 3 154 0 40 3 154 0 41 3 154 0 42 3 154 0 43 3 154 0 44 3 154 0 49 3 154 0 50 3 154 0 53 3 154 0 55 7 65 0 83 2 225 0 86 3 154 0 146 3 154 0 149 3 154 0 152] 
#[0 1 242 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 101 0 59 1 105 0 60 0 133 0 61 1 101 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 113 0 59 1 117 0 60 0 133 0 61 1 113 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 1 125 0 71 1 125 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 81 1 125 0 82 0 201 0 85 0 205 0 95 1 125 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 1 125 0 106 0 237 0 107 0 241 0 108 1 129 0 109 0 249 0 110 0 253 0 111 1 125 0 132 1 125 0 133 1 125 0 134 1 13 0 141 1 125 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 7 69 0 29 7 73 0 30 7 77 0 31 7 81 0 32 6 57 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 64 1 205 0 65 6 57 0 135 1 213 0 149] 
#[1 1 137 0 29 1 141 0 30 1 145 0 31 6 61 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 65 0 135] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 137 0 59 2 141 0 60 0 133 0 61 2 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 1 250 0 3 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 250 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 2 169 0 43 0 190 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 60 2 181 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 181 0 114 2 185 0 115 2 181 0 116 2 181 0 117 2 53 0 126 2 57 0 129 2 185 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 60 2 201 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 201 0 114 2 205 0 115 2 201 0 116 2 201 0 117 2 53 0 126 2 57 0 129 2 205 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 35 2 30 0 36 2 30 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 30 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 42 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 2 58 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 58 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 2 70 0 30 2 70 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 70 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 2 82 0 30 2 82 0 31 2 82 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 82 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 35 2 94 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 94 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 35 2 106 0 36 2 106 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 106 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 118 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 130 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 154 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 166 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 178 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 3 69 0 44 2 190 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 214 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 7 129 0 60 7 133 0 61 3 213 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 3 93 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 7 137 0 128 0 161 0 132 0 161 0 133 0 161 0 134 7 141 0 136 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 158 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 145 0 60 7 149 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 7 129 0 60 7 133 0 61 3 213 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 3 93 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 7 157 0 128 0 161 0 132 0 161 0 133 0 161 0 134 7 161 0 136 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 165 0 60 7 169 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 7 181 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 7 173 0 60 7 177 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 7 181 0 103 5 233 0 104 5 237 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 3 97 0 128 0 161 0 132 0 161 0 133 0 161 0 134 3 101 0 136 3 113 0 139 3 117 0 140 1 13 0 141 7 185 0 142 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 3 174 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 7 173 0 60 7 177 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 5 237 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 7 189 0 128 0 161 0 132 0 161 0 133 0 161 0 134 7 193 0 136 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 182 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 7 197 0 16 0 103] 
#[0 3 186 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 7 205 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 60 2 85 0 61 7 201 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 7 201 0 78 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 7 205 0 99 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 7 201 0 120 2 101 0 126 4 157 0 127 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 190 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 6 193 0 53 0 126] 
#[1 3 194 0 2 3 194 0 3 3 194 0 4 3 194 0 6 3 194 0 8 3 194 0 9 3 194 0 10 3 194 0 16 3 194 0 25 3 194 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 3 194 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 3 194 0 55 1 201 0 64 1 209 0 66 3 194 0 146 1 213 0 149 3 194 0 152] 
#[0 3 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 3 202 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 3 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 3 210 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 214 0 2 0 4 0 10 0 25 0 55 0 146] 
#[0 3 218 0 28 0 30] 
#[0 3 222 0 28 0 30] 
#[1 1 245 0 28 7 209 0 92] 
#[0 3 226 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 3 230 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 1 245 0 28 7 213 0 92] 
#[0 3 234 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 7 217 0 2 0 96] 
#[0 3 238 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 242 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 246 0 3 0 6 0 8 0 16] 
#[0 3 250 0 8] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 7 221 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 7 221 0 120 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 254 0 6 0 16] 
#[1 2 30 0 2 2 30 0 3 2 30 0 4 2 30 0 6 2 30 0 8 2 30 0 9 2 30 0 10 2 30 0 16 2 30 0 25 2 30 0 28 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 30 0 49 1 197 0 50 2 30 0 55 1 201 0 64 1 209 0 66 2 30 0 146 1 213 0 149 2 30 0 152] 
#[1 2 42 0 2 2 42 0 3 2 42 0 4 2 42 0 6 2 42 0 8 2 42 0 9 2 42 0 10 2 42 0 16 2 42 0 25 2 42 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 2 42 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 42 0 49 1 197 0 50 2 42 0 55 1 201 0 64 1 209 0 66 2 42 0 146 1 213 0 149 2 42 0 152] 
#[1 2 58 0 2 2 58 0 3 2 58 0 4 2 58 0 6 2 58 0 8 2 58 0 9 2 58 0 10 2 58 0 16 2 58 0 25 2 58 0 28 5 49 0 29 2 58 0 30 5 57 0 31 5 61 0 32 2 58 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 58 0 49 1 197 0 50 2 58 0 55 1 201 0 64 1 209 0 66 2 58 0 146 1 213 0 149 2 58 0 152] 
#[1 2 70 0 2 2 70 0 3 2 70 0 4 2 70 0 6 2 70 0 8 2 70 0 9 2 70 0 10 2 70 0 16 2 70 0 25 2 70 0 28 5 49 0 29 2 70 0 30 2 70 0 31 5 61 0 32 2 70 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 70 0 49 1 197 0 50 2 70 0 55 1 201 0 64 1 209 0 66 2 70 0 146 1 213 0 149 2 70 0 152] 
#[1 2 82 0 2 2 82 0 3 2 82 0 4 2 82 0 6 2 82 0 8 2 82 0 9 2 82 0 10 2 82 0 16 2 82 0 25 2 82 0 28 5 49 0 29 2 82 0 30 2 82 0 31 2 82 0 32 2 82 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 82 0 49 1 197 0 50 2 82 0 55 1 201 0 64 1 209 0 66 2 82 0 146 1 213 0 149 2 82 0 152] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 6 2 94 0 8 2 94 0 9 2 94 0 10 2 94 0 16 2 94 0 25 2 94 0 28 5 49 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 94 0 49 1 197 0 50 2 94 0 55 1 201 0 64 1 209 0 66 2 94 0 146 1 213 0 149 2 94 0 152] 
#[1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 6 2 106 0 8 2 106 0 9 2 106 0 10 2 106 0 16 2 106 0 25 2 106 0 28 5 49 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 35 2 106 0 36 2 106 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 106 0 49 1 197 0 50 2 106 0 55 1 201 0 64 1 209 0 66 2 106 0 146 1 213 0 149 2 106 0 152] 
#[1 2 118 0 2 2 118 0 3 2 118 0 4 2 118 0 6 2 118 0 8 2 118 0 9 2 118 0 10 2 118 0 16 2 118 0 25 2 118 0 28 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 118 0 49 1 197 0 50 2 118 0 55 1 201 0 64 1 209 0 66 2 118 0 146 1 213 0 149 2 118 0 152] 
#[1 2 130 0 2 2 130 0 3 2 130 0 4 2 130 0 6 2 130 0 8 2 130 0 9 2 130 0 10 2 130 0 16 2 130 0 25 2 130 0 28 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 130 0 49 1 197 0 50 2 130 0 55 1 201 0 64 1 209 0 66 2 130 0 146 1 213 0 149 2 130 0 152] 
#[1 2 154 0 2 2 154 0 3 2 154 0 4 2 154 0 6 2 154 0 8 2 154 0 9 2 154 0 10 2 154 0 16 2 154 0 25 2 154 0 28 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 154 0 49 1 197 0 50 2 154 0 55 1 201 0 64 1 209 0 66 2 154 0 146 1 213 0 149 2 154 0 152] 
#[1 2 166 0 2 2 166 0 3 2 166 0 4 2 166 0 6 2 166 0 8 2 166 0 9 2 166 0 10 2 166 0 16 2 166 0 25 2 166 0 28 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 166 0 49 1 197 0 50 2 166 0 55 1 201 0 64 1 209 0 66 2 166 0 146 1 213 0 149 2 166 0 152] 
#[1 2 178 0 2 2 178 0 3 2 178 0 4 2 178 0 6 2 178 0 8 2 178 0 9 2 178 0 10 2 178 0 16 2 178 0 25 2 178 0 28 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 178 0 49 1 197 0 50 2 178 0 55 1 201 0 64 1 209 0 66 2 178 0 146 1 213 0 149 2 178 0 152] 
#[1 2 190 0 2 2 190 0 3 2 190 0 4 2 190 0 6 2 190 0 8 2 190 0 9 2 190 0 10 2 190 0 16 2 190 0 25 2 190 0 28 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 5 101 0 44 2 190 0 49 1 197 0 50 2 190 0 55 1 201 0 64 1 209 0 66 2 190 0 146 1 213 0 149 2 190 0 152] 
#[1 2 202 0 2 2 202 0 3 2 202 0 4 2 202 0 6 2 202 0 8 2 202 0 9 2 202 0 10 2 202 0 16 2 202 0 25 2 202 0 28 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 2 202 0 55 1 201 0 64 1 209 0 66 2 202 0 146 1 213 0 149 2 202 0 152] 
#[1 2 214 0 2 2 214 0 3 2 214 0 4 2 214 0 6 2 214 0 8 2 214 0 9 2 214 0 10 2 214 0 16 2 214 0 25 2 214 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 2 214 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 214 0 49 1 197 0 50 2 214 0 55 1 201 0 64 1 209 0 66 2 214 0 146 1 213 0 149 2 214 0 152] 
#[0 4 2 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 4 6 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 3 118 0 10 7 225 0 25 7 225 0 55 7 225 0 84 3 118 0 146] 
#[0 4 10 0 10 0 146] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 6 137 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 6 141 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 4 14 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 4 18 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 7 229 0 10] 
#[0 4 22 0 10] 
#[0 4 26 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 4 30 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 146 0 147 0 148 0 150 0 151] 
#[0 4 34 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 5 181 0 60 5 185 0 61 7 237 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 7 237 0 123 2 101 0 126 7 241 0 127 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 4 38 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 7 245 0 2 6 193 0 53 7 245 0 96 6 193 0 126] 
#[0 4 42 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 46 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 249 0 60 3 169 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 253 0 60 3 181 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 1 0 60 3 197 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 8 5 0 60 7 133 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 5 237 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 7 137 0 128 0 161 0 132 0 161 0 133 0 161 0 134 7 141 0 136 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 9 0 60 3 221 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 13 0 60 3 233 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 17 0 60 3 245 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 21 0 60 4 1 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 25 0 60 4 13 0 61 0 141 0 63 4 29 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 29 0 60 4 37 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 33 0 60 4 49 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 37 0 60 4 61 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 41 0 60 4 73 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 45 0 60 4 85 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 49 0 60 4 97 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 70 0 3 2 70 0 16 1 137 0 29 2 70 0 30 2 70 0 31 1 149 0 32 6 57 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 70 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 6 57 0 135 1 213 0 149] 
#[1 2 74 0 3 2 74 0 16 1 137 0 29 2 74 0 30 2 74 0 31 1 149 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 74 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 65 0 135] 
#[0 4 50 0 16] 
#[0 4 54 0 3 0 16] 
#[1 4 58 0 3 4 58 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 4 62 0 3 4 62 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[1 0 205 0 1 0 190 0 3 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 2 169 0 43 0 190 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 60 2 181 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 181 0 114 2 185 0 115 2 181 0 116 2 181 0 117 2 53 0 126 2 57 0 129 2 185 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151] 
#[0 4 66 0 16] 
#[0 4 70 0 3 0 16] 
#[1 4 74 0 3 4 74 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 4 78 0 3 4 78 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[1 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 6 57 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 64 1 205 0 65 6 57 0 135 1 213 0 149] 
#[1 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 65 0 135] 
#[0 4 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 8 57 0 16 0 103] 
#[0 4 90 0 3 0 16] 
#[0 4 94 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 98 0 3 0 8] 
#[0 4 102 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 106 0 2 0 4 0 10 0 25 0 55 0 146] 
#[0 4 110 0 2 0 4 0 10 0 25 0 55 0 146] 
#[0 4 114 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 118 0 2 0 3 0 6 0 8 0 16] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 4 14 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 6 141 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 4 14 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 4 122 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 3 142 0 2 0 3] 
#[0 4 126 0 2 0 3] 
#[1 8 65 0 2 8 61 0 3 8 65 0 96] 
#[0 4 130 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 30 0 3 2 30 0 16 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 30 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 42 0 3 2 42 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 2 42 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 42 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 58 0 3 2 58 0 16 7 69 0 29 2 58 0 30 7 77 0 31 8 53 0 32 2 58 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 58 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 7 69 0 29 2 70 0 30 2 70 0 31 8 53 0 32 6 57 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 70 0 49 1 197 0 50 1 201 0 64 1 205 0 65 6 57 0 135 1 213 0 149] 
#[1 2 82 0 3 2 82 0 16 7 69 0 29 2 82 0 30 2 82 0 31 2 82 0 32 2 82 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 82 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 94 0 3 2 94 0 16 7 69 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 94 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 106 0 3 2 106 0 16 7 69 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 35 2 106 0 36 2 106 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 106 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 118 0 3 2 118 0 16 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 118 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 130 0 3 2 130 0 16 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 130 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 154 0 3 2 154 0 16 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 154 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 166 0 3 2 166 0 16 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 166 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 178 0 3 2 178 0 16 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 178 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 190 0 3 2 190 0 16 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 7 121 0 44 2 190 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 202 0 3 2 202 0 16 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 214 0 3 2 214 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 2 214 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 214 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 69 0 60 3 209 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 4 134 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 8 73 0 2 6 193 0 53 8 73 0 96 6 193 0 126] 
#[0 4 138 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 70 0 3 2 70 0 16 7 69 0 29 2 70 0 30 2 70 0 31 8 53 0 32 2 70 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 70 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[0 4 142 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152]
	).
]

{ #category : #private }
ElixirParser >> actionsForCurrentToken [
	| lookahead ids id actions token position previousState |
	scanner lastWasEol
		ifTrue: [ actions := OrderedCollection new.
			self addActionsFor: scanner eolId to: actions.
			actions notEmpty
				ifTrue: [ scanner lastWasEol: false.
					token := currentToken.
					previousState := currentState.
					currentToken := currentToken class
						value: ''
						start: nil
						ids: {scanner eolId}.
					currentState := self duplicateState.
					self parseCurrentToken.
					currentToken := token.
					self parseCurrentToken.
					self restoreState: previousState.
					currentToken := token ] ].
	currentToken ids first = scanner map_opId
		ifTrue: [ token := currentToken.
			position := scanner position.
			currentToken := currentToken class
				value: '%'
				start: token startPosition
				ids: {scanner struct_opId}.
			previousState := currentState.
			currentState := self duplicateState.
			self position: position - 2.
			self parseCurrentToken.
			self restoreState: previousState.
			currentToken := token.
			self position: position ].
	currentToken ids first = scanner identifierId
		ifTrue: [ lookahead := self peekNextToken.
			id := lookahead value = 'do'
				ifTrue: [ scanner do_identifierId ]
				ifFalse: [ lookahead value = ' ??? '
						ifTrue: [ scanner block_identifierId ]
						ifFalse: [ lookahead value = '['
								ifTrue: [ scanner bracket_identifierId ]
								ifFalse: [ lookahead value = '('
										ifTrue: [ scanner paren_identifierId ] ] ] ].
			id notNil
				ifTrue: [ ids := {id.
					scanner identifierId} ] ].
	(currentToken ids includes: scanner dot_opId)
		ifTrue: [ self peekNextToken value = '('
				ifTrue: [ ids := {scanner dot_call_opId} ] ].
	ids notNil
		ifTrue: [ currentToken ids: ids ].
	^ super actionsForCurrentToken
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr15: nodes [
	| result |
	result := ElixirTrueNode new.
	result _true: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr16: nodes [
	| result |
	result := ElixirFalseNode new.
	result _false: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr17: nodes [
	| result |
	result := ElixirNilNode new.
	result _nil: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr23: nodes [
	| result |
	result := ElixirSigilNode new.
	result sigil: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr24: nodes [
	| result |
	result := ElixirAtomNode new.
	result atom: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr3: nodes [
	| result |
	result := ElixirCaptureNode new.
	result op: (nodes at: 1).
	result int: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr4: nodes [
	| result |
	result := ElixirLambdaNode new.
	result fn: (nodes at: 1).
	result stab: (nodes at: 2).
	result end: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr5: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result stab: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr6: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result stab: (nodes at: 2).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr7: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result semi: (nodes at: 2).
	result stab: (nodes at: 3).
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr8: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result semi: (nodes at: 2).
	result stab: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr9: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result semi: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc2: nodes [
	| result |
	result := ElixirAssocNode new.
	result assoc: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_base1: nodes [
	| result |
	result := ElixirAssocBaseNode new.
	result addNode: (nodes at: 1) to: result assocs.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result assocs.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_expr1: nodes [
	| result |
	result := ElixirAssocExprNode new.
	result key: (nodes at: 1).
	result op: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_expr6: nodes [
	| result |
	result := ElixirAssocExprNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_update1: nodes [
	| result |
	result := ElixirAssocUpdateNode new.
	result expression: (nodes at: 1).
	result pipe: (nodes at: 2).
	result associatoin: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_update2: nodes [
	| result |
	result := ElixirAssocUpdateNode new.
	result expression: (nodes at: 1).
	result pipe: (nodes at: 2).
	result association: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_update_kw1: nodes [
	| result |
	result := ElixirAssocUpdateKwNode new.
	result expression: (nodes at: 1).
	result pipe: (nodes at: 2).
	result kw: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbin_heredoc1: nodes [
	| result |
	result := ElixirBinHeredocNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbin_string1: nodes [
	| result |
	result := ElixirBinStringNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbit_string1: nodes [
	| result |
	result := ElixirBitStringNode new.
	result open: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbit_string2: nodes [
	| result |
	result := ElixirBitStringNode new.
	result open: (nodes at: 1).
	result args: (nodes at: 2).
	result close: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_eoe1: nodes [
	| result |
	result := ElixirBlockEoeNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_eoe2: nodes [
	| result |
	result := ElixirBlockEoeNode new.
	result identifier: (nodes at: 1).
	result eoe: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_expr2: nodes [
	| result |
	result := ElixirBlockExprNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	result call2: (nodes at: 3).
	result do_block: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_expr3: nodes [
	| result |
	result := ElixirBlockExprNode new.
	result identifier: (nodes at: 1).
	result do_block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_expr5: nodes [
	| result |
	result := ElixirBlockExprNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	result do_block: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_item1: nodes [
	| result |
	result := ElixirBlockItemNode new.
	result block: (nodes at: 1).
	result stab: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_item2: nodes [
	| result |
	result := ElixirBlockItemNode new.
	result block: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_list1: nodes [
	| result |
	result := ElixirBlockListNode new.
	result addNode: (nodes at: 1) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_list2: nodes [
	| result |
	result := nodes at: 2.
	result addFirstNode: (nodes at: 1) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg1: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg2: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result com: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg3: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result arg: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg4: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result arg: (nodes at: 2).
	result com: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_at_expr2: nodes [
	| result |
	result := ElixirBracketAtExprNode new.
	result op: (nodes at: 1).
	result identifier: (nodes at: 2).
	result arg: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_expr2: nodes [
	| result |
	result := ElixirBracketExprNode new.
	result identifier: (nodes at: 1).
	result arg: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_comma_expr1: nodes [
	| result |
	result := ElixirCallArgsNoParensCommaExprNode new.
	result expression: (nodes at: 1).
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result argses.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_comma_expr2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result argses.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_kw1: nodes [
	| result |
	result := ElixirCallArgsNoParensKwNode new.
	result addNode: (nodes at: 1) to: result kws.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_kw2: nodes [
	| result |
	result := nodes at: 3.
	result addFirstNode: (nodes at: 1) to: result kws.
	result addFirstToken: (nodes at: 2) to: result coms.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_kw_expr1: nodes [
	| result |
	result := ElixirCallArgsNoParensKwExprNode new.
	result key: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many1: nodes [
	| result |
	result := ElixirCallArgsNoParensManyNode new.
	result expression: (nodes at: 1).
	result com: (nodes at: 2).
	result args: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many2: nodes [
	| result |
	result := ElixirCallArgsNoParensManyNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many_strict1: nodes [
	| result |
	result := ElixirCallArgsNoParensManyStrictNode new.
	result args: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many_strict3: nodes [
	| result |
	result := ElixirCallArgsNoParensManyStrictNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens1: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result rightParen: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens2: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens3: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result kw: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens4: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result kw: (nodes at: 2).
	result addToken: (nodes at: 3) to: result coms.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens6: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result addToken: (nodes at: 3) to: result coms.
	result kw: (nodes at: 4).
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens7: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result addToken: (nodes at: 3) to: result coms.
	result kw: (nodes at: 4).
	result addToken: (nodes at: 5) to: result coms.
	result rightParen: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens_base1: nodes [
	| result |
	result := ElixirCallArgsParensBaseNode new.
	result addNode: (nodes at: 1) to: result args.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result args.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args1: nodes [
	| result |
	result := ElixirContainerArgsNode new.
	result base: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args2: nodes [
	| result |
	result := ElixirContainerArgsNode new.
	result base: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args3: nodes [
	| result |
	result := ElixirContainerArgsNode new.
	result base: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args_base1: nodes [
	| result |
	result := ElixirContainerArgsBaseNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block1: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result end: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block2: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result stab: (nodes at: 2).
	result end: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block3: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result block: (nodes at: 2).
	result end: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block4: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result stab: (nodes at: 2).
	result block: (nodes at: 3).
	result end: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordo_eoe1: nodes [
	| result |
	result := ElixirDoEoeNode new.
	result do: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordo_eoe2: nodes [
	| result |
	result := ElixirDoEoeNode new.
	result do: (nodes at: 1).
	result eoe: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias1: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result alias: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias2: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result alias: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias3: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result leftCurly: (nodes at: 3).
	result rightCurly: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias4: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result leftCurly: (nodes at: 3).
	result alias: (nodes at: 4).
	result rightCurly: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_bracket_identifier1: nodes [
	| result |
	result := ElixirDotBracketIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_bracket_identifier2: nodes [
	| result |
	result := ElixirDotBracketIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_call_identifier1: nodes [
	| result |
	result := ElixirDotCallIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_call_identifier2: nodes [
	| result |
	result := ElixirDotCallIdentifierNode new.
	result identifier: (nodes at: 1).
	result op: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_do_identifier1: nodes [
	| result |
	result := ElixirDotDoIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_do_identifier2: nodes [
	| result |
	result := ElixirDotDoIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_identifier1: nodes [
	| result |
	result := ElixirDotIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_identifier2: nodes [
	| result |
	result := ElixirDotIdentifierNode new.
	result expression: (nodes at: 1).
	result dot: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_op_identifier1: nodes [
	| result |
	result := ElixirDotOpIdentifierNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_op_identifier2: nodes [
	| result |
	result := ElixirDotOpIdentifierNode new.
	result addToken: (nodes at: 2) to: result ops.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_paren_identifier1: nodes [
	| result |
	result := ElixirDotParenIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_paren_identifier2: nodes [
	| result |
	result := ElixirDotParenIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForempty_paren1: nodes [
	| result |
	result := ElixirEmptyParenNode new.
	result leftParen: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForend_eoe1: nodes [
	| result |
	result := ElixirEndEoeNode new.
	result end: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForend_eoe2: nodes [
	| result |
	result := ElixirEndEoeNode new.
	result eoe: (nodes at: 1).
	result end: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForexpr_list1: nodes [
	| result |
	result := ElixirExprListNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForexpr_list2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result eoes.
	result addNode: (nodes at: 3) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForfn_eoe1: nodes [
	| result |
	result := ElixirFnEoeNode new.
	result fn: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForfn_eoe2: nodes [
	| result |
	result := ElixirFnEoeNode new.
	result fn: (nodes at: 1).
	result eoe: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar1: nodes [
	| result |
	result := ElixirGrammarNode new.
	result addToken: (nodes at: 1) to: result eoes.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar2: nodes [
	| result |
	result := ElixirGrammarNode new.
	result expressions: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar3: nodes [
	| result |
	result := ElixirGrammarNode new.
	result addToken: (nodes at: 1) to: result eoes.
	result expressions: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar4: nodes [
	| result |
	result := ElixirGrammarNode new.
	result expressions: (nodes at: 1).
	result addToken: (nodes at: 2) to: result eoes.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar5: nodes [
	| result |
	result := ElixirGrammarNode new.
	result addToken: (nodes at: 1) to: result eoes.
	result expressions: (nodes at: 2).
	result addToken: (nodes at: 3) to: result eoes.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar6: nodes [
	| result |
	result := ElixirGrammarNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForkw_base1: nodes [
	| result |
	result := ElixirKwBaseNode new.
	result addToken: (nodes at: 1) to: result keies.
	result addNode: (nodes at: 2) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForkw_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addToken: (nodes at: 3) to: result keies.
	result addNode: (nodes at: 4) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist1: nodes [
	| result |
	result := ElixirListNode new.
	result leftBracket: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist2: nodes [
	| result |
	result := ElixirListNode new.
	result leftBracket: (nodes at: 1).
	result args: (nodes at: 2).
	result close: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args1: nodes [
	| result |
	result := ElixirListArgsNode new.
	result kw: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args2: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args3: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args4: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist_heredoc1: nodes [
	| result |
	result := ElixirListHeredocNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist_string1: nodes [
	| result |
	result := ElixirListStringNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap2: nodes [
	| result |
	result := ElixirMapNode new.
	result cen: (nodes at: 1).
	result args: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap3: nodes [
	| result |
	result := ElixirMapNode new.
	result cen: (nodes at: 1).
	result struct: (nodes at: 2).
	result args: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args1: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result rightCurly: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args3: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result association: (nodes at: 2).
	result rightCurly: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args4: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result association: (nodes at: 2).
	result com: (nodes at: 3).
	result rightCurly: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close1: nodes [
	| result |
	result := ElixirMapCloseNode new.
	result kw: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close2: nodes [
	| result |
	result := ElixirMapCloseNode new.
	result association: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close3: nodes [
	| result |
	result := ElixirMapCloseNode new.
	result association: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 3).
	result close: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr1: nodes [
	| result |
	result := nodes at: 1.
	result addNode: (nodes at: 2) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr4: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result ops.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr5: nodes [
	| result |
	result := ElixirMatchedExprNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr8: nodes [
	| result |
	result := ElixirMatchedExprNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result identifier: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_op_expr14: nodes [
	| result |
	result := ElixirMatchedOpExprNode new.
	result op: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_expr1: nodes [
	| result |
	result := ElixirNoParensExprNode new.
	result expression: (nodes at: 1).
	result expressoin: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_expr5: nodes [
	| result |
	result := ElixirNoParensExprNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_many_expr2: nodes [
	| result |
	result := ElixirNoParensManyExprNode new.
	result identifier: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_one_ambig_expr2: nodes [
	| result |
	result := ElixirNoParensOneAmbigExprNode new.
	result identifier: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_one_expr2: nodes [
	| result |
	result := ElixirNoParensOneExprNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_op_expr13: nodes [
	| result |
	result := ElixirNoParensOpExprNode new.
	result op: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFornumber1: nodes [
	| result |
	result := ElixirNumberNode new.
	result int: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFornumber2: nodes [
	| result |
	result := ElixirNumberNode new.
	result float: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFornumber3: nodes [
	| result |
	result := ElixirNumberNode new.
	result char: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForparens_call1: nodes [
	| result |
	result := ElixirParensCallNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForparens_call2: nodes [
	| result |
	result := ElixirParensCallNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	result call2: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab1: nodes [
	| result |
	result := ElixirStabNode new.
	result addNode: (nodes at: 1) to: result stabs.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result eoes.
	result addNode: (nodes at: 3) to: result stabs.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_eoe1: nodes [
	| result |
	result := ElixirStabEoeNode new.
	result stab: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_expr1: nodes [
	| result |
	result := ElixirStabExprNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_expr3: nodes [
	| result |
	result := ElixirStabExprNode new.
	result args: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_expr4: nodes [
	| result |
	result := ElixirStabExprNode new.
	result args: (nodes at: 1).
	result guard: (nodes at: 3).
	result expression: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_op_eol_and_expr1: nodes [
	| result |
	result := ElixirStabOpEolAndExprNode new.
	result op: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_op_eol_and_expr2: nodes [
	| result |
	result := ElixirStabOpEolAndExprNode new.
	result op: (nodes at: 1).
	result body: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_parens_many2: nodes [
	| result |
	result := ElixirStabParensManyNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstruct_expr1: nodes [
	| result |
	result := ElixirStructExprNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFortuple1: nodes [
	| result |
	result := ElixirTupleNode new.
	result leftCurly: (nodes at: 1).
	result rightCurly: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFortuple2: nodes [
	| result |
	result := ElixirTupleNode new.
	result leftCurly: (nodes at: 1).
	result elements: (nodes at: 2).
	result rightCurly: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_expr1: nodes [
	| result |
	result := ElixirUnmatchedExprNode new.
	result matched: (nodes at: 1).
	result addNode: (nodes at: 2) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_expr7: nodes [
	| result |
	result := ElixirUnmatchedExprNode new.
	result op: (nodes at: 1).
	result addNode: (nodes at: 2) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_expr8: nodes [
	| result |
	result := ElixirUnmatchedExprNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_op_expr13: nodes [
	| result |
	result := ElixirUnmatchedOpExprNode new.
	result op: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #testing }
ElixirParser >> tryAllTokens [
	^ (currentToken ids includes: scanner identifierId) not
		or: [ currentToken ids includes: scanner op_identifierId ]
]
