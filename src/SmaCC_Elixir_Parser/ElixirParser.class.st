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
	^'2019-10-05T15:38:31.47235-05:00'
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
	: <decimal>\. <decimal> ([eE] <decimal>)?
	| <decimal> [eE] <decimal>
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
	: [a-zA-Z]		# what are the potential values
	;
<sigil>
	: \~ [a-z] <sigilEscapedValue> <sigilModifier>?
	| \~ [A-Z] <sigilValue> <sigilModifier>?
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
%nonassoc <at_op>;       ## @
#%nonassoc dot_identifier;

### MAIN FLOW OF EXPRESSIONS

grammar 
	: eoe 
	| expr_list 
	|  eoe expr_list 
	|  expr_list eoe 
	| eoe expr_list eoe 
	|
	;

# Note expressions are on reverse order
expr_list 
	: expr 
	| expr_list eoe expr 
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
	: matched_expr matched_op_expr 
	| unary_op_eol matched_expr 
	| <at_op> matched_expr 
	| <capture_op> matched_expr 
	| no_parens_one_expr 
	| no_parens_zero_expr 
	| access_expr 
	| access_expr <kw_identifier>
	;

unmatched_expr 
	: matched_expr unmatched_op_expr 
	| unmatched_expr matched_op_expr 
	| unmatched_expr unmatched_op_expr 
	| unmatched_expr no_parens_op_expr 
	| unary_op_eol expr 
	| <at_op> expr 
	| <capture_op> expr 
	| block_expr 
	;

no_parens_expr 
	: matched_expr no_parens_op_expr 
	| unary_op_eol no_parens_expr 
	| <at_op> no_parens_expr 
	| <capture_op> no_parens_expr 
	| no_parens_one_ambig_expr 
	| no_parens_many_expr 
	;

block_expr 
	: dot_call_identifier call_args_parens do_block 
	| dot_call_identifier call_args_parens call_args_parens do_block 
	| dot_do_identifier do_block 
	| dot_op_identifier call_args_no_parens_all do_block 
	| dot_identifier call_args_no_parens_all do_block 
	;

matched_op_expr 
	: <match_op> matched_expr 
	| <dual_op> matched_expr 
	| <mult_op> matched_expr 
	| <two_op> matched_expr 
	| <three_op> matched_expr 
	| <and_op> matched_expr 
	| <or_op> matched_expr 
	| <in_op> matched_expr 
	| <in_match_op> matched_expr 
	| <type_op> matched_expr 
	| <when_op> matched_expr 
	| <pipe_op> matched_expr 
	| <comp_op> matched_expr 
	| <rel_op> matched_expr 
	| <arrow_op> matched_expr 
## Warn for no parens subset
	| <arrow_op> no_parens_one_expr 
	;

unmatched_op_expr 
	: <match_op> unmatched_expr 
	| <dual_op> unmatched_expr 
	| <mult_op> unmatched_expr 
	| <two_op> unmatched_expr 
	| <three_op> unmatched_expr 
	| <and_op> unmatched_expr 
	| <or_op> unmatched_expr 
	| <in_op> unmatched_expr 
	| <in_match_op> unmatched_expr 
	| <type_op> unmatched_expr 
	| <when_op> unmatched_expr 
	| <pipe_op> unmatched_expr 
	| <comp_op> unmatched_expr 
	| <rel_op> unmatched_expr 
	| <arrow_op> unmatched_expr 
	;

no_parens_op_expr 
	: <match_op> no_parens_expr 
	| <dual_op> no_parens_expr 
	| <mult_op> no_parens_expr 
	| <two_op> no_parens_expr 
	| <three_op> no_parens_expr 
	| <and_op> no_parens_expr 
	| <or_op> no_parens_expr 
	| <in_op> no_parens_expr 
	| <in_match_op> no_parens_expr 
	| <type_op> no_parens_expr 
	| <when_op> no_parens_expr 
	| <pipe_op> no_parens_expr 
	| <comp_op> no_parens_expr 
	| <rel_op> no_parens_expr 
	| <arrow_op> no_parens_expr 
## Warn for no parens subset
	| <arrow_op> no_parens_one_ambig_expr 
	| <arrow_op> no_parens_many_expr 
## Allow when (and only when) with keywords
	| <when_op> call_args_no_parens_kw 
	;

no_parens_one_ambig_expr 
	: dot_op_identifier call_args_no_parens_ambig
	| dot_identifier call_args_no_parens_ambig 
	;

no_parens_many_expr 
	: dot_op_identifier call_args_no_parens_many_strict 
	| dot_identifier call_args_no_parens_many_strict 
	;

no_parens_one_expr 
	: dot_op_identifier call_args_no_parens_one 
	| dot_identifier call_args_no_parens_one 
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
	| <capture_op> <int> 
	| fn_eoe stab end_eoe 
	| open_paren stab close_paren 
	| open_paren stab "";"" close_paren 
	| open_paren "";"" stab "";"" close_paren 
	| open_paren "";"" stab close_paren 
	| open_paren "";"" close_paren 
	| empty_paren 
	| number 
	| list 
	| map 
	| tuple 
	| ""true"" 
	| ""false"" 
	| ""nil"" 
	| bin_string 
	| list_string 
	| bin_heredoc 
	| list_heredoc 
	| bit_string 
	| <sigil> 
	| <atom> 
#	| atom_safe 		# what are these?
#	| atom_unsafe 
	| dot_alias 
	| parens_call 
	;
	
bin_string
	: <string>
	;
	
list_string
	: <charlist>
	;
	
bin_heredoc
	: <string_heredoc>
	;
	
list_heredoc
	: <charlist_heredoc>
	;

number 
	: <int> 
	| <flt> 
	| <char> 
	;
## Also used by maps and structs
parens_call 
	: dot_call_identifier call_args_parens 
	| dot_call_identifier call_args_parens call_args_parens 
	;
	
bracket_value	# added
	: kw_base
	| container_expr
	;
bracket_values	# added
	: bracket_value
	| bracket_values "","" bracket_value
	;

bracket_arg 
#	: open_bracket kw close_bracket 
#	| open_bracket container_expr close_bracket 
#	| open_bracket container_expr "","" close_bracket 
	: open_bracket bracket_values? "",""? close_bracket	# modified
	;

bracket_expr 
	: dot_bracket_identifier bracket_arg 
	| access_expr bracket_arg 
	;

bracket_at_expr 
	: <at_op> dot_bracket_identifier bracket_arg 
	| <at_op> access_expr bracket_arg 
	;

## Blocks

do_block 
	: do_eoe ""end"" 
	| do_eoe stab end_eoe 
	| do_eoe block_list ""end"" 
	| do_eoe stab_eoe block_list ""end"" 
	;

eoe 
	: <eol> 
	| <semicolon>
	;

fn_eoe 
	: ""fn""
	| ""fn"" eoe 
	;

do_eoe 
	: ""do"" 
	| ""do"" eoe 
	;

end_eoe 
	: ""end"" 
	| eoe ""end"" 
	;

block_eoe 
	: <block_identifier> 
	| <block_identifier> eoe 
	;

stab 
	: stab_expr 
	| stab eoe stab_expr 
	;

stab_eoe
	 : stab 
	| stab eoe 
	;

## Here, `element(1, Token)` is the stab operator,
## while `element(2, Token)` is the expression.
stab_expr 
	: expr 
	| stab_op_eol_and_expr 
	| empty_paren stab_op_eol_and_expr 
	| empty_paren <when_op> expr stab_op_eol_and_expr 
	| call_args_no_parens_all stab_op_eol_and_expr 
	| stab_parens_many stab_op_eol_and_expr 
	| stab_parens_many <when_op> expr stab_op_eol_and_expr 
	;

stab_op_eol_and_expr 
	: <stab_op> expr?
	;

block_item 
	: block_eoe stab_eoe 
	| block_eoe 
	;

block_list 
	: block_item 
	| block_item block_list 
	;

## Helpers

open_paren 
	: ""("" 
	;
close_paren 
	: "")"" 
	;

empty_paren 
	: open_paren "")"" 
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
	: ""}"" 
	;

# Operators

unary_op_eol 
	: <unary_op>
	| <dual_op>
	;

# Dot operator

dot_identifier 
	: <identifier> 
	| matched_expr <dot_op> <identifier> 
	;

dot_alias 
	: <alias> 
	| matched_expr <dot_op> <alias> 
	| matched_expr <dot_op> open_curly ""}"" 
	| matched_expr <dot_op> open_curly container_args close_curly 
	;

dot_op_identifier 
	: <op_identifier> 
	| matched_expr <dot_op> <op_identifier> 
	;

dot_do_identifier 
	: <do_identifier> 
	| matched_expr <dot_op> <do_identifier> 
	;

dot_bracket_identifier 
	: <bracket_identifier> 
	| matched_expr <dot_op> <bracket_identifier> 
	;

dot_paren_identifier
	 : <paren_identifier> 
	| matched_expr <dot_op> <paren_identifier> 
	;

dot_call_identifier 
	: dot_paren_identifier 
	| matched_expr <dot_call_op> 
	;

# Function calls with no parentheses

call_args_no_parens_expr 
	: matched_expr 
	| no_parens_expr 
	;

call_args_no_parens_comma_expr 
	: matched_expr "","" call_args_no_parens_expr 
	| call_args_no_parens_comma_expr "","" call_args_no_parens_expr 
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
	: matched_expr "","" call_args_no_parens_kw 
	| call_args_no_parens_comma_expr 
	| call_args_no_parens_comma_expr "","" call_args_no_parens_kw 
	;

call_args_no_parens_many_strict 
	: call_args_no_parens_many 
	| open_paren call_args_no_parens_kw close_paren 
	| open_paren call_args_no_parens_many close_paren 
	;

stab_parens_many 
	: open_paren call_args_no_parens_kw close_paren 
	| open_paren call_args_no_parens_many close_paren 
	;

# Containers

container_expr 
	: matched_expr 
	| unmatched_expr 
	| no_parens_expr 
	;

container_args_base 
	: container_expr
	| container_args_base "","" container_expr
	;

container_args 
	: container_args_base 
	| container_args_base "","" kw? 
	;

# Function calls with parentheses

call_args_parens_expr 
	: matched_expr 
	| unmatched_expr 
	| no_parens_expr 
	;

call_args_parens_base 
	: call_args_parens_expr 
	| call_args_parens_base "","" call_args_parens_expr 
	;

call_args_parens 
	: open_paren "")"" 
	| open_paren no_parens_expr close_paren 
	| open_paren kw_base close_paren 
	| open_paren kw_base "","" close_paren 
	| open_paren call_args_parens_base close_paren 
	| open_paren call_args_parens_base "","" kw_base close_paren 
	| open_paren call_args_parens_base "","" kw_base "","" close_paren 
	;

# KV

kw_eol 
	: <kw_identifier>
#	| <kw_identifier_safe> 			# what is this???
#	| <kw_identifier_unsafe> 		# what is this???
	;

kw_base 
	: kw_eol container_expr 
	| kw_base "","" kw_eol container_expr 
	;

kw 
	: kw_base "",""?
	;

call_args_no_parens_kw_expr 
	: kw_eol matched_expr 
	| kw_eol no_parens_expr 
	;

call_args_no_parens_kw 
	: call_args_no_parens_kw_expr 
	| call_args_no_parens_kw_expr "","" call_args_no_parens_kw 
	;

# Lists

list_args 
	: kw 
	| container_args_base 
	| container_args_base "","" 
	| container_args_base "","" kw 
	;

list 
	: open_bracket ""]"" 
	| open_bracket list_args close_bracket 
	;

# Tuple

tuple 
	: open_curly ""}"" 
	| open_curly container_args close_curly 
	;

# Bitstrings

bit_string 
	: open_bit "">>"" 
	| open_bit container_args close_bit 
	;

# Map and structs

assoc_op_eol 
	: <assoc_op>
	;

assoc_expr 
	: matched_expr assoc_op_eol matched_expr 
	| unmatched_expr assoc_op_eol unmatched_expr 
	| matched_expr assoc_op_eol unmatched_expr 
	| unmatched_expr assoc_op_eol matched_expr 
	| dot_identifier 
	| parens_call 
	;

assoc_update 
	: matched_expr <pipe_op> assoc_expr 
	| unmatched_expr <pipe_op> assoc_expr 
	;

assoc_update_kw 
	: matched_expr <pipe_op> kw 
	| unmatched_expr <pipe_op> kw 
	;

assoc_base 
	: assoc_expr 
	| assoc_base "","" assoc_expr 
	;

assoc 
	: assoc_base 
	| assoc_base "","" 
	;

map_op 
	: <map_op>
	;

map_close 
	: kw close_curly 
	| assoc close_curly 
	| assoc_base "","" kw close_curly 
	;

map_args 
	: open_curly ""}"" 
	| open_curly map_close 
	| open_curly assoc_update close_curly 
	| open_curly assoc_update "","" close_curly 
	| open_curly assoc_update "","" map_close 
	| open_curly assoc_update_kw close_curly 
	;

struct_expr 
	: <atom> 
	| dot_alias 
	| dot_identifier 
	| <at_op> struct_expr 
	| unary_op_eol struct_expr 
	| parens_call 
	;

map 
	: map_op map_args 
	| <struct_op> struct_expr? map_args 			# added ?
	;"
]

{ #category : #'file types' }
ElixirParser class >> fileExtensions [
	^ #('.exs' '.ex')
]

{ #category : #generated }
ElixirParser class >> reduceTable [
^#(
	#(57 0 #reduceFor: 5478406 false ) 
	#(95 1 #reduceFor: 13060097 false ) 
	#(100 1 #reduceFor: 13199361 false ) 
	#(98 1 #reduceFor: 13146113 false ) 
	#(71 1 #reduceFor: 10625040 false ) 
	#(85 1 #reduceFor: 12236801 false ) 
	#(71 1 #reduceFor: 10625041 false ) 
	#(71 1 #reduceFor: 10625039 false ) 
	#(102 1 #reduceFor: 13246465 false ) 
	#(76 1 #reduceFor: 11323393 false ) 
	#(71 1 #reduceFor: 10625048 false ) 
	#(72 1 #reduceFor: 11185153 false ) 
	#(74 1 #reduceFor: 11245569 false ) 
	#(73 1 #reduceFor: 11213825 false ) 
	#(75 1 #reduceFor: 11283457 false ) 
	#(84 1 #reduceFor: 12201985 false ) 
	#(141 1 #reduceFor: 17258497 false ) 
	#(104 1 #reduceFor: 13308930 false ) 
	#(104 1 #reduceFor: 13308929 false ) 
	#(76 1 #reduceFor: 11323394 false ) 
	#(76 1 #reduceFor: 11323395 false ) 
	#(71 1 #reduceFor: 10625047 false ) 
	#(105 1 #reduceFor: 13371393 false ) 
	#(106 1 #reduceFor: 13449217 false ) 
	#(84 1 #reduceFor: 12201986 false ) 
	#(57 1 #reduceFor: 5478402 false ) 
	#(58 1 #reduceFor: 5619713 false ) 
	#(59 1 #reduceFor: 5667841 false ) 
	#(59 1 #reduceFor: 5667843 false ) 
	#(59 1 #reduceFor: 5667842 false ) 
	#(61 1 #reduceFor: 7577608 false ) 
	#(62 1 #reduceFor: 7823365 false ) 
	#(62 1 #reduceFor: 7823366 false ) 
	#(60 1 #reduceFor: 7342085 false ) 
	#(60 1 #reduceFor: 7342086 false ) 
	#(60 1 #reduceFor: 7342087 false ) 
	#(71 1 #reduceFor: 10625042 false ) 
	#(71 1 #reduceFor: 10625043 false ) 
	#(71 1 #reduceFor: 10625044 false ) 
	#(71 1 #reduceFor: 10625045 false ) 
	#(71 1 #reduceFor: 10625035 false ) 
	#(71 1 #reduceFor: 10625050 false ) 
	#(71 1 #reduceFor: 10625026 false ) 
	#(71 1 #reduceFor: 10625025 false ) 
	#(57 1 #reduceFor: 5478401 false ) 
	#(71 1 #reduceFor: 10625034 false ) 
	#(70 1 #reduceFor: 10305538 false ) 
	#(71 1 #reduceFor: 10625049 false ) 
	#(70 1 #reduceFor: 10305537 false ) 
	#(111 1 #reduceFor: 13991937 false ) 
	#(71 1 #reduceFor: 10625036 false ) 
	#(71 1 #reduceFor: 10625038 false ) 
	#(71 1 #reduceFor: 10625046 false ) 
	#(71 1 #reduceFor: 10625037 false ) 
	#(109 1 #reduceFor: 13793281 false ) 
	#(108 1 #reduceFor: 13706241 false ) 
	#(107 1 #reduceFor: 13619201 false ) 
	#(110 1 #reduceFor: 13895681 false ) 
	#(85 2 #reduceFor: 12236802 false ) 
	#(144 1 #reduceFor: 17607681 false ) 
	#(144 1 #reduceFor: 17607686 false ) 
	#(144 1 #reduceFor: 17607683 false ) 
	#(144 1 #reduceFor: 17607682 false ) 
	#(145 2 #reduceFor: 17740802 false ) 
	#(71 2 #reduceFor: 10625027 false ) 
	#(61 2 #reduceFor: 7577607 false ) 
	#(60 2 #reduceFor: 7342084 false ) 
	#(62 2 #reduceFor: 7823364 false ) 
	#(61 2 #reduceFor: 7577606 false ) 
	#(60 2 #reduceFor: 7342083 false ) 
	#(62 2 #reduceFor: 7823363 false ) 
	#(57 2 #reduceFor: 5478404 false ) 
	#(60 2 #reduceFor: 7342081 false ) 
	#(61 2 #reduceFor: 7577601 false ) 
	#(62 2 #reduceFor: 7823361 false ) 
	#(111 2 #reduceFor: 13991938 false ) 
	#(61 2 #reduceFor: 7577602 false ) 
	#(61 2 #reduceFor: 7577603 false ) 
	#(61 2 #reduceFor: 7577604 false ) 
	#(60 2 #reduceFor: 7342088 false ) 
	#(81 2 #reduceFor: 11874306 false ) 
	#(57 2 #reduceFor: 5478403 false ) 
	#(92 1 #reduceFor: 12889089 false ) 
	#(126 1 #reduceFor: 15879169 false ) 
	#(91 1 #reduceFor: 12596225 false ) 
	#(115 1 #reduceFor: 14449666 false ) 
	#(116 1 #reduceFor: 14524417 false ) 
	#(89 1 #reduceFor: 12409857 false ) 
	#(91 1 #reduceFor: 12596226 false ) 
	#(117 1 #reduceFor: 14575618 false ) 
	#(114 1 #reduceFor: 14330881 false ) 
	#(114 1 #reduceFor: 14330882 false ) 
	#(114 1 #reduceFor: 14330883 false ) 
	#(130 1 #reduceFor: 16194561 false ) 
	#(115 1 #reduceFor: 14449665 false ) 
	#(97 2 #reduceFor: 13109249 false ) 
	#(132 2 #reduceFor: 16433153 false ) 
	#(120 1 #reduceFor: 15064065 false ) 
	#(120 1 #reduceFor: 15064066 false ) 
	#(120 1 #reduceFor: 15064067 false ) 
	#(121 1 #reduceFor: 15140865 false ) 
	#(131 1 #reduceFor: 16325634 false ) 
	#(128 1 #reduceFor: 16084993 false ) 
	#(131 1 #reduceFor: 16325633 false ) 
	#(134 2 #reduceFor: 16604161 false ) 
	#(122 1 #reduceFor: 15227905 false ) 
	#(133 2 #reduceFor: 16516097 false ) 
	#(61 2 #reduceFor: 7577605 false ) 
	#(60 2 #reduceFor: 7342082 false ) 
	#(62 2 #reduceFor: 7823362 false ) 
	#(69 2 #reduceFor: 10190850 false ) 
	#(67 2 #reduceFor: 9932802 false ) 
	#(118 1 #reduceFor: 14750721 false ) 
	#(68 2 #reduceFor: 10057730 false ) 
	#(69 2 #reduceFor: 10190849 false ) 
	#(67 2 #reduceFor: 9932801 false ) 
	#(68 2 #reduceFor: 10057729 false ) 
	#(86 1 #reduceFor: 12270593 false ) 
	#(63 2 #reduceFor: 8027139 false ) 
	#(81 2 #reduceFor: 11874305 false ) 
	#(77 2 #reduceFor: 11400193 false ) 
	#(145 2 #reduceFor: 17740801 false ) 
	#(144 2 #reduceFor: 17607684 false ) 
	#(143 2 #reduceFor: 17375233 false ) 
	#(136 1 #reduceFor: 16730118 false ) 
	#(136 1 #reduceFor: 16730117 false ) 
	#(139 1 #reduceFor: 17149953 false ) 
	#(140 1 #reduceFor: 17212417 false ) 
	#(143 2 #reduceFor: 17375234 false ) 
	#(144 2 #reduceFor: 17607685 false ) 
	#(145 3 #reduceFor: 17740803 false ) 
	#(82 3 #reduceFor: 11961346 false ) 
	#(82 3 #reduceFor: 11961345 false ) 
	#(58 3 #reduceFor: 5619714 false ) 
	#(64 2 #reduceFor: 8304653 false ) 
	#(65 2 #reduceFor: 8805389 false ) 
	#(66 2 #reduceFor: 9274381 false ) 
	#(64 2 #reduceFor: 8304651 false ) 
	#(65 2 #reduceFor: 8805387 false ) 
	#(66 2 #reduceFor: 9274379 false ) 
	#(66 2 #reduceFor: 9274386 false ) 
	#(64 2 #reduceFor: 8304650 false ) 
	#(65 2 #reduceFor: 8805386 false ) 
	#(66 2 #reduceFor: 9274378 false ) 
	#(64 2 #reduceFor: 8304652 false ) 
	#(65 2 #reduceFor: 8805388 false ) 
	#(66 2 #reduceFor: 9274380 false ) 
	#(64 2 #reduceFor: 8304641 false ) 
	#(65 2 #reduceFor: 8805377 false ) 
	#(66 2 #reduceFor: 9274369 false ) 
	#(64 2 #reduceFor: 8304647 false ) 
	#(65 2 #reduceFor: 8805383 false ) 
	#(66 2 #reduceFor: 9274375 false ) 
	#(64 2 #reduceFor: 8304646 false ) 
	#(65 2 #reduceFor: 8805382 false ) 
	#(66 2 #reduceFor: 9274374 false ) 
	#(64 2 #reduceFor: 8304654 false ) 
	#(65 2 #reduceFor: 8805390 false ) 
	#(66 2 #reduceFor: 9274382 false ) 
	#(64 2 #reduceFor: 8304655 false ) 
	#(65 2 #reduceFor: 8805391 false ) 
	#(66 2 #reduceFor: 9274383 false ) 
	#(66 2 #reduceFor: 9274384 false ) 
	#(66 2 #reduceFor: 9274385 false ) 
	#(64 2 #reduceFor: 8304656 false ) 
	#(64 2 #reduceFor: 8304648 false ) 
	#(65 2 #reduceFor: 8805384 false ) 
	#(66 2 #reduceFor: 9274376 false ) 
	#(64 2 #reduceFor: 8304645 false ) 
	#(65 2 #reduceFor: 8805381 false ) 
	#(66 2 #reduceFor: 9274373 false ) 
	#(64 2 #reduceFor: 8304644 false ) 
	#(65 2 #reduceFor: 8805380 false ) 
	#(66 2 #reduceFor: 9274372 false ) 
	#(64 2 #reduceFor: 8304642 false ) 
	#(65 2 #reduceFor: 8805378 false ) 
	#(66 2 #reduceFor: 9274370 false ) 
	#(64 2 #reduceFor: 8304643 false ) 
	#(65 2 #reduceFor: 8805379 false ) 
	#(66 2 #reduceFor: 9274371 false ) 
	#(64 2 #reduceFor: 8304649 false ) 
	#(65 2 #reduceFor: 8805385 false ) 
	#(66 2 #reduceFor: 9274377 false ) 
	#(105 3 #reduceFor: 13371394 false ) 
	#(106 3 #reduceFor: 13449218 false ) 
	#(109 3 #reduceFor: 13793282 false ) 
	#(108 3 #reduceFor: 13706242 false ) 
	#(107 3 #reduceFor: 13619202 false ) 
	#(110 3 #reduceFor: 13895682 false ) 
	#(99 1 #reduceFor: 13171713 false ) 
	#(79 1 #reduceFor: 11575297 false ) 
	#(80 2 #reduceFor: 11657217 false ) 
	#(78 1 #reduceFor: 11520002 false ) 
	#(78 1 #reduceFor: 11520001 false ) 
	#(57 3 #reduceFor: 5478405 false ) 
	#(92 2 #reduceFor: 12889090 false ) 
	#(87 1 #reduceFor: 12305409 false ) 
	#(71 3 #reduceFor: 10625028 false ) 
	#(91 2 #reduceFor: 12596227 false ) 
	#(91 2 #reduceFor: 12596229 false ) 
	#(91 2 #reduceFor: 12596230 false ) 
	#(129 2 #reduceFor: 16109569 false ) 
	#(129 2 #reduceFor: 16109570 false ) 
	#(96 1 #reduceFor: 13083649 false ) 
	#(71 3 #reduceFor: 10625033 false ) 
	#(71 3 #reduceFor: 10625029 false ) 
	#(131 2 #reduceFor: 16325635 false ) 
	#(127 2 #reduceFor: 16006145 false ) 
	#(128 2 #reduceFor: 16084994 false ) 
	#(132 3 #reduceFor: 16433154 false ) 
	#(122 2 #reduceFor: 15227906 false ) 
	#(101 1 #reduceFor: 13221889 false ) 
	#(134 3 #reduceFor: 16604162 false ) 
	#(103 1 #reduceFor: 13270017 false ) 
	#(133 3 #reduceFor: 16516098 false ) 
	#(63 3 #reduceFor: 8027141 false ) 
	#(63 3 #reduceFor: 8027140 false ) 
	#(86 2 #reduceFor: 12270594 false ) 
	#(83 2 #reduceFor: 12079105 false ) 
	#(93 1 #reduceFor: 12935170 false ) 
	#(90 1 #reduceFor: 12457985 false ) 
	#(94 1 #reduceFor: 12989441 false ) 
	#(88 1 #reduceFor: 12343297 false ) 
	#(125 2 #reduceFor: 15533057 false ) 
	#(123 1 #reduceFor: 15341569 false ) 
	#(123 1 #reduceFor: 15341570 false ) 
	#(123 1 #reduceFor: 15341571 false ) 
	#(124 1 #reduceFor: 15425537 false ) 
	#(63 3 #reduceFor: 8027137 false ) 
	#(77 3 #reduceFor: 11400194 false ) 
	#(135 1 #reduceFor: 16697345 false ) 
	#(142 2 #reduceFor: 17283073 false ) 
	#(143 3 #reduceFor: 17375235 false ) 
	#(143 3 #reduceFor: 17375238 false ) 
	#(140 2 #reduceFor: 17212418 false ) 
	#(142 2 #reduceFor: 17283074 false ) 
	#(106 4 #reduceFor: 13449219 false ) 
	#(80 3 #reduceFor: 11657218 false ) 
	#(80 3 #reduceFor: 11657219 false ) 
	#(112 1 #reduceFor: 14113793 false ) 
	#(112 1 #reduceFor: 14113794 false ) 
	#(113 3 #reduceFor: 14181377 false ) 
	#(117 3 #reduceFor: 14575617 false ) 
	#(87 2 #reduceFor: 12305410 false ) 
	#(89 3 #reduceFor: 12409858 false ) 
	#(119 3 #reduceFor: 14922754 false ) 
	#(119 3 #reduceFor: 14922753 false ) 
	#(113 3 #reduceFor: 14181378 false ) 
	#(117 3 #reduceFor: 14575619 false ) 
	#(130 3 #reduceFor: 16194562 false ) 
	#(71 4 #reduceFor: 10625032 false ) 
	#(71 4 #reduceFor: 10625030 false ) 
	#(121 3 #reduceFor: 15140866 false ) 
	#(131 3 #reduceFor: 16325636 false ) 
	#(122 3 #reduceFor: 15227907 false ) 
	#(118 3 #reduceFor: 14750723 false ) 
	#(118 3 #reduceFor: 14750722 false ) 
	#(93 2 #reduceFor: 12935169 false ) 
	#(90 2 #reduceFor: 12457986 false ) 
	#(83 3 #reduceFor: 12079106 false ) 
	#(94 2 #reduceFor: 12989442 false ) 
	#(83 3 #reduceFor: 12079107 false ) 
	#(88 2 #reduceFor: 12343298 false ) 
	#(125 3 #reduceFor: 15533058 false ) 
	#(125 3 #reduceFor: 15533061 false ) 
	#(125 3 #reduceFor: 15533059 false ) 
	#(63 4 #reduceFor: 8027138 false ) 
	#(138 3 #reduceFor: 17064961 false ) 
	#(137 3 #reduceFor: 16966657 false ) 
	#(136 3 #reduceFor: 16730113 false ) 
	#(136 3 #reduceFor: 16730115 false ) 
	#(138 3 #reduceFor: 17064962 false ) 
	#(137 3 #reduceFor: 16966658 false ) 
	#(136 3 #reduceFor: 16730116 false ) 
	#(136 3 #reduceFor: 16730114 false ) 
	#(143 4 #reduceFor: 17375236 false ) 
	#(143 4 #reduceFor: 17375237 false ) 
	#(139 3 #reduceFor: 17149954 false ) 
	#(106 5 #reduceFor: 13449220 false ) 
	#(79 3 #reduceFor: 11575298 false ) 
	#(80 4 #reduceFor: 11657220 false ) 
	#(91 4 #reduceFor: 12596228 false ) 
	#(91 4 #reduceFor: 12596231 false ) 
	#(71 5 #reduceFor: 10625031 false ) 
	#(127 4 #reduceFor: 16006146 false ) 
	#(83 4 #reduceFor: 12079108 false ) 
	#(124 3 #reduceFor: 15425538 false ) 
	#(125 4 #reduceFor: 15533060 false ) 
	#(142 4 #reduceFor: 17283075 false ) 
	#(125 5 #reduceFor: 15533062 false ) 
	#(125 6 #reduceFor: 15533063 false )
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
ElixirParser class >> transitionTable [
^#(
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 65 0 25 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 113 0 55 0 117 0 57 0 121 0 58 0 125 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 197 0 84 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151 0 6 0 152] 
#[0 0 10 0 1 0 2 0 4 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 0 14 0 1 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[0 0 18 0 1 0 3 0 5 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 0 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 26 0 1 0 26 0 5 0 26 0 7 0 26 0 11 0 26 0 12 0 26 0 13 0 26 0 14 0 26 0 15 0 26 0 17 0 26 0 18 0 26 0 19 0 26 0 20 0 26 0 21 0 26 0 22 0 65 0 25 0 26 0 26 0 26 0 27 0 26 0 28 0 26 0 34 0 26 0 43 0 26 0 45 0 26 0 46 0 26 0 47 0 26 0 48 0 26 0 51 0 26 0 52 0 26 0 53 0 26 0 54 0 113 0 55 1 37 0 84 0 26 0 147 0 26 0 148 0 26 0 150 0 26 0 151] 
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
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 53 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 1 57 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 1 61 0 102 1 65 0 104 1 69 0 105 1 73 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 89 0 143 1 93 0 144 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 70 0 15] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 101 0 59 1 105 0 60 0 133 0 61 1 109 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 74 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[0 0 78 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 113 0 59 1 117 0 60 0 133 0 61 1 121 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 1 125 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 1 129 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 146 0 147 0 148 0 149 0 150 0 151 0 152] 
#[0 0 98 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 102 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 146 0 147 0 148 0 150 0 151 0 152] 
#[0 0 0 0 152] 
#[1 0 65 0 25 0 113 0 55 1 133 0 84 0 106 0 152] 
#[0 0 110 0 25 0 55 0 152] 
#[1 0 114 0 2 0 114 0 4 0 114 0 10 0 114 0 25 0 114 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 0 114 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 114 0 146 1 213 0 149 0 114 0 152] 
#[1 0 118 0 2 0 118 0 3 0 118 0 4 0 118 0 6 0 118 0 8 0 118 0 10 0 118 0 16 0 118 0 25 0 118 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 0 118 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 0 118 0 55 1 217 0 64 1 221 0 65 1 225 0 66 0 118 0 146 0 118 0 152] 
#[0 0 122 0 2 0 3 0 4 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 0 126 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 0 130 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 134 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 138 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 142 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 6 0 17 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 16 0 146 0 25 0 146 0 28 0 146 0 29 0 146 0 30 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 44 0 146 0 49 0 146 0 50 1 229 0 53 0 146 0 55 1 233 0 80 1 237 0 98 0 146 0 146 0 146 0 149 0 146 0 152] 
#[0 0 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 158 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 241 0 58 0 125 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151 0 182 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 2 9 0 89 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 37 0 115 2 41 0 116 2 45 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 2 65 0 2 2 69 0 4 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 2 73 0 89 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 37 0 115 2 41 0 116 2 45 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 186 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 2 77 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 97 0 121 2 101 0 126 2 105 0 127 2 109 0 128 2 113 0 131 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 2 117 0 6 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 121 0 121 2 125 0 122 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 2 129 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 121 0 121 2 133 0 122 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 137 0 59 2 141 0 60 0 133 0 61 2 145 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 190 0 2 0 190 0 3 0 190 0 4 0 13 0 5 0 190 0 6 0 17 0 7 0 190 0 8 0 190 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 190 0 25 0 69 0 26 0 73 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 0 190 0 55 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 2 165 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 181 0 114 2 185 0 115 2 189 0 116 2 193 0 117 2 197 0 118 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 0 190 0 146 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151 0 190 0 152] 
#[0 0 194 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 2 165 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 201 0 114 2 205 0 115 2 209 0 116 2 193 0 117 2 213 0 118 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 6 0 198 0 8 2 217 0 9 0 198 0 10 0 198 0 16 0 198 0 25 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 0 198 0 44 0 198 0 49 0 198 0 50 0 198 0 55 2 221 0 83 2 225 0 86 0 198 0 146 0 198 0 149 0 198 0 152] 
#[1 0 17 0 7 2 229 0 80 1 237 0 98] 
#[0 0 202 0 1] 
#[1 0 9 0 1 2 233 0 95 2 237 0 125] 
#[0 0 206 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 210 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 214 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 37 0 15 2 241 0 102 2 245 0 143] 
#[0 0 218 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 222 0 7] 
#[0 0 226 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 230 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 0 234 0 1] 
#[0 0 238 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[1 0 46 0 7 0 242 0 15 0 46 0 29 0 46 0 30 0 46 0 31 0 46 0 32 0 46 0 35 0 46 0 36 0 46 0 37 0 46 0 38 0 46 0 39 0 46 0 40 0 46 0 41 0 46 0 42 0 46 0 43 0 46 0 44 0 46 0 49 0 46 0 50 0 46 0 53 0 46 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 253 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 9 0 60 0 153 0 69 0 157 0 70 1 125 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 1 57 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 1 65 0 104 1 69 0 105 1 73 0 106 1 77 0 107 1 81 0 108 1 129 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 3 13 0 144 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 0 170 0 7 0 246 0 15 0 170 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 44 0 170 0 49 0 170 0 50 0 170 0 53 0 170 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 3 77 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 3 81 0 60 3 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 3 93 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 121 0 121 2 133 0 122 2 101 0 126 2 105 0 127 3 97 0 128 1 1 0 132 1 5 0 133 1 9 0 134 3 101 0 136 3 105 0 137 3 109 0 138 3 113 0 139 3 117 0 140 1 13 0 141 3 121 0 142 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 125 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 1 57 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 1 65 0 104 1 69 0 105 1 73 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 3 129 0 144 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 7 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 1 45 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 3 133 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 3 137 0 115 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151] 
#[1 0 194 0 7 0 254 0 15 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 49 0 194 0 50 0 194 0 53 0 194 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 3 133 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 3 141 0 115 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 2 233 0 95 3 145 0 125] 
#[0 1 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 37 0 15 2 241 0 102 3 149 0 143] 
#[0 0 11 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 1 10 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 15 0 2 0 15 0 3 0 15 0 4 0 15 0 6 0 15 0 8 0 15 0 10 0 15 0 16 0 15 0 25 0 15 0 28 0 19 0 29 0 23 0 30 0 27 0 31 0 31 0 32 0 15 0 33 0 35 0 35 0 39 0 36 0 43 0 37 0 47 0 38 0 51 0 39 0 55 0 40 0 59 0 41 0 63 0 42 0 67 0 43 0 71 0 44 0 75 0 49 1 197 0 50 0 15 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 15 0 146 1 213 0 149 0 15 0 152] 
#[0 0 79 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 22 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 83 0 2 0 83 0 3 0 83 0 4 0 83 0 6 0 83 0 8 0 83 0 10 0 83 0 16 0 83 0 25 0 83 0 28 0 87 0 29 0 91 0 30 0 95 0 31 0 99 0 32 0 83 0 33 0 103 0 35 0 107 0 36 0 111 0 37 0 115 0 38 0 119 0 39 0 123 0 40 0 127 0 41 0 131 0 42 0 135 0 43 0 139 0 44 0 143 0 49 1 26 0 50 0 83 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 83 0 146 1 26 0 149 0 83 0 152] 
#[0 0 147 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 6 0 17 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 16 0 146 0 25 0 146 0 28 0 146 0 29 0 146 0 30 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 44 0 146 0 49 0 146 0 50 1 229 0 53 0 146 0 55 3 153 0 80 1 237 0 98 0 146 0 146 0 146 0 149 0 146 0 152] 
#[1 0 17 0 7 3 157 0 80 1 237 0 98] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 161 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151 1 34 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 165 0 60 3 169 0 61 3 173 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 3 177 0 60 3 181 0 61 3 185 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 53 0 126 2 57 0 129 3 189 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 193 0 60 3 197 0 61 3 201 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 205 0 60 3 209 0 61 3 213 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 217 0 60 3 221 0 61 3 225 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 229 0 60 3 233 0 61 3 237 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 241 0 60 3 245 0 61 3 249 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 253 0 60 4 1 0 61 4 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 9 0 60 4 13 0 61 4 17 0 62 0 141 0 63 4 21 0 67 4 25 0 68 4 29 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 33 0 60 4 37 0 61 4 41 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 45 0 60 4 49 0 61 4 53 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 57 0 60 4 61 0 61 4 65 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 69 0 60 4 73 0 61 4 77 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 81 0 60 4 85 0 61 4 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 93 0 60 4 97 0 61 4 101 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 37 0 15 4 105 0 52 4 109 0 54 4 113 0 102 4 117 0 147 4 121 0 148 4 125 0 150 4 129 0 151] 
#[0 1 38 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 42 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 46 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 50 0 1] 
#[0 1 54 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 58 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 62 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 66 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 70 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 4 133 0 3 0 13 0 5 0 17 0 7 4 137 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 4 141 0 78 4 145 0 79 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 4 149 0 99 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 4 153 0 120 2 101 0 126 4 157 0 127 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 65 0 25 0 113 0 55 4 161 0 84 1 74 0 152] 
#[1 0 9 0 1 1 78 0 2 1 78 0 4 0 13 0 5 0 17 0 7 1 78 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 1 78 0 25 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 78 0 55 4 165 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 78 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 1 82 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[0 1 86 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 0 114 0 2 4 169 0 3 0 114 0 4 0 114 0 10 0 114 0 25 1 90 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 0 114 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 114 0 146 1 213 0 149] 
#[1 0 122 0 2 0 122 0 4 0 122 0 10 0 122 0 25 1 94 0 28 0 122 0 55 0 122 0 146] 
#[1 4 173 0 10 0 65 0 25 0 113 0 55 4 177 0 84 4 181 0 87] 
#[0 1 98 0 2 0 4 0 10 0 25 0 55 0 146] 
#[0 1 102 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 0 9 0 1 2 65 0 2 2 69 0 4 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 2 73 0 89 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 37 0 115 2 41 0 116 4 185 0 117 2 49 0 119 2 53 0 126 2 57 0 129 4 189 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 186 0 2 0 186 0 3 0 186 0 4 0 186 0 7 0 186 0 10 0 186 0 25 1 245 0 28 0 186 0 29 4 193 0 30 0 186 0 31 0 186 0 32 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 42 0 186 0 43 0 186 0 44 0 186 0 49 0 186 0 50 0 186 0 53 0 186 0 55 4 197 0 92 0 186 0 146 0 186 0 149] 
#[1 1 106 0 2 4 201 0 3 1 106 0 4 1 106 0 6 1 106 0 8 1 106 0 9 1 106 0 10 1 106 0 16 1 106 0 25 1 106 0 28 1 106 0 29 1 106 0 30 1 106 0 31 1 106 0 32 1 106 0 33 1 106 0 35 1 106 0 36 1 106 0 37 1 106 0 38 1 106 0 39 1 106 0 40 1 106 0 41 1 106 0 42 1 106 0 43 1 106 0 44 1 106 0 49 1 106 0 50 1 106 0 55 1 106 0 146 1 106 0 149 1 106 0 152] 
#[1 1 245 0 28 4 205 0 92] 
#[0 1 110 0 28] 
#[0 1 114 0 9 0 28] 
#[0 1 118 0 9 0 28] 
#[1 1 245 0 28 4 209 0 30 4 213 0 92] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 217 0 60 4 221 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 1 122 0 2 4 225 0 3 1 122 0 4 1 122 0 6 1 122 0 8 1 122 0 9 1 122 0 10 1 122 0 16 1 122 0 25 1 122 0 28 1 122 0 29 1 122 0 30 1 122 0 31 1 122 0 32 1 122 0 33 1 122 0 35 1 122 0 36 1 122 0 37 1 122 0 38 1 122 0 39 1 122 0 40 1 122 0 41 1 122 0 42 1 122 0 43 1 122 0 44 1 122 0 49 1 122 0 50 1 122 0 55 1 122 0 146 1 122 0 149 1 122 0 152] 
#[0 1 126 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 130 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 4 229 0 2 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 4 233 0 89 2 13 0 91 2 17 0 92 2 21 0 95 4 237 0 96 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 37 0 115 2 41 0 116 2 45 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 4 229 0 2 4 241 0 4 0 65 0 25 0 113 0 55 4 245 0 84 4 249 0 96] 
#[0 1 134 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 1 138 0 2 1 138 0 3 1 138 0 6 1 138 0 8 1 138 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 1 213 0 149] 
#[1 1 142 0 2 1 142 0 3 1 142 0 6 1 142 0 8 1 142 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[0 1 146 0 2 0 3 0 6 0 8 0 16] 
#[0 1 150 0 3 0 6 0 8 0 16] 
#[1 4 253 0 3 1 154 0 8] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 5 1 0 120 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 5 5 0 3 1 158 0 6 1 158 0 8 1 158 0 16] 
#[0 1 162 0 8] 
#[1 4 137 0 8 5 9 0 99] 
#[0 1 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 5 13 0 3 1 170 0 6 1 170 0 16] 
#[1 5 17 0 6 5 21 0 101] 
#[0 1 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 5 25 0 16 5 29 0 103] 
#[0 1 178 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 151 0 2 0 151 0 3 0 151 0 4 0 151 0 6 0 151 0 8 0 151 0 10 0 151 0 16 0 151 0 25 0 151 0 28 0 155 0 29 0 159 0 30 0 163 0 31 0 167 0 32 0 151 0 33 0 171 0 35 0 175 0 36 0 179 0 37 0 183 0 38 0 187 0 39 0 191 0 40 0 195 0 41 0 199 0 42 0 203 0 43 0 207 0 44 0 211 0 49 1 197 0 50 0 151 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 151 0 146 1 213 0 149 0 151 0 152] 
#[0 0 215 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 33 0 60 5 37 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 41 0 60 5 45 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 1 125 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 1 129 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 1 90 0 2 4 169 0 3 1 90 0 4 1 90 0 6 1 90 0 8 1 90 0 9 1 90 0 10 1 90 0 16 1 90 0 25 1 90 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 1 90 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 1 90 0 55 1 201 0 64 1 209 0 66 1 90 0 146 1 213 0 149 1 90 0 152] 
#[0 1 94 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 2 65 0 2 2 69 0 4 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 2 73 0 89 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 37 0 115 2 41 0 116 5 109 0 117 2 49 0 119 2 53 0 126 2 57 0 129 5 113 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 117 0 60 5 121 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 190 0 2 0 190 0 3 0 190 0 4 0 13 0 5 0 190 0 6 0 17 0 7 0 190 0 8 0 190 0 9 0 190 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 190 0 25 0 69 0 26 0 73 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 0 190 0 55 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 2 165 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 3 137 0 115 5 125 0 116 5 129 0 117 2 197 0 118 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 0 190 0 146 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151 0 190 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 2 165 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 3 141 0 115 5 133 0 116 5 129 0 117 2 213 0 118 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 217 0 9 5 137 0 83 2 225 0 86] 
#[1 1 190 0 2 1 190 0 3 1 190 0 4 1 190 0 6 1 190 0 8 1 110 0 9 1 190 0 10 1 190 0 16 1 190 0 25 1 190 0 28 1 190 0 29 1 190 0 30 1 190 0 31 1 190 0 32 1 190 0 33 1 190 0 35 1 190 0 36 1 190 0 37 1 190 0 38 1 190 0 39 1 190 0 40 1 190 0 41 1 190 0 42 1 190 0 43 1 190 0 44 1 190 0 49 1 190 0 50 1 190 0 55 1 190 0 146 1 190 0 149 1 190 0 152] 
#[1 1 194 0 2 1 194 0 3 1 194 0 4 1 194 0 6 1 194 0 8 1 114 0 9 1 194 0 10 1 194 0 16 1 194 0 25 1 194 0 28 1 194 0 29 1 194 0 30 1 194 0 31 1 194 0 32 1 194 0 33 1 194 0 35 1 194 0 36 1 194 0 37 1 194 0 38 1 194 0 39 1 194 0 40 1 194 0 41 1 194 0 42 1 194 0 43 1 194 0 44 1 194 0 49 1 194 0 55 1 194 0 146 1 194 0 152] 
#[1 1 198 0 2 1 198 0 3 1 198 0 4 1 198 0 6 1 198 0 8 1 118 0 9 1 198 0 10 1 198 0 16 1 198 0 25 1 198 0 28 1 198 0 29 1 198 0 30 1 198 0 31 1 198 0 32 1 198 0 33 1 198 0 35 1 198 0 36 1 198 0 37 1 198 0 38 1 198 0 39 1 198 0 40 1 198 0 41 1 198 0 42 1 198 0 43 1 198 0 44 1 198 0 49 1 198 0 55 1 198 0 146 1 198 0 152] 
#[0 1 202 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 217 0 9 5 141 0 83 2 225 0 86] 
#[1 1 206 0 2 1 206 0 3 1 206 0 4 1 206 0 6 1 206 0 8 1 110 0 9 1 206 0 10 1 206 0 16 1 206 0 25 1 206 0 28 1 206 0 29 1 206 0 30 1 206 0 31 1 206 0 32 1 206 0 33 1 206 0 35 1 206 0 36 1 206 0 37 1 206 0 38 1 206 0 39 1 206 0 40 1 206 0 41 1 206 0 42 1 206 0 43 1 206 0 44 1 206 0 49 1 206 0 50 1 206 0 55 1 206 0 146 1 206 0 149 1 206 0 152] 
#[1 1 210 0 2 1 210 0 3 1 210 0 4 1 210 0 6 1 210 0 8 1 114 0 9 1 210 0 10 1 210 0 16 1 210 0 25 1 210 0 28 1 210 0 29 1 210 0 30 1 210 0 31 1 210 0 32 1 210 0 33 1 210 0 35 1 210 0 36 1 210 0 37 1 210 0 38 1 210 0 39 1 210 0 40 1 210 0 41 1 210 0 42 1 210 0 43 1 210 0 44 1 210 0 49 1 210 0 55 1 210 0 146 1 210 0 152] 
#[0 1 214 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 1 218 0 1 1 218 0 5 1 218 0 7 1 218 0 10 1 218 0 11 1 218 0 12 1 218 0 13 1 218 0 14 1 218 0 15 1 218 0 17 1 218 0 18 1 218 0 19 1 218 0 20 1 218 0 21 1 218 0 22 0 65 0 25 1 218 0 26 1 218 0 27 1 218 0 28 1 218 0 34 1 218 0 43 1 218 0 45 1 218 0 46 1 218 0 47 1 218 0 48 1 218 0 51 1 218 0 52 1 218 0 53 1 218 0 54 0 113 0 55 5 145 0 84 1 218 0 146 1 218 0 147 1 218 0 148 1 218 0 150 1 218 0 151] 
#[0 1 222 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 5 149 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 5 153 0 88 5 157 0 89 5 161 0 90 2 13 0 91 2 17 0 92 5 165 0 93 5 169 0 94 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 37 0 115 2 41 0 116 2 45 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 5 173 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 1 226 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 5 177 0 2 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 5 181 0 60 5 185 0 61 5 189 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 5 193 0 123 5 197 0 124 2 101 0 126 5 201 0 127 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 1 230 0 2 1 230 0 3 1 230 0 4 1 230 0 6 1 230 0 7 1 230 0 8 2 217 0 9 1 230 0 10 1 230 0 16 1 230 0 25 1 230 0 28 1 230 0 29 1 230 0 30 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 40 1 230 0 41 1 230 0 42 1 230 0 43 1 230 0 44 1 230 0 49 1 230 0 50 1 230 0 53 1 230 0 55 5 205 0 83 2 225 0 86 2 233 0 95 5 209 0 125 1 230 0 146 1 230 0 149 1 230 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 5 213 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 5 225 0 60 5 229 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 5 237 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 3 97 0 128 1 1 0 132 1 5 0 133 1 9 0 134 3 101 0 136 3 105 0 137 3 109 0 138 3 113 0 139 3 117 0 140 1 13 0 141 3 121 0 142 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 1 234 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 9 0 60 0 153 0 69 0 157 0 70 1 125 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 1 129 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 3 17 0 29 1 14 0 30 1 14 0 31 1 14 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 1 14 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 125 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 1 45 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 3 133 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 3 137 0 115 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151] 
#[1 1 26 0 29 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 35 1 26 0 36 1 26 0 37 1 26 0 38 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 44 1 26 0 49 1 26 0 50 1 201 0 64 1 26 0 149] 
#[0 1 238 0 15] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 245 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 249 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 253 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 1 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 5 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 9 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 13 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 17 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 21 0 60 4 29 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 25 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 29 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 33 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 37 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 41 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 45 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 233 0 106 1 77 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 1 242 0 2 1 242 0 3 1 242 0 4 1 242 0 6 0 219 0 7 1 242 0 8 1 242 0 9 1 242 0 10 1 242 0 16 1 242 0 25 1 242 0 28 0 219 0 29 0 219 0 30 0 219 0 31 0 219 0 32 1 242 0 33 0 219 0 35 0 219 0 36 0 219 0 37 0 219 0 38 0 219 0 39 0 219 0 40 0 219 0 41 0 219 0 42 0 219 0 43 0 219 0 44 0 219 0 49 0 219 0 50 0 219 0 53 1 242 0 55 1 242 0 146 0 219 0 149 1 242 0 152] 
#[1 1 138 0 3 1 138 0 16 1 137 0 29 1 141 0 30 1 145 0 31 6 49 0 32 6 53 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 6 57 0 135 1 213 0 149] 
#[1 1 142 0 3 1 142 0 16 1 137 0 29 1 141 0 30 1 145 0 31 6 61 0 32 6 53 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 65 0 135] 
#[1 0 223 0 3 0 170 0 7 0 223 0 16 0 170 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 33 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 44 0 170 0 49 0 170 0 50 0 170 0 53 0 170 0 149] 
#[1 0 9 0 1 0 227 0 3 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 227 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 2 165 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 181 0 114 2 185 0 115 2 189 0 116 2 193 0 117 2 197 0 118 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151] 
#[1 5 25 0 16 6 69 0 103] 
#[0 1 254 0 3 0 16] 
#[1 6 73 0 3 5 25 0 16 6 77 0 103] 
#[1 5 25 0 16 6 81 0 103] 
#[1 6 85 0 3 2 2 0 16] 
#[1 5 25 0 16 6 89 0 103] 
#[0 2 6 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[0 2 10 0 15] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[0 1 190 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 1 230 0 2 1 230 0 3 1 230 0 4 1 230 0 6 1 230 0 7 1 230 0 8 1 230 0 9 1 230 0 10 1 230 0 15 1 230 0 16 1 230 0 25 1 230 0 28 1 230 0 29 1 230 0 30 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 40 1 230 0 41 1 230 0 42 1 230 0 43 1 230 0 44 1 230 0 49 1 230 0 50 1 230 0 53 1 230 0 55 2 233 0 95 6 93 0 125 1 230 0 146 1 230 0 149 1 230 0 152] 
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
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 6 97 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 121 0 121 6 101 0 122 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 2 234 0 7] 
#[0 2 238 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 2 242 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 2 246 0 1] 
#[1 4 137 0 8 6 105 0 99] 
#[0 2 250 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 2 254 0 3 0 8] 
#[1 6 109 0 3 4 137 0 8 6 113 0 99] 
#[0 3 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 6 0 3 0 8] 
#[1 6 117 0 3 3 10 0 8] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 161 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151 3 14 0 152] 
#[0 3 18 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 6 121 0 60 6 125 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 6 129 0 112 2 53 0 126 2 57 0 129 6 133 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 6 137 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 6 141 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 37 0 115 2 41 0 116 2 45 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 26 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 4 229 0 2 1 118 0 28 6 145 0 96] 
#[1 4 229 0 2 1 126 0 28 6 149 0 96] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 153 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 30 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 6 121 0 60 6 125 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 6 157 0 112 2 53 0 126 2 57 0 129 6 161 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 34 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 165 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 38 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 3 42 0 2 3 42 0 3 3 42 0 4 3 42 0 6 3 42 0 8 3 42 0 9 3 42 0 10 3 42 0 16 3 42 0 25 3 42 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 3 42 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 3 42 0 55 1 201 0 64 1 209 0 66 3 42 0 146 1 213 0 149 3 42 0 152] 
#[0 3 46 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 1 249 0 53 2 53 0 126 2 57 0 129 6 169 0 130] 
#[0 3 50 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 4 229 0 2 6 173 0 4 0 65 0 25 0 113 0 55 4 245 0 84 6 177 0 96] 
#[0 3 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 4 229 0 2 6 181 0 96] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 6 141 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 37 0 115 2 41 0 116 2 45 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 58 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 3 62 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 6 185 0 120 2 101 0 126 2 105 0 127 6 189 0 128 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 66 0 2 0 3 0 6 0 8 0 16] 
#[1 3 70 0 6 3 70 0 8 3 70 0 16 1 249 0 53 6 193 0 126] 
#[0 3 74 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 0 13 0 5 3 78 0 6 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 3 78 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 6 185 0 120 2 101 0 126 2 105 0 127 6 197 0 128 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 94 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 1 14 0 2 1 14 0 3 1 14 0 4 1 14 0 6 1 14 0 8 1 14 0 9 1 14 0 10 1 14 0 16 1 14 0 25 1 14 0 28 5 49 0 29 1 14 0 30 1 14 0 31 1 14 0 32 1 14 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 1 14 0 49 1 197 0 50 1 14 0 55 1 201 0 64 1 209 0 66 1 14 0 146 1 213 0 149 1 14 0 152] 
#[0 1 18 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 1 26 0 2 1 26 0 3 1 26 0 4 1 26 0 6 1 26 0 8 1 26 0 9 1 26 0 10 1 26 0 16 1 26 0 25 1 26 0 28 1 26 0 29 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 33 1 26 0 35 1 26 0 36 1 26 0 37 1 26 0 38 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 44 1 26 0 49 1 26 0 50 1 26 0 55 1 201 0 64 1 209 0 66 1 26 0 146 1 26 0 149 1 26 0 152] 
#[0 1 30 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 201 0 60 3 173 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 6 205 0 60 3 185 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 53 0 126 2 57 0 129 3 189 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 209 0 60 3 201 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 213 0 60 3 213 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 217 0 60 3 225 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 221 0 60 3 237 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 225 0 60 3 249 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 229 0 60 4 5 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 233 0 60 4 17 0 62 4 21 0 67 4 25 0 68 4 29 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 237 0 60 4 41 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 241 0 60 4 53 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 245 0 60 4 65 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 249 0 60 4 77 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 253 0 60 4 89 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 1 0 60 4 101 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 4 229 0 2 1 118 0 28 7 5 0 96] 
#[1 4 229 0 2 1 126 0 28 7 9 0 96] 
#[1 1 182 0 2 1 182 0 3 1 182 0 4 1 182 0 6 1 182 0 8 1 182 0 9 1 182 0 10 1 182 0 16 1 182 0 25 1 182 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 1 182 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 1 182 0 55 1 201 0 64 1 209 0 66 1 182 0 146 1 213 0 149 1 182 0 152] 
#[0 1 186 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 194 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 210 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 3 98 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 3 102 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 3 106 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 146 0 147 0 148 0 150 0 151] 
#[0 3 110 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 3 114 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 7 13 0 89 7 17 0 90 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 37 0 115 2 41 0 116 2 45 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 3 114 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 4 173 0 10 0 65 0 25 0 113 0 55 7 21 0 84 7 25 0 87 3 118 0 146] 
#[1 5 153 0 88 5 165 0 93 7 29 0 94 5 173 0 146] 
#[1 3 122 0 10 5 153 0 88 5 165 0 93 7 33 0 94 5 173 0 146] 
#[0 7 37 0 10] 
#[1 3 126 0 1 3 126 0 5 3 126 0 7 3 126 0 10 3 126 0 11 3 126 0 12 3 126 0 13 3 126 0 14 3 126 0 15 3 126 0 17 3 126 0 18 3 126 0 19 3 126 0 20 3 126 0 21 3 126 0 22 0 65 0 25 3 126 0 26 3 126 0 27 3 126 0 28 3 126 0 34 3 126 0 43 3 126 0 45 3 126 0 46 3 126 0 47 3 126 0 48 3 126 0 51 3 126 0 52 3 126 0 53 3 126 0 54 0 113 0 55 7 41 0 84 3 126 0 146 3 126 0 147 3 126 0 148 3 126 0 150 3 126 0 151] 
#[0 3 130 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 3 134 0 2 3 134 0 3 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 1 213 0 149] 
#[1 3 138 0 2 3 138 0 3 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[1 0 251 0 2 3 142 0 3 7 45 0 96] 
#[0 3 146 0 2 0 3] 
#[1 4 229 0 2 7 49 0 3 7 53 0 96] 
#[1 4 229 0 2 7 57 0 3 7 61 0 96] 
#[0 3 150 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 3 154 0 2 3 154 0 3 3 154 0 4 3 154 0 6 3 154 0 7 3 154 0 8 2 217 0 9 3 154 0 10 3 154 0 16 3 154 0 25 3 154 0 28 3 154 0 29 3 154 0 30 3 154 0 31 3 154 0 32 3 154 0 33 3 154 0 35 3 154 0 36 3 154 0 37 3 154 0 38 3 154 0 39 3 154 0 40 3 154 0 41 3 154 0 42 3 154 0 43 3 154 0 44 3 154 0 49 3 154 0 50 3 154 0 53 3 154 0 55 7 65 0 83 2 225 0 86 3 154 0 146 3 154 0 149 3 154 0 152] 
#[0 1 242 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 101 0 59 1 105 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 113 0 59 1 117 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 1 125 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 1 129 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 7 69 0 29 7 73 0 30 7 77 0 31 7 81 0 32 6 53 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 64 1 205 0 65 6 57 0 135 1 213 0 149] 
#[1 1 137 0 29 1 141 0 30 1 145 0 31 6 61 0 32 6 53 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 65 0 135] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 137 0 59 2 141 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 1 250 0 3 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 1 250 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 181 0 114 2 185 0 115 2 41 0 116 2 45 0 117 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 201 0 114 2 205 0 115 2 41 0 116 2 45 0 117 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
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
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 7 129 0 60 7 133 0 61 3 213 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 3 93 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 7 137 0 128 1 1 0 132 1 5 0 133 1 9 0 134 7 141 0 136 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 158 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 145 0 60 7 149 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 7 129 0 60 7 133 0 61 3 213 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 3 93 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 7 157 0 128 1 1 0 132 1 5 0 133 1 9 0 134 7 161 0 136 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 165 0 60 7 169 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 5 25 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 7 173 0 60 7 177 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 7 181 0 103 5 233 0 104 5 237 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 3 97 0 128 1 1 0 132 1 5 0 133 1 9 0 134 3 101 0 136 3 113 0 139 3 117 0 140 1 13 0 141 7 185 0 142 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 3 174 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 7 173 0 60 7 177 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 5 237 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 7 189 0 128 1 1 0 132 1 5 0 133 1 9 0 134 7 193 0 136 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 182 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 5 25 0 16 7 197 0 103] 
#[0 3 186 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 4 137 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 7 201 0 78 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 7 205 0 99 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 4 153 0 120 2 101 0 126 4 157 0 127 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 190 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 1 249 0 53 6 193 0 126] 
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
#[1 4 229 0 2 7 217 0 96] 
#[0 3 238 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 242 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 246 0 3 0 6 0 8 0 16] 
#[0 3 250 0 8] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 7 221 0 120 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
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
#[1 3 118 0 10 0 65 0 25 0 113 0 55 7 225 0 84 3 118 0 146] 
#[0 4 10 0 10 0 146] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 6 137 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 6 141 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 37 0 115 2 41 0 116 2 45 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 4 14 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 4 18 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 7 229 0 10] 
#[0 4 22 0 10] 
#[0 4 26 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 4 30 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 146 0 147 0 148 0 150 0 151] 
#[0 4 34 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 5 181 0 60 5 185 0 61 7 233 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 7 237 0 123 2 101 0 126 7 241 0 127 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 4 38 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 4 229 0 2 1 249 0 53 7 245 0 96 6 193 0 126] 
#[0 4 42 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 46 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 249 0 60 3 169 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 253 0 60 3 181 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 1 0 60 3 197 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 8 5 0 60 7 133 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 5 237 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 7 137 0 128 1 1 0 132 1 5 0 133 1 9 0 134 7 141 0 136 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 9 0 60 3 221 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 13 0 60 3 233 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 17 0 60 3 245 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 21 0 60 4 1 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 25 0 60 4 13 0 61 0 141 0 63 4 29 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 29 0 60 4 37 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 33 0 60 4 49 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 37 0 60 4 61 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 41 0 60 4 73 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 45 0 60 4 85 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 49 0 60 4 97 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 70 0 3 2 70 0 16 1 137 0 29 2 70 0 30 2 70 0 31 1 149 0 32 6 53 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 70 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 6 57 0 135 1 213 0 149] 
#[1 2 74 0 3 2 74 0 16 1 137 0 29 2 74 0 30 2 74 0 31 1 149 0 32 6 53 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 74 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 65 0 135] 
#[0 4 50 0 16] 
#[0 4 54 0 3 0 16] 
#[1 4 58 0 3 4 58 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 4 62 0 3 4 62 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[1 0 9 0 1 0 190 0 3 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 233 0 106 2 177 0 107 1 81 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 181 0 114 2 185 0 115 2 41 0 116 2 45 0 117 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 0 190 0 149 1 29 0 150 1 33 0 151] 
#[0 4 66 0 16] 
#[0 4 70 0 3 0 16] 
#[1 4 74 0 3 4 74 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 4 78 0 3 4 78 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[1 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 6 53 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 64 1 205 0 65 6 57 0 135 1 213 0 149] 
#[1 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 6 53 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 65 0 135] 
#[0 4 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 5 25 0 16 8 57 0 103] 
#[0 4 90 0 3 0 16] 
#[0 4 94 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 98 0 3 0 8] 
#[0 4 102 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 106 0 2 0 4 0 10 0 25 0 55 0 146] 
#[0 4 110 0 2 0 4 0 10 0 25 0 55 0 146] 
#[0 4 114 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 118 0 2 0 3 0 6 0 8 0 16] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 4 14 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 6 141 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 233 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 37 0 115 2 41 0 116 2 45 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 61 0 130 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 4 14 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 4 122 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 3 142 0 2 0 3] 
#[0 4 126 0 2 0 3] 
#[1 4 229 0 2 8 61 0 3 8 65 0 96] 
#[0 4 130 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 30 0 3 2 30 0 16 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 30 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 42 0 3 2 42 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 2 42 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 42 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 58 0 3 2 58 0 16 7 69 0 29 2 58 0 30 7 77 0 31 8 53 0 32 2 58 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 58 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 7 69 0 29 2 70 0 30 2 70 0 31 8 53 0 32 6 53 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 70 0 49 1 197 0 50 1 201 0 64 1 205 0 65 6 57 0 135 1 213 0 149] 
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
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 217 0 34 0 81 0 43 0 85 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 69 0 60 3 209 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 81 0 193 0 82 0 201 0 85 0 205 0 95 0 209 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 233 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 1 1 0 132 1 5 0 133 1 9 0 134 1 13 0 141 1 17 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 4 134 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 4 229 0 2 1 249 0 53 8 73 0 96 6 193 0 126] 
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
					actions
						do: [ :each | 
							currentToken := currentToken class
								value: ''
								start: nil
								ids: {scanner eolId}.
							currentState := self duplicateState.
							self parseCurrentToken.
							currentToken := token.
							self parseCurrentToken.
							self restoreState: previousState.
							currentToken := token ] ] ].
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
										ifTrue: [ scanner paren_identifierId ]
										ifFalse: [ ((#('when' 'or' 'and' 'not' 'in' '..') includes: lookahead value)
												or: [ lookahead value notEmpty
														and: [ '~=!:|&<>^+-*/@\' includes: lookahead value first ] ])
												ifTrue: [ scanner op_identifierId ] ] ] ] ].
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

{ #category : #testing }
ElixirParser >> tryAllTokens [
	^ (currentToken ids includes: scanner identifierId) not
		or: [ currentToken ids includes: scanner op_identifierId ]
]
