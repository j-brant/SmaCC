Class {
	#name : #ElixirParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirParser class >> ambiguousTransitions [
^#(
#[ 0 41 1 14] 
#[ 0 46 1 30] 
#[ 0 114 1 38] 
#[ 0 114 1 38 1 181] 
#[ 0 114 1 38 1 185] 
#[ 0 114 1 38 1 189] 
#[ 0 114 1 38 1 193] 
#[ 0 114 1 38 1 197] 
#[ 0 114 1 38 1 201] 
#[ 0 114 1 38 1 205] 
#[ 0 114 1 38 1 209] 
#[ 0 114 1 38 1 213] 
#[ 0 114 1 38 1 217] 
#[ 0 114 1 38 1 221] 
#[ 0 114 1 38 1 225] 
#[ 0 114 1 38 1 229] 
#[ 0 114 1 38 1 233] 
#[ 0 114 1 38 1 237] 
#[ 0 122 1 42] 
#[ 0 114 1 58] 
#[ 0 114 1 58 1 181] 
#[ 0 114 1 58 1 185] 
#[ 0 114 1 58 1 189] 
#[ 0 114 1 58 1 193] 
#[ 0 114 1 58 1 197] 
#[ 0 114 1 58 1 201] 
#[ 0 114 1 58 1 205] 
#[ 0 114 1 58 1 209] 
#[ 0 114 1 58 1 213] 
#[ 0 114 1 58 1 217] 
#[ 0 114 1 58 1 221] 
#[ 0 114 1 58 1 225] 
#[ 0 114 1 58 1 229] 
#[ 0 114 1 58 1 233] 
#[ 0 114 1 58 1 237] 
#[ 0 122 1 62] 
#[ 1 110 5 49] 
#[ 0 114 1 214] 
#[ 0 114 1 181 1 214] 
#[ 0 114 1 185 1 214] 
#[ 0 114 1 189 1 214] 
#[ 0 114 1 193 1 214] 
#[ 0 114 1 197 1 214] 
#[ 0 114 1 201 1 214] 
#[ 0 114 1 205 1 214] 
#[ 0 114 1 209 1 214] 
#[ 0 114 1 213 1 214] 
#[ 0 114 1 214 1 217] 
#[ 0 114 1 214 1 221] 
#[ 0 114 1 214 1 225] 
#[ 0 114 1 214 1 229] 
#[ 0 114 1 214 1 233] 
#[ 0 114 1 214 1 237] 
#[ 0 122 1 218] 
#[ 1 206 2 22] 
#[ 0 170 2 26] 
#[ 0 190 2 30] 
#[ 0 46 2 54] 
#[ 0 114 2 62] 
#[ 0 114 1 181 2 62] 
#[ 0 114 1 185 2 62] 
#[ 0 114 1 189 2 62] 
#[ 0 114 1 193 2 62] 
#[ 0 114 1 197 2 62] 
#[ 0 114 1 201 2 62] 
#[ 0 114 1 205 2 62] 
#[ 0 114 1 209 2 62] 
#[ 0 114 1 213 2 62] 
#[ 0 114 1 217 2 62] 
#[ 0 114 1 221 2 62] 
#[ 0 114 1 225 2 62] 
#[ 0 114 1 229 2 62] 
#[ 0 114 1 233 2 62] 
#[ 0 114 1 237 2 62] 
#[ 0 122 2 66] 
#[ 0 114 2 74] 
#[ 0 114 1 181 2 74] 
#[ 0 114 1 185 2 74] 
#[ 0 114 1 189 2 74] 
#[ 0 114 1 193 2 74] 
#[ 0 114 1 197 2 74] 
#[ 0 114 1 201 2 74] 
#[ 0 114 1 205 2 74] 
#[ 0 114 1 209 2 74] 
#[ 0 114 1 213 2 74] 
#[ 0 114 1 217 2 74] 
#[ 0 114 1 221 2 74] 
#[ 0 114 1 225 2 74] 
#[ 0 114 1 229 2 74] 
#[ 0 114 1 233 2 74] 
#[ 0 114 1 237 2 74] 
#[ 0 122 2 78] 
#[ 1 102 2 82] 
#[ 2 2 2 86] 
#[ 0 130 2 206] 
#[ 0 134 2 210] 
#[ 0 138 2 214] 
#[ 3 198 5 121] 
#[ 3 198 5 125] 
#[ 1 102 3 246] 
#[ 2 2 3 250] 
#[ 0 130 4 110] 
#[ 0 134 4 114] 
#[ 0 138 4 118]
	).
]

{ #category : #'generated-accessing' }
ElixirParser class >> cacheId [
	^'2019-10-02T15:56:37.195361-05:00'
]

{ #category : #generated }
ElixirParser class >> definitionComment [
"# Modified from https://github.com/elixir-lang/elixir/blob/master/lib/elixir/src/elixir_parser.yrl (f38895cebba0fa06f686e1dd9b74e5729aebcb45)
# Apache License 2.0: https://github.com/elixir-lang/elixir/blob/master/LICENSE
%glr;
%id <identifier> <do_identifier> <block_identifier> <bracket_identifier> <paren_identifier> <op_identifier> 
	<dot_call_op> <dot_op> <eol> <kw_identifier> <map_op> <struct_op>;

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
	| <>
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
	| ::
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
	: \? .
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
	: \\ ([\\abdefnrstv0] | (x [0-9a-fA-F]{2,2}) | (u [0-9a-fA-F]{4,4}))
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
	| <string> \:
	;
<alias>
	: <isUppercase> (<isLetter> | <isDigit> |  _)* [\?\!]?
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
	| <at_op> <eol>? matched_expr 
	| <capture_op> <eol>? matched_expr 
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
	| <at_op> <eol>? expr 
	| <capture_op> <eol>? expr 
	| block_expr 
	;

no_parens_expr 
	: matched_expr no_parens_op_expr 
	| unary_op_eol no_parens_expr 
	| <at_op> <eol>? no_parens_expr 
	| <capture_op> <eol>? no_parens_expr 
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
	: <match_op> <eol>? matched_expr 
	| <dual_op> <eol>? matched_expr 
	| <mult_op> <eol>? matched_expr 
	| <two_op> <eol>? matched_expr 
	| <three_op> <eol>? matched_expr 
	| <and_op> <eol>? matched_expr 
	| <or_op> <eol>? matched_expr 
	| <in_op> <eol>? matched_expr 
	| <in_match_op> <eol>? matched_expr 
	| <type_op> <eol>? matched_expr 
	| <when_op> <eol>? matched_expr 
	| <pipe_op> <eol>? matched_expr 
	| <comp_op> <eol>? matched_expr 
	| <rel_op> <eol>? matched_expr 
	| <arrow_op> <eol>? matched_expr 
## Warn for no parens subset
	| <arrow_op> <eol>? no_parens_one_expr 
	;

unmatched_op_expr 
	: <match_op> <eol>? unmatched_expr 
	| <dual_op> <eol>? unmatched_expr 
	| <mult_op> <eol>? unmatched_expr 
	| <two_op> <eol>? unmatched_expr 
	| <three_op> <eol>? unmatched_expr 
	| <and_op> <eol>? unmatched_expr 
	| <or_op> <eol>? unmatched_expr 
	| <in_op> <eol>? unmatched_expr 
	| <in_match_op> <eol>? unmatched_expr 
	| <type_op> <eol>? unmatched_expr 
	| <when_op> <eol>? unmatched_expr 
	| <pipe_op> <eol>? unmatched_expr 
	| <comp_op> <eol>? unmatched_expr 
	| <rel_op> <eol>? unmatched_expr 
	| <arrow_op> <eol>? unmatched_expr 
	;

no_parens_op_expr 
	: <match_op> <eol>? no_parens_expr 
	| <dual_op> <eol>? no_parens_expr 
	| <mult_op> <eol>? no_parens_expr 
	| <two_op> <eol>? no_parens_expr 
	| <three_op> <eol>? no_parens_expr 
	| <and_op> <eol>? no_parens_expr 
	| <or_op> <eol>? no_parens_expr 
	| <in_op> <eol>? no_parens_expr 
	| <in_match_op> <eol>? no_parens_expr 
	| <type_op> <eol>? no_parens_expr 
	| <when_op> <eol>? no_parens_expr 
	| <pipe_op> <eol>? no_parens_expr 
	| <comp_op> <eol>? no_parens_expr 
	| <rel_op> <eol>? no_parens_expr 
	| <arrow_op> <eol>? no_parens_expr 
## Warn for no parens subset
	| <arrow_op> <eol>? no_parens_one_ambig_expr 
	| <arrow_op> <eol>? no_parens_many_expr 
## Allow when (and only when) with keywords
	| <when_op> <eol>? call_args_no_parens_kw 
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
	| <capture_op> <eol>? <int> 
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

bracket_arg 
	: open_bracket kw close_bracket 
	| open_bracket container_expr close_bracket 
	| open_bracket container_expr "","" close_bracket 
	;

bracket_expr 
	: dot_bracket_identifier bracket_arg 
	| access_expr bracket_arg 
	;

bracket_at_expr 
	: <at_op> <eol>? dot_bracket_identifier bracket_arg 
	| <at_op> <eol>? access_expr bracket_arg 
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
	| "";"" 
	| <eol> "";"" 
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
	: <stab_op> <eol>? expr?
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
	: ""("" <eol>?
	;
close_paren 
	: <eol>? "")"" 
	;

empty_paren 
	: open_paren "")"" 
	;

open_bracket  
	: ""["" <eol>?
	;
close_bracket 
	: <eol>? ""]"" 
	;

open_bit  
	: ""<<"" <eol>?
	;
close_bit 
	: <eol>? "">>"" 
	;

open_curly  
	: ""{"" <eol>?
	;
close_curly 
	: <eol>? ""}"" 
	;

# Operators

unary_op_eol 
	: <unary_op> <eol>? 
	| <dual_op> <eol>?
	;

# Dot operator

dot_identifier 
	: <identifier> 
	| matched_expr <dot_op> <eol>? <identifier> 
	;

dot_alias 
	: <alias> 
	| matched_expr <dot_op> <eol>? <alias> 
	| matched_expr <dot_op> <eol>? open_curly ""}"" 
	| matched_expr <dot_op> <eol>? open_curly container_args close_curly 
	;

dot_op_identifier 
	: <op_identifier> 
	| matched_expr <dot_op> <eol>? <op_identifier> 
	;

dot_do_identifier 
	: <do_identifier> 
	| matched_expr <dot_op> <eol>? <do_identifier> 
	;

dot_bracket_identifier 
	: <bracket_identifier> 
	| matched_expr <dot_op> <eol>? <bracket_identifier> 
	;

dot_paren_identifier
	 : <paren_identifier> 
	| matched_expr <dot_op> <eol>? <paren_identifier> 
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
	: <kw_identifier> <eol>?
#	| <kw_identifier_safe> <eol>? 			# what is this???
#	| <kw_identifier_unsafe> <eol>? 		# what is this???
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
	: <assoc_op> <eol>?
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
	: matched_expr <pipe_op> <eol>? assoc_expr 
	| unmatched_expr <pipe_op> <eol>? assoc_expr 
	;

assoc_update_kw 
	: matched_expr <pipe_op> <eol>? kw 
	| unmatched_expr <pipe_op> <eol>? kw 
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
	: <map_op> <eol>?
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
	| <at_op> <eol>? struct_expr 
	| unary_op_eol struct_expr 
	| parens_call 
	;

map 
	: map_op map_args 
	| <struct_op> struct_expr? map_args 			# added ?
	| <struct_op> struct_expr? <eol> map_args 	# added ?
	;"
]

{ #category : #'file types' }
ElixirParser class >> fileExtensions [
	^ #('.exs' '.ex')
]

{ #category : #generated }
ElixirParser class >> reduceTable [
^#(
	#(56 0 #reduceFor: 5409798 false ) 
	#(92 1 #reduceFor: 13216769 false ) 
	#(81 1 #reduceFor: 12344322 false ) 
	#(97 1 #reduceFor: 13383681 false ) 
	#(95 1 #reduceFor: 13316097 false ) 
	#(70 1 #reduceFor: 10950673 false ) 
	#(82 1 #reduceFor: 12386305 false ) 
	#(70 1 #reduceFor: 10950674 false ) 
	#(70 1 #reduceFor: 10950672 false ) 
	#(99 1 #reduceFor: 13445121 false ) 
	#(75 1 #reduceFor: 11656193 false ) 
	#(70 1 #reduceFor: 10950681 false ) 
	#(71 1 #reduceFor: 11517953 false ) 
	#(73 1 #reduceFor: 11578369 false ) 
	#(72 1 #reduceFor: 11546625 false ) 
	#(74 1 #reduceFor: 11616257 false ) 
	#(81 1 #reduceFor: 12344321 false ) 
	#(138 1 #reduceFor: 17603585 false ) 
	#(101 1 #reduceFor: 13521923 false ) 
	#(101 1 #reduceFor: 13521921 false ) 
	#(75 1 #reduceFor: 11656194 false ) 
	#(75 1 #reduceFor: 11656195 false ) 
	#(70 1 #reduceFor: 10950680 false ) 
	#(102 1 #reduceFor: 13599745 false ) 
	#(103 1 #reduceFor: 13684737 false ) 
	#(56 1 #reduceFor: 5409794 false ) 
	#(57 1 #reduceFor: 5551105 false ) 
	#(58 1 #reduceFor: 5599233 false ) 
	#(58 1 #reduceFor: 5599235 false ) 
	#(58 1 #reduceFor: 5599234 false ) 
	#(60 1 #reduceFor: 7523338 false ) 
	#(61 1 #reduceFor: 7783431 false ) 
	#(61 1 #reduceFor: 7783432 false ) 
	#(59 1 #reduceFor: 7273479 false ) 
	#(59 1 #reduceFor: 7273480 false ) 
	#(59 1 #reduceFor: 7273481 false ) 
	#(70 1 #reduceFor: 10950675 false ) 
	#(70 1 #reduceFor: 10950676 false ) 
	#(70 1 #reduceFor: 10950677 false ) 
	#(70 1 #reduceFor: 10950678 false ) 
	#(70 1 #reduceFor: 10950668 false ) 
	#(70 1 #reduceFor: 10950683 false ) 
	#(70 1 #reduceFor: 10950658 false ) 
	#(70 1 #reduceFor: 10950657 false ) 
	#(56 1 #reduceFor: 5409793 false ) 
	#(70 1 #reduceFor: 10950667 false ) 
	#(69 1 #reduceFor: 10631170 false ) 
	#(70 1 #reduceFor: 10950682 false ) 
	#(69 1 #reduceFor: 10631169 false ) 
	#(108 1 #reduceFor: 14277633 false ) 
	#(70 1 #reduceFor: 10950669 false ) 
	#(70 1 #reduceFor: 10950671 false ) 
	#(70 1 #reduceFor: 10950679 false ) 
	#(70 1 #reduceFor: 10950670 false ) 
	#(106 1 #reduceFor: 14064641 false ) 
	#(105 1 #reduceFor: 13970433 false ) 
	#(104 1 #reduceFor: 13876225 false ) 
	#(107 1 #reduceFor: 14174209 false ) 
	#(92 2 #reduceFor: 13216770 false ) 
	#(97 2 #reduceFor: 13383682 false ) 
	#(95 2 #reduceFor: 13316098 false ) 
	#(82 2 #reduceFor: 12386306 false ) 
	#(99 2 #reduceFor: 13445122 false ) 
	#(81 2 #reduceFor: 12344323 false ) 
	#(141 1 #reduceFor: 17959937 false ) 
	#(141 1 #reduceFor: 17959943 false ) 
	#(141 1 #reduceFor: 17959939 false ) 
	#(141 1 #reduceFor: 17959938 false ) 
	#(142 2 #reduceFor: 18100226 false ) 
	#(138 2 #reduceFor: 17603586 false ) 
	#(70 2 #reduceFor: 10950659 false ) 
	#(60 2 #reduceFor: 7523336 false ) 
	#(59 2 #reduceFor: 7273477 false ) 
	#(61 2 #reduceFor: 7783429 false ) 
	#(101 2 #reduceFor: 13521924 false ) 
	#(101 2 #reduceFor: 13521922 false ) 
	#(60 2 #reduceFor: 7523334 false ) 
	#(59 2 #reduceFor: 7273475 false ) 
	#(61 2 #reduceFor: 7783427 false ) 
	#(56 2 #reduceFor: 5409796 false ) 
	#(59 2 #reduceFor: 7273473 false ) 
	#(60 2 #reduceFor: 7523329 false ) 
	#(61 2 #reduceFor: 7783425 false ) 
	#(108 2 #reduceFor: 14277634 false ) 
	#(60 2 #reduceFor: 7523330 false ) 
	#(60 2 #reduceFor: 7523331 false ) 
	#(60 2 #reduceFor: 7523332 false ) 
	#(59 2 #reduceFor: 7273482 false ) 
	#(78 2 #reduceFor: 12002306 false ) 
	#(56 2 #reduceFor: 5409795 false ) 
	#(89 1 #reduceFor: 13038593 false ) 
	#(123 1 #reduceFor: 16166913 false ) 
	#(88 1 #reduceFor: 12745729 false ) 
	#(112 1 #reduceFor: 14735362 false ) 
	#(113 1 #reduceFor: 14810113 false ) 
	#(86 1 #reduceFor: 12559361 false ) 
	#(88 1 #reduceFor: 12745730 false ) 
	#(114 1 #reduceFor: 14861314 false ) 
	#(111 1 #reduceFor: 14616577 false ) 
	#(111 1 #reduceFor: 14616578 false ) 
	#(111 1 #reduceFor: 14616579 false ) 
	#(127 1 #reduceFor: 16503809 false ) 
	#(112 1 #reduceFor: 14735361 false ) 
	#(94 2 #reduceFor: 13279233 false ) 
	#(129 2 #reduceFor: 16742401 false ) 
	#(117 1 #reduceFor: 15349761 false ) 
	#(117 1 #reduceFor: 15349762 false ) 
	#(117 1 #reduceFor: 15349763 false ) 
	#(118 1 #reduceFor: 15426561 false ) 
	#(128 1 #reduceFor: 16634882 false ) 
	#(125 1 #reduceFor: 16394241 false ) 
	#(128 1 #reduceFor: 16634881 false ) 
	#(131 2 #reduceFor: 16913409 false ) 
	#(119 1 #reduceFor: 15515649 false ) 
	#(130 2 #reduceFor: 16825345 false ) 
	#(60 2 #reduceFor: 7523333 false ) 
	#(59 2 #reduceFor: 7273474 false ) 
	#(61 2 #reduceFor: 7783426 false ) 
	#(68 2 #reduceFor: 10516482 false ) 
	#(66 2 #reduceFor: 10258434 false ) 
	#(115 1 #reduceFor: 15036417 false ) 
	#(67 2 #reduceFor: 10383362 false ) 
	#(68 2 #reduceFor: 10516481 false ) 
	#(66 2 #reduceFor: 10258433 false ) 
	#(67 2 #reduceFor: 10383361 false ) 
	#(83 1 #reduceFor: 12420097 false ) 
	#(62 2 #reduceFor: 8001539 false ) 
	#(78 2 #reduceFor: 12002305 false ) 
	#(76 2 #reduceFor: 11732993 false ) 
	#(142 2 #reduceFor: 18100225 false ) 
	#(142 3 #reduceFor: 18100228 false ) 
	#(141 2 #reduceFor: 17959940 false ) 
	#(140 2 #reduceFor: 17727489 false ) 
	#(133 1 #reduceFor: 17046534 false ) 
	#(133 1 #reduceFor: 17046533 false ) 
	#(136 1 #reduceFor: 17495041 false ) 
	#(137 1 #reduceFor: 17557505 false ) 
	#(140 2 #reduceFor: 17727490 false ) 
	#(141 2 #reduceFor: 17959942 false ) 
	#(142 3 #reduceFor: 18100227 false ) 
	#(70 3 #reduceFor: 10950660 false ) 
	#(60 3 #reduceFor: 7523337 false ) 
	#(59 3 #reduceFor: 7273478 false ) 
	#(61 3 #reduceFor: 7783430 false ) 
	#(60 3 #reduceFor: 7523335 false ) 
	#(59 3 #reduceFor: 7273476 false ) 
	#(61 3 #reduceFor: 7783428 false ) 
	#(79 3 #reduceFor: 12089347 false ) 
	#(79 3 #reduceFor: 12089345 false ) 
	#(57 3 #reduceFor: 5551106 false ) 
	#(63 2 #reduceFor: 8279065 false ) 
	#(64 2 #reduceFor: 8894489 false ) 
	#(65 2 #reduceFor: 9471001 false ) 
	#(63 2 #reduceFor: 8279061 false ) 
	#(64 2 #reduceFor: 8894485 false ) 
	#(65 2 #reduceFor: 9470997 false ) 
	#(65 2 #reduceFor: 9471011 false ) 
	#(63 2 #reduceFor: 8279059 false ) 
	#(64 2 #reduceFor: 8894483 false ) 
	#(65 2 #reduceFor: 9470995 false ) 
	#(63 2 #reduceFor: 8279063 false ) 
	#(64 2 #reduceFor: 8894487 false ) 
	#(65 2 #reduceFor: 9470999 false ) 
	#(63 2 #reduceFor: 8279041 false ) 
	#(64 2 #reduceFor: 8894465 false ) 
	#(65 2 #reduceFor: 9470977 false ) 
	#(63 2 #reduceFor: 8279053 false ) 
	#(64 2 #reduceFor: 8894477 false ) 
	#(65 2 #reduceFor: 9470989 false ) 
	#(63 2 #reduceFor: 8279051 false ) 
	#(64 2 #reduceFor: 8894475 false ) 
	#(65 2 #reduceFor: 9470987 false ) 
	#(63 2 #reduceFor: 8279067 false ) 
	#(64 2 #reduceFor: 8894491 false ) 
	#(65 2 #reduceFor: 9471003 false ) 
	#(63 2 #reduceFor: 8279069 false ) 
	#(64 2 #reduceFor: 8894493 false ) 
	#(65 2 #reduceFor: 9471005 false ) 
	#(65 2 #reduceFor: 9471007 false ) 
	#(65 2 #reduceFor: 9471009 false ) 
	#(63 2 #reduceFor: 8279071 false ) 
	#(63 2 #reduceFor: 8279055 false ) 
	#(64 2 #reduceFor: 8894479 false ) 
	#(65 2 #reduceFor: 9470991 false ) 
	#(63 2 #reduceFor: 8279049 false ) 
	#(64 2 #reduceFor: 8894473 false ) 
	#(65 2 #reduceFor: 9470985 false ) 
	#(63 2 #reduceFor: 8279047 false ) 
	#(64 2 #reduceFor: 8894471 false ) 
	#(65 2 #reduceFor: 9470983 false ) 
	#(63 2 #reduceFor: 8279043 false ) 
	#(64 2 #reduceFor: 8894467 false ) 
	#(65 2 #reduceFor: 9470979 false ) 
	#(63 2 #reduceFor: 8279045 false ) 
	#(64 2 #reduceFor: 8894469 false ) 
	#(65 2 #reduceFor: 9470981 false ) 
	#(63 2 #reduceFor: 8279057 false ) 
	#(64 2 #reduceFor: 8894481 false ) 
	#(65 2 #reduceFor: 9470993 false ) 
	#(102 3 #reduceFor: 13599746 false ) 
	#(103 3 #reduceFor: 13684738 false ) 
	#(106 3 #reduceFor: 14064642 false ) 
	#(105 3 #reduceFor: 13970434 false ) 
	#(104 3 #reduceFor: 13876226 false ) 
	#(107 3 #reduceFor: 14174210 false ) 
	#(56 3 #reduceFor: 5409797 false ) 
	#(89 2 #reduceFor: 13038595 false ) 
	#(89 2 #reduceFor: 13038594 false ) 
	#(123 2 #reduceFor: 16166914 false ) 
	#(84 1 #reduceFor: 12454913 false ) 
	#(70 3 #reduceFor: 10950661 false ) 
	#(88 2 #reduceFor: 12745731 false ) 
	#(88 2 #reduceFor: 12745733 false ) 
	#(88 2 #reduceFor: 12745734 false ) 
	#(126 2 #reduceFor: 16418817 false ) 
	#(126 2 #reduceFor: 16418818 false ) 
	#(93 1 #reduceFor: 13246465 false ) 
	#(70 3 #reduceFor: 10950666 false ) 
	#(70 3 #reduceFor: 10950662 false ) 
	#(128 2 #reduceFor: 16634883 false ) 
	#(124 2 #reduceFor: 16315393 false ) 
	#(125 2 #reduceFor: 16394242 false ) 
	#(96 1 #reduceFor: 13348865 false ) 
	#(129 3 #reduceFor: 16742402 false ) 
	#(119 2 #reduceFor: 15515650 false ) 
	#(98 1 #reduceFor: 13413377 false ) 
	#(131 3 #reduceFor: 16913410 false ) 
	#(100 1 #reduceFor: 13475841 false ) 
	#(130 3 #reduceFor: 16825346 false ) 
	#(62 3 #reduceFor: 8001541 false ) 
	#(62 3 #reduceFor: 8001540 false ) 
	#(83 2 #reduceFor: 12420098 false ) 
	#(80 2 #reduceFor: 12221441 false ) 
	#(90 1 #reduceFor: 13091842 false ) 
	#(87 1 #reduceFor: 12607489 false ) 
	#(91 1 #reduceFor: 13146113 false ) 
	#(85 1 #reduceFor: 12492801 false ) 
	#(122 2 #reduceFor: 15820801 false ) 
	#(120 1 #reduceFor: 15629313 false ) 
	#(120 1 #reduceFor: 15629314 false ) 
	#(120 1 #reduceFor: 15629315 false ) 
	#(121 1 #reduceFor: 15713281 false ) 
	#(62 3 #reduceFor: 8001537 false ) 
	#(76 3 #reduceFor: 11732994 false ) 
	#(141 3 #reduceFor: 17959941 false ) 
	#(132 1 #reduceFor: 17006593 false ) 
	#(139 2 #reduceFor: 17635329 false ) 
	#(140 3 #reduceFor: 17727491 false ) 
	#(140 3 #reduceFor: 17727494 false ) 
	#(137 2 #reduceFor: 17557506 false ) 
	#(139 2 #reduceFor: 17635330 false ) 
	#(142 4 #reduceFor: 18100229 false ) 
	#(79 4 #reduceFor: 12089348 false ) 
	#(79 4 #reduceFor: 12089346 false ) 
	#(63 3 #reduceFor: 8279066 false ) 
	#(64 3 #reduceFor: 8894490 false ) 
	#(65 3 #reduceFor: 9471002 false ) 
	#(63 3 #reduceFor: 8279062 false ) 
	#(64 3 #reduceFor: 8894486 false ) 
	#(65 3 #reduceFor: 9470998 false ) 
	#(65 3 #reduceFor: 9471012 false ) 
	#(63 3 #reduceFor: 8279060 false ) 
	#(64 3 #reduceFor: 8894484 false ) 
	#(65 3 #reduceFor: 9470996 false ) 
	#(63 3 #reduceFor: 8279064 false ) 
	#(64 3 #reduceFor: 8894488 false ) 
	#(65 3 #reduceFor: 9471000 false ) 
	#(63 3 #reduceFor: 8279042 false ) 
	#(64 3 #reduceFor: 8894466 false ) 
	#(65 3 #reduceFor: 9470978 false ) 
	#(63 3 #reduceFor: 8279054 false ) 
	#(64 3 #reduceFor: 8894478 false ) 
	#(65 3 #reduceFor: 9470990 false ) 
	#(63 3 #reduceFor: 8279052 false ) 
	#(64 3 #reduceFor: 8894476 false ) 
	#(65 3 #reduceFor: 9470988 false ) 
	#(63 3 #reduceFor: 8279068 false ) 
	#(64 3 #reduceFor: 8894492 false ) 
	#(65 3 #reduceFor: 9471004 false ) 
	#(63 3 #reduceFor: 8279070 false ) 
	#(64 3 #reduceFor: 8894494 false ) 
	#(65 3 #reduceFor: 9471006 false ) 
	#(65 3 #reduceFor: 9471008 false ) 
	#(65 3 #reduceFor: 9471010 false ) 
	#(63 3 #reduceFor: 8279072 false ) 
	#(63 3 #reduceFor: 8279056 false ) 
	#(64 3 #reduceFor: 8894480 false ) 
	#(65 3 #reduceFor: 9470992 false ) 
	#(63 3 #reduceFor: 8279050 false ) 
	#(64 3 #reduceFor: 8894474 false ) 
	#(65 3 #reduceFor: 9470986 false ) 
	#(63 3 #reduceFor: 8279048 false ) 
	#(64 3 #reduceFor: 8894472 false ) 
	#(65 3 #reduceFor: 9470984 false ) 
	#(63 3 #reduceFor: 8279044 false ) 
	#(64 3 #reduceFor: 8894468 false ) 
	#(65 3 #reduceFor: 9470980 false ) 
	#(63 3 #reduceFor: 8279046 false ) 
	#(64 3 #reduceFor: 8894470 false ) 
	#(65 3 #reduceFor: 9470982 false ) 
	#(63 3 #reduceFor: 8279058 false ) 
	#(64 3 #reduceFor: 8894482 false ) 
	#(65 3 #reduceFor: 9470994 false ) 
	#(102 4 #reduceFor: 13599747 false ) 
	#(103 4 #reduceFor: 13684739 false ) 
	#(106 4 #reduceFor: 14064643 false ) 
	#(105 4 #reduceFor: 13970435 false ) 
	#(104 4 #reduceFor: 13876227 false ) 
	#(107 4 #reduceFor: 14174211 false ) 
	#(103 4 #reduceFor: 13684740 false ) 
	#(77 3 #reduceFor: 11851778 false ) 
	#(77 3 #reduceFor: 11851777 false ) 
	#(89 3 #reduceFor: 13038596 false ) 
	#(109 1 #reduceFor: 14399489 false ) 
	#(109 1 #reduceFor: 14399490 false ) 
	#(110 3 #reduceFor: 14467073 false ) 
	#(114 3 #reduceFor: 14861313 false ) 
	#(84 2 #reduceFor: 12454914 false ) 
	#(86 3 #reduceFor: 12559362 false ) 
	#(116 3 #reduceFor: 15208450 false ) 
	#(116 3 #reduceFor: 15208449 false ) 
	#(110 3 #reduceFor: 14467074 false ) 
	#(114 3 #reduceFor: 14861315 false ) 
	#(127 3 #reduceFor: 16503810 false ) 
	#(93 2 #reduceFor: 13246466 false ) 
	#(70 4 #reduceFor: 10950665 false ) 
	#(70 4 #reduceFor: 10950663 false ) 
	#(118 3 #reduceFor: 15426562 false ) 
	#(128 3 #reduceFor: 16634884 false ) 
	#(96 2 #reduceFor: 13348866 false ) 
	#(119 3 #reduceFor: 15515651 false ) 
	#(98 2 #reduceFor: 13413378 false ) 
	#(100 2 #reduceFor: 13475842 false ) 
	#(115 3 #reduceFor: 15036419 false ) 
	#(115 3 #reduceFor: 15036418 false ) 
	#(90 2 #reduceFor: 13091841 false ) 
	#(87 2 #reduceFor: 12607490 false ) 
	#(80 3 #reduceFor: 12221442 false ) 
	#(91 2 #reduceFor: 13146114 false ) 
	#(80 3 #reduceFor: 12221443 false ) 
	#(85 2 #reduceFor: 12492802 false ) 
	#(122 3 #reduceFor: 15820802 false ) 
	#(122 3 #reduceFor: 15820805 false ) 
	#(122 3 #reduceFor: 15820803 false ) 
	#(62 4 #reduceFor: 8001538 false ) 
	#(135 3 #reduceFor: 17395713 false ) 
	#(134 3 #reduceFor: 17283073 false ) 
	#(132 2 #reduceFor: 17006594 false ) 
	#(133 3 #reduceFor: 17046529 false ) 
	#(133 3 #reduceFor: 17046531 false ) 
	#(135 3 #reduceFor: 17395715 false ) 
	#(134 3 #reduceFor: 17283075 false ) 
	#(133 3 #reduceFor: 17046532 false ) 
	#(133 3 #reduceFor: 17046530 false ) 
	#(140 4 #reduceFor: 17727492 false ) 
	#(140 4 #reduceFor: 17727493 false ) 
	#(136 3 #reduceFor: 17495042 false ) 
	#(103 5 #reduceFor: 13684741 false ) 
	#(103 5 #reduceFor: 13684742 false ) 
	#(77 4 #reduceFor: 11851779 false ) 
	#(88 4 #reduceFor: 12745732 false ) 
	#(88 4 #reduceFor: 12745735 false ) 
	#(70 5 #reduceFor: 10950664 false ) 
	#(124 4 #reduceFor: 16315394 false ) 
	#(80 4 #reduceFor: 12221444 false ) 
	#(121 3 #reduceFor: 15713282 false ) 
	#(122 4 #reduceFor: 15820804 false ) 
	#(135 4 #reduceFor: 17395714 false ) 
	#(134 4 #reduceFor: 17283074 false ) 
	#(135 4 #reduceFor: 17395716 false ) 
	#(134 4 #reduceFor: 17283076 false ) 
	#(139 4 #reduceFor: 17635331 false ) 
	#(103 6 #reduceFor: 13684743 false ) 
	#(122 5 #reduceFor: 15820806 false ) 
	#(122 6 #reduceFor: 15820807 false )
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
	^ #('"("' '")"' '","' '";"' '"<<"' '">>"' '"["' '"]"' '"do"' '"end"' '"false"' '"fn"' '"nil"' '"true"' '"{"' '"}"' '<int>' '<atom>' '<string>' '<string_heredoc>' '<charlist>' '<charlist_heredoc>' '<whitespace>' '<comment>' '<eol>' '<struct_op>' '<map_op>' '<stab_op>' '<comp_op>' '<when_op>' '<type_op>' '<pipe_op>' '<assoc_op>' '<capture_op>' '<match_op>' '<or_op>' '<and_op>' '<rel_op>' '<arrow_op>' '<in_op>' '<three_op>' '<two_op>' '<dual_op>' '<mult_op>' '<unary_op>' '<at_op>' '<flt>' '<char>' '<in_match_op>' '<dot_op>' '<sigil>' '<identifier>' '<kw_identifier>' '<alias>' 'B e g i n' 'grammar' 'expr_list' 'expr' 'matched_expr' 'unmatched_expr' 'no_parens_expr' 'block_expr' 'matched_op_expr' 'unmatched_op_expr' 'no_parens_op_expr' 'no_parens_one_ambig_expr' 'no_parens_many_expr' 'no_parens_one_expr' 'no_parens_zero_expr' 'access_expr' 'bin_string' 'list_string' 'bin_heredoc' 'list_heredoc' 'number' 'parens_call' 'bracket_arg' 'bracket_expr' 'bracket_at_expr' 'do_block' 'eoe' 'fn_eoe' 'do_eoe' 'end_eoe' 'block_eoe' 'stab' 'stab_eoe' 'stab_expr' 'stab_op_eol_and_expr' 'block_item' 'block_list' 'open_paren' 'close_paren' 'empty_paren' 'open_bracket' 'close_bracket' 'open_bit' 'close_bit' 'open_curly' 'close_curly' 'unary_op_eol' 'dot_identifier' 'dot_alias' 'dot_op_identifier' 'dot_do_identifier' 'dot_bracket_identifier' 'dot_paren_identifier' 'dot_call_identifier' 'call_args_no_parens_expr' 'call_args_no_parens_comma_expr' 'call_args_no_parens_all' 'call_args_no_parens_one' 'call_args_no_parens_ambig' 'call_args_no_parens_many' 'call_args_no_parens_many_strict' 'stab_parens_many' 'container_expr' 'container_args_base' 'container_args' 'call_args_parens_expr' 'call_args_parens_base' 'call_args_parens' 'kw_eol' 'kw_base' 'kw' 'call_args_no_parens_kw_expr' 'call_args_no_parens_kw' 'list_args' 'list' 'tuple' 'bit_string' 'assoc_op_eol' 'assoc_expr' 'assoc_update' 'assoc_update_kw' 'assoc_base' 'assoc' 'map_op' 'map_close' 'map_args' 'struct_expr' 'map' '<block_identifier>' '<bracket_identifier>' '<do_identifier>' '<dot_call_op>' '<op_identifier>' '<paren_identifier>' 'E O F' 'error')
]

{ #category : #generated }
ElixirParser class >> transitionTable [
^#(
#[1 0 9 0 1 0 13 0 4 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 69 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 0 117 0 56 0 121 0 57 0 125 0 58 0 129 0 59 0 133 0 60 0 137 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 197 0 81 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148 0 6 0 149] 
#[1 0 10 0 1 0 10 0 2 0 10 0 4 0 10 0 5 0 10 0 7 0 10 0 11 0 10 0 12 0 10 0 13 0 10 0 14 0 10 0 15 0 10 0 17 0 10 0 18 0 10 0 19 0 10 0 20 0 10 0 21 0 10 0 22 1 37 0 25 0 10 0 26 0 10 0 27 0 10 0 28 0 10 0 34 0 10 0 43 0 10 0 45 0 10 0 46 0 10 0 47 0 10 0 48 0 10 0 51 0 10 0 52 0 10 0 53 0 10 0 54 0 10 0 144 0 10 0 145 0 10 0 147 0 10 0 148] 
#[0 0 14 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 143 0 144 0 145 0 147 0 148 0 149] 
#[1 0 18 0 1 0 18 0 5 0 18 0 6 0 18 0 7 0 18 0 11 0 18 0 12 0 18 0 13 0 18 0 14 0 18 0 15 0 18 0 17 0 18 0 18 0 18 0 19 0 18 0 20 0 18 0 21 0 18 0 22 1 41 0 25 0 18 0 26 0 18 0 27 0 18 0 34 0 18 0 43 0 18 0 45 0 18 0 46 0 18 0 47 0 18 0 48 0 18 0 51 0 18 0 52 0 18 0 54 0 18 0 144 0 18 0 145 0 18 0 147 0 18 0 148] 
#[1 0 22 0 1 0 22 0 5 0 22 0 7 0 22 0 8 0 22 0 11 0 22 0 12 0 22 0 13 0 22 0 14 0 22 0 15 0 22 0 17 0 22 0 18 0 22 0 19 0 22 0 20 0 22 0 21 0 22 0 22 1 45 0 25 0 22 0 26 0 22 0 27 0 22 0 34 0 22 0 43 0 22 0 45 0 22 0 46 0 22 0 47 0 22 0 48 0 22 0 51 0 22 0 52 0 22 0 53 0 22 0 54 0 22 0 144 0 22 0 145 0 22 0 147 0 22 0 148] 
#[0 0 26 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 30 0 1 0 13 0 4 0 30 0 5 0 30 0 7 0 30 0 11 0 30 0 12 0 30 0 13 0 30 0 14 0 30 0 15 0 30 0 17 0 30 0 18 0 30 0 19 0 30 0 20 0 30 0 21 0 30 0 22 0 69 0 25 0 30 0 26 0 30 0 27 0 30 0 28 0 30 0 34 0 30 0 43 0 30 0 45 0 30 0 46 0 30 0 47 0 30 0 48 0 30 0 51 0 30 0 52 0 30 0 53 0 30 0 54 1 49 0 81 0 30 0 144 0 30 0 145 0 30 0 147 0 30 0 148] 
#[0 0 34 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 38 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 42 0 1 0 42 0 5 0 42 0 7 0 42 0 11 0 42 0 12 0 42 0 13 0 42 0 14 0 42 0 15 0 42 0 16 0 42 0 17 0 42 0 18 0 42 0 19 0 42 0 20 0 42 0 21 0 42 0 22 1 53 0 25 0 42 0 26 0 42 0 27 0 42 0 34 0 42 0 43 0 42 0 45 0 42 0 46 0 42 0 47 0 42 0 48 0 42 0 51 0 42 0 52 0 42 0 53 0 42 0 54 0 42 0 144 0 42 0 145 0 42 0 147 0 42 0 148] 
#[0 0 46 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 50 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 58 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 62 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 66 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 70 0 1 1 57 0 4 0 70 0 5 0 70 0 7 0 70 0 10 0 70 0 11 0 70 0 12 0 70 0 13 0 70 0 14 0 70 0 15 0 70 0 17 0 70 0 18 0 70 0 19 0 70 0 20 0 70 0 21 0 70 0 22 0 70 0 26 0 70 0 27 0 70 0 28 0 70 0 34 0 70 0 43 0 70 0 45 0 70 0 46 0 70 0 47 0 70 0 48 0 70 0 51 0 70 0 52 0 70 0 53 0 70 0 54 0 70 0 143 0 70 0 144 0 70 0 145 0 70 0 147 0 70 0 148 0 70 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 1 61 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 1 65 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 1 73 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 1 77 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 1 81 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 1 85 0 99 1 89 0 101 1 93 0 102 1 97 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 113 0 140 1 117 0 141 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 74 0 15 1 121 0 25] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 1 125 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 1 129 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 1 133 0 58 1 137 0 59 0 133 0 60 1 141 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 78 0 1 0 78 0 5 0 78 0 7 0 78 0 11 0 78 0 12 0 78 0 13 0 78 0 14 0 78 0 15 0 78 0 17 0 78 0 18 0 78 0 19 0 78 0 20 0 78 0 21 0 78 0 22 1 145 0 25 0 78 0 26 0 78 0 27 0 78 0 34 0 78 0 43 0 78 0 45 0 78 0 46 0 78 0 47 0 78 0 48 0 78 0 51 0 78 0 52 0 78 0 54 0 78 0 144 0 78 0 145 0 78 0 147 0 78 0 148] 
#[1 0 82 0 1 0 82 0 5 0 82 0 7 0 82 0 11 0 82 0 12 0 82 0 13 0 82 0 14 0 82 0 15 0 82 0 17 0 82 0 18 0 82 0 19 0 82 0 20 0 82 0 21 0 82 0 22 1 149 0 25 0 82 0 26 0 82 0 27 0 82 0 34 0 82 0 43 0 82 0 45 0 82 0 46 0 82 0 47 0 82 0 48 0 82 0 51 0 82 0 52 0 82 0 54 0 82 0 144 0 82 0 145 0 82 0 147 0 82 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 1 153 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 1 157 0 58 1 161 0 59 0 133 0 60 1 165 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 1 169 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 1 173 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 0 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 94 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 143 0 144 0 145 0 146 0 147 0 148 0 149] 
#[0 0 102 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 0 0 149] 
#[1 0 13 0 4 0 69 0 25 1 177 0 81 0 106 0 149] 
#[0 0 110 0 4 0 25 0 149] 
#[1 0 114 0 2 0 114 0 4 0 114 0 10 0 114 0 25 0 114 0 28 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 1 237 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 0 114 0 143 2 1 0 146 0 114 0 149] 
#[1 0 118 0 2 0 118 0 3 0 118 0 4 0 118 0 6 0 118 0 8 0 118 0 10 0 118 0 16 0 118 0 25 0 118 0 28 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 0 118 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 1 237 0 49 2 5 0 63 2 9 0 64 2 13 0 65 0 118 0 143 0 118 0 149] 
#[0 0 122 0 2 0 3 0 4 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[0 0 126 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[0 0 130 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 0 134 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 0 138 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 0 142 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 6 0 21 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 16 0 146 0 25 0 146 0 28 0 146 0 29 0 146 0 30 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 44 0 146 0 49 0 146 0 50 2 17 0 53 2 21 0 77 2 25 0 95 0 146 0 143 0 146 0 146 0 146 0 149] 
#[0 0 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 158 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 2 29 0 57 0 125 0 58 0 129 0 59 0 133 0 60 0 137 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148 0 182 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 33 0 28 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 41 0 58 2 45 0 59 0 133 0 60 2 49 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 2 53 0 86 2 57 0 88 2 61 0 89 2 65 0 92 2 69 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 73 0 110 2 77 0 111 2 81 0 112 2 85 0 113 2 89 0 114 2 93 0 116 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 2 109 0 2 2 113 0 4 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 33 0 28 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 41 0 58 2 45 0 59 0 133 0 60 2 49 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 2 117 0 86 2 57 0 88 2 61 0 89 2 65 0 92 2 69 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 73 0 110 2 77 0 111 2 81 0 112 2 85 0 113 2 89 0 114 2 93 0 116 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 0 186 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 2 121 0 8 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 125 0 59 2 129 0 60 2 133 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 137 0 117 2 141 0 118 2 145 0 123 2 149 0 124 2 153 0 125 2 157 0 128 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 2 161 0 6 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 2 125 0 59 2 129 0 60 2 133 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 137 0 117 2 165 0 118 2 169 0 119 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 2 173 0 16 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 2 125 0 59 2 129 0 60 2 133 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 137 0 117 2 165 0 118 2 177 0 119 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 2 181 0 58 2 185 0 59 0 133 0 60 2 189 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 190 0 2 0 190 0 3 0 190 0 4 0 17 0 5 0 190 0 6 0 21 0 7 0 190 0 8 0 190 0 10 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 190 0 16 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 190 0 25 0 73 0 26 0 77 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 193 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 85 0 43 0 190 0 44 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 190 0 49 0 190 0 50 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 201 0 59 2 205 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 2 209 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 2 73 0 110 2 225 0 111 2 229 0 112 2 233 0 113 2 237 0 114 2 241 0 115 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 0 190 0 143 1 21 0 144 1 25 0 145 0 190 0 146 1 29 0 147 1 33 0 148 0 190 0 149] 
#[0 0 194 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 201 0 59 2 205 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 2 209 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 2 73 0 110 2 245 0 111 2 249 0 112 2 253 0 113 2 237 0 114 3 1 0 115 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 6 0 198 0 8 3 5 0 9 0 198 0 10 0 198 0 16 0 198 0 25 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 0 198 0 44 0 198 0 49 0 198 0 50 3 9 0 80 3 13 0 83 0 198 0 143 0 198 0 146 0 198 0 149] 
#[1 0 21 0 7 3 17 0 77 2 25 0 95] 
#[0 0 202 0 1] 
#[1 0 9 0 1 3 21 0 92 3 25 0 122] 
#[0 0 206 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 210 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 214 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 41 0 15 3 29 0 99 3 33 0 140] 
#[0 0 218 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 222 0 7] 
#[0 0 226 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 0 230 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 144 0 145 0 147 0 148] 
#[0 0 234 0 1] 
#[0 0 238 0 1 0 2 0 4 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 144 0 145 0 147 0 148] 
#[0 0 242 0 1 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 144 0 145 0 147 0 148] 
#[0 0 246 0 1 0 5 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 144 0 145 0 147 0 148] 
#[0 0 250 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 144 0 145 0 147 0 148] 
#[0 0 254 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 144 0 145 0 147 0 148] 
#[0 1 2 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 143 0 144 0 145 0 147 0 148 0 149] 
#[1 0 50 0 7 1 6 0 15 1 6 0 25 0 50 0 29 0 50 0 30 0 50 0 31 0 50 0 32 0 50 0 35 0 50 0 36 0 50 0 37 0 50 0 38 0 50 0 39 0 50 0 40 0 50 0 41 0 50 0 42 0 50 0 43 0 50 0 44 0 50 0 49 0 50 0 50 0 50 0 53 0 50 0 146] 
#[1 0 41 0 15 3 29 0 99 3 37 0 140] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 1 125 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 3 41 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 3 49 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 1 61 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 3 61 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 1 73 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 3 65 0 59 0 153 0 68 0 157 0 69 1 169 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 1 81 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 1 89 0 101 1 93 0 102 1 97 0 103 1 101 0 104 1 105 0 105 1 173 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 3 69 0 141 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 73 0 29 3 77 0 30 3 81 0 31 3 85 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 3 129 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 170 0 7 1 10 0 15 1 10 0 25 0 170 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 44 0 170 0 49 0 170 0 50 0 170 0 53 0 170 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 3 133 0 16 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 3 137 0 59 3 141 0 60 2 133 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 3 145 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 3 149 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 137 0 117 2 165 0 118 2 177 0 119 2 145 0 123 2 149 0 124 3 153 0 125 1 1 0 129 1 5 0 130 1 9 0 131 3 157 0 133 3 161 0 134 3 165 0 135 3 169 0 136 3 173 0 137 1 13 0 138 3 177 0 139 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 1 61 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 1 73 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 3 181 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 1 81 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 1 89 0 101 1 93 0 102 1 97 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 3 185 0 141 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 7 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 1 14 0 25 0 73 0 26 0 77 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 1 69 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 85 0 43 0 190 0 44 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 190 0 49 0 190 0 50 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 3 189 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 3 193 0 112 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 0 190 0 146 1 29 0 147 1 33 0 148] 
#[1 0 194 0 7 1 18 0 15 1 18 0 25 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 49 0 194 0 50 0 194 0 53 0 194 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 3 189 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 3 197 0 112 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 0 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 3 21 0 92 3 201 0 122] 
#[0 1 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 41 0 15 3 205 0 25 3 29 0 99 3 209 0 140] 
#[0 1 26 0 15] 
#[0 0 11 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 3 213 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 3 217 0 58 3 221 0 59 0 133 0 60 3 225 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 1 34 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[1 0 15 0 2 0 15 0 3 0 15 0 4 0 15 0 6 0 15 0 8 0 15 0 10 0 15 0 16 0 15 0 25 0 15 0 28 0 19 0 29 0 23 0 30 0 27 0 31 0 31 0 32 0 15 0 33 0 35 0 35 0 39 0 36 0 43 0 37 0 47 0 38 0 51 0 39 0 55 0 40 0 59 0 41 0 63 0 42 0 67 0 43 0 71 0 44 0 75 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 0 15 0 143 2 1 0 146 0 15 0 149] 
#[0 0 79 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[0 1 46 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 144 0 145 0 147 0 148] 
#[0 1 50 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 144 0 145 0 147 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 3 229 0 58 3 233 0 59 0 133 0 60 3 237 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 3 241 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 3 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 1 54 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[1 0 83 0 2 0 83 0 3 0 83 0 4 0 83 0 6 0 83 0 8 0 83 0 10 0 83 0 16 0 83 0 25 0 83 0 28 0 87 0 29 0 91 0 30 0 95 0 31 0 99 0 32 0 83 0 33 0 103 0 35 0 107 0 36 0 111 0 37 0 115 0 38 0 119 0 39 0 123 0 40 0 127 0 41 0 131 0 42 0 135 0 43 0 139 0 44 0 143 0 49 1 58 0 50 1 245 0 63 1 249 0 64 1 253 0 65 0 83 0 143 1 58 0 146 0 83 0 149] 
#[0 0 147 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 6 0 21 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 16 0 146 0 25 0 146 0 28 0 146 0 29 0 146 0 30 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 44 0 146 0 49 0 146 0 50 2 17 0 53 3 249 0 77 2 25 0 95 0 146 0 143 0 146 0 146 0 146 0 149] 
#[1 0 21 0 7 3 253 0 77 2 25 0 95] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 1 0 58 0 129 0 59 0 133 0 60 0 137 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148 1 66 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 5 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 9 0 59 4 13 0 60 4 17 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 21 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 4 25 0 59 4 29 0 60 4 33 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 97 0 123 2 101 0 126 4 37 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 41 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 45 0 59 4 49 0 60 4 53 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 57 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 61 0 59 4 65 0 60 4 69 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 73 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 77 0 59 4 81 0 60 4 85 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 89 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 93 0 59 4 97 0 60 4 101 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 105 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 109 0 59 4 113 0 60 4 117 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 121 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 125 0 59 4 129 0 60 4 133 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 137 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 141 0 59 4 145 0 60 4 149 0 61 0 141 0 62 4 153 0 66 4 157 0 67 4 161 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 165 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 169 0 59 4 173 0 60 4 177 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 181 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 185 0 59 4 189 0 60 4 193 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 197 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 201 0 59 4 205 0 60 4 209 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 213 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 217 0 59 4 221 0 60 4 225 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 229 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 233 0 59 4 237 0 60 4 241 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 4 245 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 249 0 59 4 253 0 60 5 1 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 41 0 15 5 5 0 25 5 9 0 52 5 13 0 54 5 17 0 99 5 21 0 144 5 25 0 145 5 29 0 147 5 33 0 148] 
#[0 1 70 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 74 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[0 1 78 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 82 0 1] 
#[0 1 86 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[0 1 90 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[0 1 94 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[0 1 98 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 102 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 125 0 59 2 129 0 60 2 133 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 5 37 0 117 2 145 0 123 2 149 0 124 5 41 0 125 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 13 0 4 0 69 0 25 5 45 0 81 1 106 0 149] 
#[1 0 9 0 1 1 110 0 2 1 110 0 4 0 17 0 5 0 21 0 7 1 110 0 10 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 151 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 5 53 0 58 0 129 0 59 0 133 0 60 0 137 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 110 0 143 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 1 114 0 1 1 114 0 5 1 114 0 7 1 114 0 11 1 114 0 12 1 114 0 13 1 114 0 14 1 114 0 15 1 114 0 17 1 114 0 18 1 114 0 19 1 114 0 20 1 114 0 21 1 114 0 22 5 57 0 25 1 114 0 26 1 114 0 27 1 114 0 34 1 114 0 43 1 114 0 45 1 114 0 46 1 114 0 47 1 114 0 48 1 114 0 51 1 114 0 52 1 114 0 54 1 114 0 144 1 114 0 145 1 114 0 147 1 114 0 148] 
#[0 1 118 0 2 0 4 0 10 0 25 0 143] 
#[1 0 114 0 2 5 61 0 3 0 114 0 4 0 114 0 10 0 114 0 25 1 122 0 28 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 1 237 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 0 114 0 143 2 1 0 146] 
#[1 0 122 0 2 0 122 0 4 0 122 0 10 0 122 0 25 1 126 0 28 0 122 0 143] 
#[1 0 13 0 4 5 65 0 10 0 69 0 25 5 69 0 81 5 73 0 84] 
#[0 1 130 0 2 0 4 0 10 0 25 0 143] 
#[0 1 134 0 2 0 4 0 10 0 25 0 143] 
#[1 0 9 0 1 2 109 0 2 2 113 0 4 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 33 0 28 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 41 0 58 2 45 0 59 0 133 0 60 2 49 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 2 117 0 86 2 57 0 88 2 61 0 89 2 65 0 92 2 69 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 73 0 110 2 77 0 111 2 81 0 112 2 85 0 113 5 77 0 114 2 93 0 116 2 97 0 123 2 101 0 126 5 81 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 186 0 2 0 186 0 3 0 186 0 4 0 186 0 7 0 186 0 10 0 186 0 25 2 33 0 28 0 186 0 29 5 85 0 30 0 186 0 31 0 186 0 32 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 42 0 186 0 43 0 186 0 44 0 186 0 49 0 186 0 50 0 186 0 53 5 89 0 89 0 186 0 143 0 186 0 146] 
#[1 1 138 0 2 5 93 0 3 1 138 0 4 1 138 0 6 1 138 0 8 1 138 0 9 1 138 0 10 1 138 0 16 1 138 0 25 1 138 0 28 1 138 0 29 1 138 0 30 1 138 0 31 1 138 0 32 1 138 0 33 1 138 0 35 1 138 0 36 1 138 0 37 1 138 0 38 1 138 0 39 1 138 0 40 1 138 0 41 1 138 0 42 1 138 0 43 1 138 0 44 1 138 0 49 1 138 0 50 1 138 0 143 1 138 0 146 1 138 0 149] 
#[1 2 33 0 28 5 97 0 89] 
#[0 1 142 0 28] 
#[0 1 146 0 9 0 28] 
#[0 1 150 0 9 0 28] 
#[1 2 33 0 28 5 101 0 30 5 105 0 89] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 5 109 0 59 5 113 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 1 154 0 2 5 117 0 3 1 154 0 4 1 154 0 6 1 154 0 8 1 154 0 9 1 154 0 10 1 154 0 16 1 154 0 25 1 154 0 28 1 154 0 29 1 154 0 30 1 154 0 31 1 154 0 32 1 154 0 33 1 154 0 35 1 154 0 36 1 154 0 37 1 154 0 38 1 154 0 39 1 154 0 40 1 154 0 41 1 154 0 42 1 154 0 43 1 154 0 44 1 154 0 49 1 154 0 50 1 154 0 143 1 154 0 146 1 154 0 149] 
#[0 1 158 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 5 121 0 2 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 5 125 0 25 0 73 0 26 0 77 0 27 2 33 0 28 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 41 0 58 2 45 0 59 0 133 0 60 2 49 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 5 129 0 86 2 57 0 88 2 61 0 89 2 65 0 92 5 133 0 93 2 69 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 73 0 110 2 77 0 111 2 81 0 112 2 85 0 113 2 89 0 114 2 93 0 116 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 5 121 0 2 5 137 0 4 5 141 0 25 5 145 0 81 5 149 0 93] 
#[0 1 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 1 170 0 2 1 170 0 3 1 170 0 6 1 170 0 8 1 170 0 16 1 170 0 25 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 1 237 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 146] 
#[1 1 174 0 2 1 174 0 3 1 174 0 6 1 174 0 8 1 174 0 16 1 174 0 25 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 1 237 0 49 2 5 0 63 2 9 0 64 2 13 0 65] 
#[0 1 178 0 2 0 3 0 6 0 8 0 16 0 25] 
#[0 1 182 0 3 0 6 0 8 0 16 0 25] 
#[1 5 153 0 3 1 186 0 8 1 186 0 25] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 2 125 0 59 2 129 0 60 2 133 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 5 157 0 117 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 5 161 0 3 1 190 0 6 1 190 0 8 1 190 0 16 1 190 0 25] 
#[0 1 194 0 8 0 25] 
#[1 5 165 0 8 5 169 0 25 5 173 0 96] 
#[0 1 198 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 5 177 0 3 1 202 0 6 1 202 0 16 1 202 0 25] 
#[1 5 181 0 6 5 185 0 25 5 189 0 98] 
#[0 1 206 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 5 193 0 16 5 197 0 25 5 201 0 100] 
#[0 1 210 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[1 0 155 0 2 0 155 0 3 0 155 0 4 0 155 0 6 0 155 0 8 0 155 0 10 0 155 0 16 0 155 0 25 0 155 0 28 0 159 0 29 0 163 0 30 0 167 0 31 0 171 0 32 0 155 0 33 0 175 0 35 0 179 0 36 0 183 0 37 0 187 0 38 0 191 0 39 0 195 0 40 0 199 0 41 0 203 0 42 0 207 0 43 0 211 0 44 0 215 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 0 155 0 143 2 1 0 146 0 155 0 149] 
#[0 0 219 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 1 125 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 5 205 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 5 209 0 59 5 213 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 5 217 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 5 221 0 59 5 225 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 1 169 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 1 173 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 1 122 0 2 5 61 0 3 1 122 0 4 1 122 0 6 1 122 0 8 1 122 0 9 1 122 0 10 1 122 0 16 1 122 0 25 1 122 0 28 5 229 0 29 5 233 0 30 5 237 0 31 5 241 0 32 1 122 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 6 29 0 49 1 241 0 50 1 245 0 63 1 253 0 65 1 122 0 143 2 1 0 146 1 122 0 149] 
#[0 1 126 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 2 109 0 2 2 113 0 4 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 33 0 28 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 41 0 58 2 45 0 59 0 133 0 60 2 49 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 2 117 0 86 2 57 0 88 2 61 0 89 2 65 0 92 2 69 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 73 0 110 2 77 0 111 2 81 0 112 2 85 0 113 6 33 0 114 2 93 0 116 2 97 0 123 2 101 0 126 6 37 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 6 41 0 59 6 45 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 190 0 2 0 190 0 3 0 190 0 4 0 17 0 5 0 190 0 6 0 21 0 7 0 190 0 8 0 190 0 9 0 190 0 10 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 190 0 16 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 190 0 25 0 73 0 26 0 77 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 193 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 85 0 43 0 190 0 44 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 190 0 49 0 190 0 50 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 201 0 59 2 205 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 2 209 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 2 73 0 110 3 193 0 112 6 49 0 113 6 53 0 114 2 241 0 115 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 0 190 0 143 1 21 0 144 1 25 0 145 0 190 0 146 1 29 0 147 1 33 0 148 0 190 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 201 0 59 2 205 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 2 209 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 2 73 0 110 3 197 0 112 6 57 0 113 6 53 0 114 3 1 0 115 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 5 0 9 6 61 0 80 3 13 0 83] 
#[1 1 222 0 2 1 222 0 3 1 222 0 4 1 222 0 6 1 222 0 8 1 142 0 9 1 222 0 10 1 222 0 16 1 222 0 25 1 222 0 28 1 222 0 29 1 222 0 30 1 222 0 31 1 222 0 32 1 222 0 33 1 222 0 35 1 222 0 36 1 222 0 37 1 222 0 38 1 222 0 39 1 222 0 40 1 222 0 41 1 222 0 42 1 222 0 43 1 222 0 44 1 222 0 49 1 222 0 50 1 222 0 143 1 222 0 146 1 222 0 149] 
#[1 1 226 0 2 1 226 0 3 1 226 0 4 1 226 0 6 1 226 0 8 1 146 0 9 1 226 0 10 1 226 0 16 1 226 0 25 1 226 0 28 1 226 0 29 1 226 0 30 1 226 0 31 1 226 0 32 1 226 0 33 1 226 0 35 1 226 0 36 1 226 0 37 1 226 0 38 1 226 0 39 1 226 0 40 1 226 0 41 1 226 0 42 1 226 0 43 1 226 0 44 1 226 0 49 1 226 0 143 1 226 0 149] 
#[1 1 230 0 2 1 230 0 3 1 230 0 4 1 230 0 6 1 230 0 8 1 150 0 9 1 230 0 10 1 230 0 16 1 230 0 25 1 230 0 28 1 230 0 29 1 230 0 30 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 40 1 230 0 41 1 230 0 42 1 230 0 43 1 230 0 44 1 230 0 49 1 230 0 143 1 230 0 149] 
#[0 1 234 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 3 5 0 9 6 65 0 80 3 13 0 83] 
#[1 1 238 0 2 1 238 0 3 1 238 0 4 1 238 0 6 1 238 0 8 1 142 0 9 1 238 0 10 1 238 0 16 1 238 0 25 1 238 0 28 1 238 0 29 1 238 0 30 1 238 0 31 1 238 0 32 1 238 0 33 1 238 0 35 1 238 0 36 1 238 0 37 1 238 0 38 1 238 0 39 1 238 0 40 1 238 0 41 1 238 0 42 1 238 0 43 1 238 0 44 1 238 0 49 1 238 0 50 1 238 0 143 1 238 0 146 1 238 0 149] 
#[1 1 242 0 2 1 242 0 3 1 242 0 4 1 242 0 6 1 242 0 8 1 146 0 9 1 242 0 10 1 242 0 16 1 242 0 25 1 242 0 28 1 242 0 29 1 242 0 30 1 242 0 31 1 242 0 32 1 242 0 33 1 242 0 35 1 242 0 36 1 242 0 37 1 242 0 38 1 242 0 39 1 242 0 40 1 242 0 41 1 242 0 42 1 242 0 43 1 242 0 44 1 242 0 49 1 242 0 143 1 242 0 149] 
#[0 1 246 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 1 250 0 1 0 13 0 4 1 250 0 5 1 250 0 7 1 250 0 10 1 250 0 11 1 250 0 12 1 250 0 13 1 250 0 14 1 250 0 15 1 250 0 17 1 250 0 18 1 250 0 19 1 250 0 20 1 250 0 21 1 250 0 22 0 69 0 25 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 34 1 250 0 43 1 250 0 45 1 250 0 46 1 250 0 47 1 250 0 48 1 250 0 51 1 250 0 52 1 250 0 53 1 250 0 54 6 69 0 81 1 250 0 143 1 250 0 144 1 250 0 145 1 250 0 147 1 250 0 148] 
#[0 1 254 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 6 73 0 10 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 33 0 28 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 41 0 58 2 45 0 59 0 133 0 60 2 49 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 6 77 0 85 6 81 0 86 6 85 0 87 2 57 0 88 2 61 0 89 6 89 0 90 6 93 0 91 2 65 0 92 2 69 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 73 0 110 2 77 0 111 2 81 0 112 2 85 0 113 2 89 0 114 2 93 0 116 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 6 97 0 143 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 2 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 6 101 0 2 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 6 105 0 59 6 109 0 60 6 113 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 6 117 0 120 6 121 0 121 2 145 0 123 6 125 0 124 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 2 6 0 2 2 6 0 3 2 6 0 4 2 6 0 6 2 6 0 7 2 6 0 8 3 5 0 9 2 6 0 10 2 6 0 16 2 6 0 25 2 6 0 28 2 6 0 29 2 6 0 30 2 6 0 31 2 6 0 32 2 6 0 33 2 6 0 35 2 6 0 36 2 6 0 37 2 6 0 38 2 6 0 39 2 6 0 40 2 6 0 41 2 6 0 42 2 6 0 43 2 6 0 44 2 6 0 49 2 6 0 50 2 6 0 53 6 129 0 80 3 13 0 83 3 21 0 92 6 133 0 122 2 6 0 143 2 6 0 146 2 6 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 6 137 0 16 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 6 149 0 59 6 153 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 3 145 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 6 161 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 145 0 123 2 149 0 124 3 153 0 125 1 1 0 129 1 5 0 130 1 9 0 131 3 157 0 133 3 161 0 134 3 165 0 135 3 169 0 136 3 173 0 137 1 13 0 138 3 177 0 139 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 2 10 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 2 14 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 3 213 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 6 169 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 6 173 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 3 65 0 59 0 153 0 68 0 157 0 69 1 169 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 1 173 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 73 0 29 1 38 0 30 1 38 0 31 1 38 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 1 38 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 3 181 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 1 69 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 85 0 43 0 190 0 44 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 190 0 49 0 190 0 50 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 3 189 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 3 193 0 112 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 0 190 0 146 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 1 61 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 1 73 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 6 177 0 59 0 153 0 68 0 157 0 69 3 241 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 1 81 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 1 89 0 101 1 93 0 102 1 97 0 103 1 101 0 104 1 105 0 105 3 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 6 181 0 141 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 1 58 0 29 1 58 0 30 1 58 0 31 1 58 0 32 1 58 0 35 1 58 0 36 1 58 0 37 1 58 0 38 1 58 0 39 1 58 0 40 1 58 0 41 1 58 0 42 1 58 0 43 1 58 0 44 1 58 0 49 1 58 0 50 1 245 0 63 1 58 0 146] 
#[0 2 18 0 15 0 25] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 6 185 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 6 189 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 6 193 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 6 197 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 6 201 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 6 205 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 6 209 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 6 213 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 6 217 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 6 221 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 6 225 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 6 229 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 6 233 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 6 237 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 6 241 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 6 245 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 6 249 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 6 253 0 59 4 161 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 7 1 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 5 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 7 9 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 13 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 7 17 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 21 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 7 25 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 29 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 7 33 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 37 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 7 41 0 25 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 45 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 22 0 2 2 22 0 3 2 22 0 4 2 22 0 6 0 223 0 7 2 22 0 8 2 22 0 9 2 22 0 10 2 22 0 16 2 22 0 25 2 22 0 28 0 223 0 29 0 223 0 30 0 223 0 31 0 223 0 32 2 22 0 33 0 223 0 35 0 223 0 36 0 223 0 37 0 223 0 38 0 223 0 39 0 223 0 40 0 223 0 41 0 223 0 42 0 223 0 43 0 223 0 44 0 223 0 49 0 223 0 50 0 223 0 53 2 22 0 143 0 223 0 146 2 22 0 149] 
#[1 1 170 0 3 1 170 0 16 1 170 0 25 1 181 0 29 1 185 0 30 1 189 0 31 7 49 0 32 7 53 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 1 237 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 7 57 0 132 2 1 0 146] 
#[1 1 174 0 3 1 174 0 16 1 174 0 25 1 181 0 29 1 185 0 30 1 189 0 31 7 61 0 32 7 53 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 1 237 0 49 2 5 0 63 2 9 0 64 2 13 0 65 7 65 0 132] 
#[1 0 227 0 3 0 170 0 7 0 227 0 16 0 227 0 25 0 170 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 33 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 44 0 170 0 49 0 170 0 50 0 170 0 53 0 170 0 146] 
#[1 0 9 0 1 0 231 0 3 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 231 0 16 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 231 0 25 0 73 0 26 0 77 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 193 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 85 0 43 0 190 0 44 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 190 0 49 0 190 0 50 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 201 0 59 2 205 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 2 209 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 2 73 0 110 2 225 0 111 2 229 0 112 2 233 0 113 2 237 0 114 2 241 0 115 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 0 190 0 146 1 29 0 147 1 33 0 148] 
#[1 5 193 0 16 5 197 0 25 7 69 0 100] 
#[0 2 34 0 3 0 16 0 25] 
#[1 7 73 0 3 5 193 0 16 5 197 0 25 7 77 0 100] 
#[1 5 193 0 16 5 197 0 25 7 81 0 100] 
#[1 7 85 0 3 2 38 0 16 2 38 0 25] 
#[1 5 193 0 16 5 197 0 25 7 89 0 100] 
#[0 2 42 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 3 73 0 29 3 77 0 30 3 81 0 31 3 85 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 3 129 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[0 2 46 0 15 0 25] 
#[1 3 73 0 29 3 77 0 30 3 81 0 31 3 85 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 3 129 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[0 1 222 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 238 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 2 6 0 2 2 6 0 3 2 6 0 4 2 6 0 6 2 6 0 7 2 6 0 8 2 6 0 9 2 6 0 10 2 6 0 15 2 6 0 16 2 6 0 25 2 6 0 28 2 6 0 29 2 6 0 30 2 6 0 31 2 6 0 32 2 6 0 33 2 6 0 35 2 6 0 36 2 6 0 37 2 6 0 38 2 6 0 39 2 6 0 40 2 6 0 41 2 6 0 42 2 6 0 43 2 6 0 44 2 6 0 49 2 6 0 50 2 6 0 53 3 21 0 92 7 93 0 122 2 6 0 143 2 6 0 146 2 6 0 149] 
#[1 0 41 0 15 3 29 0 99 7 97 0 140] 
#[0 2 50 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 0 235 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 2 58 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[1 0 239 0 2 0 239 0 3 0 239 0 4 0 239 0 6 0 239 0 8 0 239 0 10 0 239 0 16 0 239 0 25 0 239 0 28 0 243 0 29 0 247 0 30 0 251 0 31 0 255 0 32 0 239 0 33 1 3 0 35 1 7 0 36 1 11 0 37 1 15 0 38 1 19 0 39 1 23 0 40 1 27 0 41 1 31 0 42 1 35 0 43 1 39 0 44 1 43 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 0 239 0 143 2 1 0 146 0 239 0 149] 
#[0 1 47 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[0 2 70 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[1 1 51 0 2 1 51 0 3 1 51 0 4 1 51 0 6 1 51 0 8 1 51 0 10 1 51 0 16 1 51 0 25 1 51 0 28 1 55 0 29 1 59 0 30 1 63 0 31 1 67 0 32 1 51 0 33 1 71 0 35 1 75 0 36 1 79 0 37 1 83 0 38 1 87 0 39 1 91 0 40 1 95 0 41 1 99 0 42 1 103 0 43 1 107 0 44 1 111 0 49 2 74 0 50 1 245 0 63 1 249 0 64 1 253 0 65 1 51 0 143 2 74 0 146 1 51 0 149] 
#[0 1 115 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 6 0 21 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 16 0 146 0 25 0 146 0 28 0 146 0 29 0 146 0 30 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 44 0 146 0 49 0 146 0 50 2 17 0 53 7 101 0 77 2 25 0 95 0 146 0 143 0 146 0 146 0 146 0 149] 
#[1 0 21 0 7 7 105 0 77 2 25 0 95] 
#[0 1 119 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 1 123 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 2 90 0 4 0 25 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 109 0 59 7 113 0 60 7 117 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 6 2 94 0 8 2 94 0 10 2 94 0 16 2 94 0 25 2 94 0 28 2 94 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 2 94 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 94 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 94 0 143 2 1 0 146 2 94 0 149] 
#[1 2 98 0 2 2 98 0 3 2 98 0 4 2 98 0 6 2 98 0 8 2 98 0 10 2 98 0 16 2 98 0 25 2 98 0 28 2 98 0 29 2 98 0 30 2 98 0 31 2 98 0 32 2 98 0 33 2 98 0 35 2 98 0 36 2 98 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 98 0 49 2 5 0 63 2 9 0 64 2 13 0 65 2 98 0 143 2 98 0 149] 
#[0 2 102 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 7 121 0 59 7 125 0 60 7 129 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 97 0 123 2 101 0 126 7 133 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 6 2 106 0 8 2 106 0 10 2 106 0 16 2 106 0 25 2 106 0 28 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 2 106 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 106 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 106 0 143 2 1 0 146 2 106 0 149] 
#[1 2 110 0 2 2 110 0 3 2 110 0 4 2 110 0 6 2 110 0 8 2 110 0 10 2 110 0 16 2 110 0 25 2 110 0 28 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 2 110 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 110 0 49 2 5 0 63 2 9 0 64 2 13 0 65 2 110 0 143 2 110 0 149] 
#[0 2 114 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 2 118 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 137 0 59 7 141 0 60 7 145 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 122 0 2 2 122 0 3 2 122 0 4 2 122 0 6 2 122 0 8 2 122 0 10 2 122 0 16 2 122 0 25 2 122 0 28 1 181 0 29 2 122 0 30 1 189 0 31 1 193 0 32 2 122 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 122 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 122 0 143 2 1 0 146 2 122 0 149] 
#[1 2 126 0 2 2 126 0 3 2 126 0 4 2 126 0 6 2 126 0 8 2 126 0 10 2 126 0 16 2 126 0 25 2 126 0 28 1 181 0 29 2 126 0 30 1 189 0 31 1 193 0 32 2 126 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 126 0 49 2 5 0 63 2 9 0 64 2 13 0 65 2 126 0 143 2 126 0 149] 
#[0 2 130 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 149 0 59 7 153 0 60 7 157 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 134 0 2 2 134 0 3 2 134 0 4 2 134 0 6 2 134 0 8 2 134 0 10 2 134 0 16 2 134 0 25 2 134 0 28 1 181 0 29 2 134 0 30 2 134 0 31 1 193 0 32 2 134 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 134 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 134 0 143 2 1 0 146 2 134 0 149] 
#[1 2 138 0 2 2 138 0 3 2 138 0 4 2 138 0 6 2 138 0 8 2 138 0 10 2 138 0 16 2 138 0 25 2 138 0 28 1 181 0 29 2 138 0 30 2 138 0 31 1 193 0 32 2 138 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 138 0 49 2 5 0 63 2 9 0 64 2 13 0 65 2 138 0 143 2 138 0 149] 
#[0 2 142 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 161 0 59 7 165 0 60 7 169 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 146 0 2 2 146 0 3 2 146 0 4 2 146 0 6 2 146 0 8 2 146 0 10 2 146 0 16 2 146 0 25 2 146 0 28 1 181 0 29 2 146 0 30 2 146 0 31 2 146 0 32 2 146 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 146 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 146 0 143 2 1 0 146 2 146 0 149] 
#[1 2 150 0 2 2 150 0 3 2 150 0 4 2 150 0 6 2 150 0 8 2 150 0 10 2 150 0 16 2 150 0 25 2 150 0 28 1 181 0 29 2 150 0 30 2 150 0 31 2 150 0 32 2 150 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 150 0 49 2 5 0 63 2 9 0 64 2 13 0 65 2 150 0 143 2 150 0 149] 
#[0 2 154 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 173 0 59 7 177 0 60 7 181 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 158 0 2 2 158 0 3 2 158 0 4 2 158 0 6 2 158 0 8 2 158 0 10 2 158 0 16 2 158 0 25 2 158 0 28 1 181 0 29 2 158 0 30 2 158 0 31 2 158 0 32 2 158 0 33 2 158 0 35 2 158 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 158 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 158 0 143 2 1 0 146 2 158 0 149] 
#[1 2 162 0 2 2 162 0 3 2 162 0 4 2 162 0 6 2 162 0 8 2 162 0 10 2 162 0 16 2 162 0 25 2 162 0 28 1 181 0 29 2 162 0 30 2 162 0 31 2 162 0 32 2 162 0 33 2 162 0 35 2 162 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 162 0 49 2 5 0 63 2 9 0 64 2 13 0 65 2 162 0 143 2 162 0 149] 
#[0 2 166 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 185 0 59 7 189 0 60 7 193 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 170 0 2 2 170 0 3 2 170 0 4 2 170 0 6 2 170 0 8 2 170 0 10 2 170 0 16 2 170 0 25 2 170 0 28 1 181 0 29 2 170 0 30 2 170 0 31 2 170 0 32 2 170 0 33 2 170 0 35 2 170 0 36 2 170 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 170 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 170 0 143 2 1 0 146 2 170 0 149] 
#[1 2 174 0 2 2 174 0 3 2 174 0 4 2 174 0 6 2 174 0 8 2 174 0 10 2 174 0 16 2 174 0 25 2 174 0 28 1 181 0 29 2 174 0 30 2 174 0 31 2 174 0 32 2 174 0 33 2 174 0 35 2 174 0 36 2 174 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 174 0 49 2 5 0 63 2 9 0 64 2 13 0 65 2 174 0 143 2 174 0 149] 
#[0 2 178 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 197 0 59 7 201 0 60 7 205 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 182 0 2 2 182 0 3 2 182 0 4 2 182 0 6 2 182 0 8 2 182 0 10 2 182 0 16 2 182 0 25 2 182 0 28 2 182 0 29 2 182 0 30 2 182 0 31 2 182 0 32 2 182 0 33 2 182 0 35 2 182 0 36 2 182 0 37 2 182 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 182 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 182 0 143 2 1 0 146 2 182 0 149] 
#[1 2 186 0 2 2 186 0 3 2 186 0 4 2 186 0 6 2 186 0 8 2 186 0 10 2 186 0 16 2 186 0 25 2 186 0 28 2 186 0 29 2 186 0 30 2 186 0 31 2 186 0 32 2 186 0 33 2 186 0 35 2 186 0 36 2 186 0 37 2 186 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 186 0 49 2 5 0 63 2 9 0 64 2 13 0 65 2 186 0 143 2 186 0 149] 
#[0 2 190 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 209 0 59 7 213 0 60 7 217 0 61 0 141 0 62 7 221 0 66 7 225 0 67 7 229 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 194 0 2 2 194 0 3 2 194 0 4 2 194 0 6 2 194 0 8 2 194 0 10 2 194 0 16 2 194 0 25 2 194 0 28 2 194 0 29 2 194 0 30 2 194 0 31 2 194 0 32 2 194 0 33 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 38 2 194 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 194 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 194 0 143 2 1 0 146 2 194 0 149] 
#[1 2 198 0 2 2 198 0 3 2 198 0 4 2 198 0 6 2 198 0 8 2 198 0 10 2 198 0 16 2 198 0 25 2 198 0 28 2 198 0 29 2 198 0 30 2 198 0 31 2 198 0 32 2 198 0 33 2 198 0 35 2 198 0 36 2 198 0 37 2 198 0 38 2 198 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 198 0 49 2 5 0 63 2 9 0 64 2 13 0 65 2 198 0 143 2 198 0 149] 
#[0 2 202 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 127 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 131 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 135 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 233 0 59 7 237 0 60 7 241 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 218 0 2 2 218 0 3 2 218 0 4 2 218 0 6 2 218 0 8 2 218 0 10 2 218 0 16 2 218 0 25 2 218 0 28 2 218 0 29 2 218 0 30 2 218 0 31 2 218 0 32 2 218 0 33 2 218 0 35 2 218 0 36 2 218 0 37 2 218 0 38 2 218 0 39 2 218 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 218 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 218 0 143 2 1 0 146 2 218 0 149] 
#[1 2 222 0 2 2 222 0 3 2 222 0 4 2 222 0 6 2 222 0 8 2 222 0 10 2 222 0 16 2 222 0 25 2 222 0 28 2 222 0 29 2 222 0 30 2 222 0 31 2 222 0 32 2 222 0 33 2 222 0 35 2 222 0 36 2 222 0 37 2 222 0 38 2 222 0 39 2 222 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 222 0 49 2 5 0 63 2 9 0 64 2 13 0 65 2 222 0 143 2 222 0 149] 
#[0 2 226 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 7 245 0 59 7 249 0 60 7 253 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 230 0 2 2 230 0 3 2 230 0 4 2 230 0 6 2 230 0 8 2 230 0 10 2 230 0 16 2 230 0 25 2 230 0 28 2 230 0 29 2 230 0 30 2 230 0 31 2 230 0 32 2 230 0 33 2 230 0 35 2 230 0 36 2 230 0 37 2 230 0 38 2 230 0 39 2 230 0 40 2 230 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 230 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 230 0 143 2 1 0 146 2 230 0 149] 
#[1 2 234 0 2 2 234 0 3 2 234 0 4 2 234 0 6 2 234 0 8 2 234 0 10 2 234 0 16 2 234 0 25 2 234 0 28 2 234 0 29 2 234 0 30 2 234 0 31 2 234 0 32 2 234 0 33 2 234 0 35 2 234 0 36 2 234 0 37 2 234 0 38 2 234 0 39 2 234 0 40 2 234 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 234 0 49 2 5 0 63 2 9 0 64 2 13 0 65 2 234 0 143 2 234 0 149] 
#[0 2 238 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 8 1 0 59 8 5 0 60 8 9 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 242 0 2 2 242 0 3 2 242 0 4 2 242 0 6 2 242 0 8 2 242 0 10 2 242 0 16 2 242 0 25 2 242 0 28 2 242 0 29 2 242 0 30 2 242 0 31 2 242 0 32 2 242 0 33 2 242 0 35 2 242 0 36 2 242 0 37 2 242 0 38 2 242 0 39 2 242 0 40 2 242 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 242 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 242 0 143 2 1 0 146 2 242 0 149] 
#[1 2 246 0 2 2 246 0 3 2 246 0 4 2 246 0 6 2 246 0 8 2 246 0 10 2 246 0 16 2 246 0 25 2 246 0 28 2 246 0 29 2 246 0 30 2 246 0 31 2 246 0 32 2 246 0 33 2 246 0 35 2 246 0 36 2 246 0 37 2 246 0 38 2 246 0 39 2 246 0 40 2 246 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 246 0 49 2 5 0 63 2 9 0 64 2 13 0 65 2 246 0 143 2 246 0 149] 
#[0 2 250 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 8 13 0 59 8 17 0 60 8 21 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 254 0 2 2 254 0 3 2 254 0 4 2 254 0 6 2 254 0 8 2 254 0 10 2 254 0 16 2 254 0 25 2 254 0 28 2 254 0 29 2 254 0 30 2 254 0 31 2 254 0 32 2 254 0 33 2 254 0 35 2 254 0 36 2 254 0 37 2 254 0 38 2 254 0 39 2 254 0 40 2 254 0 41 2 254 0 42 2 254 0 43 1 233 0 44 2 254 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 254 0 143 2 1 0 146 2 254 0 149] 
#[1 3 2 0 2 3 2 0 3 3 2 0 4 3 2 0 6 3 2 0 8 3 2 0 10 3 2 0 16 3 2 0 25 3 2 0 28 3 2 0 29 3 2 0 30 3 2 0 31 3 2 0 32 3 2 0 33 3 2 0 35 3 2 0 36 3 2 0 37 3 2 0 38 3 2 0 39 3 2 0 40 3 2 0 41 3 2 0 42 3 2 0 43 1 233 0 44 3 2 0 49 2 5 0 63 2 9 0 64 2 13 0 65 3 2 0 143 3 2 0 149] 
#[0 3 6 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 8 25 0 59 8 29 0 60 8 33 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 10 0 2 3 10 0 3 3 10 0 4 3 10 0 6 3 10 0 8 3 10 0 10 3 10 0 16 3 10 0 25 3 10 0 28 3 10 0 29 3 10 0 30 3 10 0 31 3 10 0 32 3 10 0 33 3 10 0 35 3 10 0 36 3 10 0 37 3 10 0 38 3 10 0 39 3 10 0 40 3 10 0 41 3 10 0 42 3 10 0 43 3 10 0 44 3 10 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 3 10 0 143 2 1 0 146 3 10 0 149] 
#[1 3 14 0 2 3 14 0 3 3 14 0 4 3 14 0 6 3 14 0 8 3 14 0 10 3 14 0 16 3 14 0 25 3 14 0 28 3 14 0 29 3 14 0 30 3 14 0 31 3 14 0 32 3 14 0 33 3 14 0 35 3 14 0 36 3 14 0 37 3 14 0 38 3 14 0 39 3 14 0 40 3 14 0 41 3 14 0 42 3 14 0 43 3 14 0 44 3 14 0 49 2 5 0 63 2 9 0 64 2 13 0 65 3 14 0 143 3 14 0 149] 
#[0 3 18 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 8 37 0 59 8 41 0 60 8 45 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 22 0 2 3 22 0 3 3 22 0 4 3 22 0 6 3 22 0 8 3 22 0 10 3 22 0 16 3 22 0 25 3 22 0 28 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 3 22 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 3 22 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 3 22 0 143 2 1 0 146 3 22 0 149] 
#[1 3 26 0 2 3 26 0 3 3 26 0 4 3 26 0 6 3 26 0 8 3 26 0 10 3 26 0 16 3 26 0 25 3 26 0 28 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 3 26 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 3 26 0 49 2 5 0 63 2 9 0 64 2 13 0 65 3 26 0 143 3 26 0 149] 
#[0 3 30 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 41 0 15 8 49 0 52 8 53 0 54 8 57 0 99 8 61 0 144 8 65 0 145 8 69 0 147 8 73 0 148] 
#[0 3 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 143 0 144 0 145 0 146 0 147 0 148 0 149] 
#[0 3 38 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 8 77 0 16 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 2 125 0 59 2 129 0 60 2 133 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 137 0 117 2 165 0 118 8 81 0 119 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 3 42 0 7] 
#[0 3 46 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 3 50 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 144 0 145 0 147 0 148] 
#[0 3 54 0 1] 
#[1 8 85 0 3 5 165 0 8 5 169 0 25 8 89 0 96] 
#[1 5 165 0 8 5 169 0 25 8 93 0 96] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 4 1 0 58 0 129 0 59 0 133 0 60 0 137 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148 3 58 0 149] 
#[1 0 9 0 1 3 62 0 2 3 62 0 4 0 17 0 5 0 21 0 7 3 62 0 10 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 3 62 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 8 97 0 58 0 129 0 59 0 133 0 60 0 137 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 3 62 0 143 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 3 66 0 2 0 4 0 10 0 25 0 143] 
#[0 3 70 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 144 0 145 0 147 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 8 101 0 59 8 105 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 8 109 0 109 2 97 0 123 2 101 0 126 8 113 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 3 74 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 8 117 0 10 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 33 0 28 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 41 0 58 2 45 0 59 0 133 0 60 2 49 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 8 121 0 88 2 61 0 89 2 65 0 92 2 69 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 73 0 110 2 77 0 111 2 81 0 112 2 85 0 113 2 89 0 114 2 93 0 116 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 3 78 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 5 121 0 2 5 125 0 25 1 150 0 28 8 125 0 93] 
#[1 5 121 0 2 5 125 0 25 1 158 0 28 8 129 0 93] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 8 133 0 58 0 129 0 59 0 133 0 60 0 137 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 3 82 0 2 0 4 0 10 0 25 0 143] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 8 101 0 59 8 105 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 8 137 0 109 2 97 0 123 2 101 0 126 8 141 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 3 86 0 2 0 4 0 10 0 25 0 143] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 8 145 0 58 0 129 0 59 0 133 0 60 0 137 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 3 90 0 2 0 4 0 10 0 25 0 143] 
#[1 3 94 0 2 3 94 0 3 3 94 0 4 3 94 0 6 3 94 0 8 3 94 0 9 3 94 0 10 3 94 0 16 3 94 0 25 3 94 0 28 5 229 0 29 5 233 0 30 5 237 0 31 5 241 0 32 3 94 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 6 29 0 49 1 241 0 50 1 245 0 63 1 253 0 65 3 94 0 143 2 1 0 146 3 94 0 149] 
#[0 3 98 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 2 37 0 53 2 97 0 123 2 101 0 126 8 149 0 127] 
#[0 3 102 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 8 153 0 2] 
#[1 5 121 0 2 8 157 0 4 5 141 0 25 5 145 0 81 8 161 0 93] 
#[0 3 106 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 14 0 1 5 121 0 2 0 14 0 5 0 14 0 7 0 14 0 11 0 14 0 12 0 14 0 13 0 14 0 14 0 14 0 15 0 14 0 17 0 14 0 18 0 14 0 19 0 14 0 20 0 14 0 21 0 14 0 22 5 125 0 25 0 14 0 26 0 14 0 27 0 14 0 28 0 14 0 34 0 14 0 43 0 14 0 45 0 14 0 46 0 14 0 47 0 14 0 48 0 14 0 51 0 14 0 52 0 14 0 53 0 14 0 54 8 165 0 93 0 14 0 144 0 14 0 145 0 14 0 147 0 14 0 148] 
#[1 0 70 0 1 8 153 0 2 1 57 0 4 0 70 0 5 0 70 0 7 0 70 0 11 0 70 0 12 0 70 0 13 0 70 0 14 0 70 0 15 0 70 0 17 0 70 0 18 0 70 0 19 0 70 0 20 0 70 0 21 0 70 0 22 0 70 0 26 0 70 0 27 0 70 0 28 0 70 0 34 0 70 0 43 0 70 0 45 0 70 0 46 0 70 0 47 0 70 0 48 0 70 0 51 0 70 0 52 0 70 0 53 0 70 0 54 0 70 0 144 0 70 0 145 0 70 0 147 0 70 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 33 0 28 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 41 0 58 2 45 0 59 0 133 0 60 2 49 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 8 121 0 88 2 61 0 89 2 65 0 92 2 69 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 73 0 110 2 77 0 111 2 81 0 112 2 85 0 113 2 89 0 114 2 93 0 116 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 3 110 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 3 114 0 8 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 3 114 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 125 0 59 2 129 0 60 2 133 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 8 169 0 117 2 145 0 123 2 149 0 124 8 173 0 125 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 3 118 0 2 0 3 0 6 0 8 0 16 0 25] 
#[1 3 122 0 6 3 122 0 8 3 122 0 16 3 122 0 25 2 37 0 53 8 177 0 123] 
#[0 3 126 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 8 181 0 8] 
#[0 3 130 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 3 134 0 6 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 3 134 0 16 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 3 134 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 125 0 59 2 129 0 60 2 133 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 8 169 0 117 2 145 0 123 2 149 0 124 8 185 0 125 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 3 138 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 8 189 0 6] 
#[0 3 142 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 3 146 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 8 193 0 16] 
#[0 3 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 3 213 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 8 197 0 59 8 201 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 1 38 0 2 1 38 0 3 1 38 0 4 1 38 0 6 1 38 0 8 1 38 0 9 1 38 0 10 1 38 0 16 1 38 0 25 1 38 0 28 5 229 0 29 1 38 0 30 1 38 0 31 1 38 0 32 1 38 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 1 38 0 49 1 241 0 50 1 245 0 63 1 253 0 65 1 38 0 143 2 1 0 146 1 38 0 149] 
#[0 1 42 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 8 205 0 59 8 209 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 3 241 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 3 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 1 58 0 2 1 58 0 3 1 58 0 4 1 58 0 6 1 58 0 8 1 58 0 9 1 58 0 10 1 58 0 16 1 58 0 25 1 58 0 28 1 58 0 29 1 58 0 30 1 58 0 31 1 58 0 32 1 58 0 33 1 58 0 35 1 58 0 36 1 58 0 37 1 58 0 38 1 58 0 39 1 58 0 40 1 58 0 41 1 58 0 42 1 58 0 43 1 58 0 44 1 58 0 49 1 58 0 50 1 245 0 63 1 253 0 65 1 58 0 143 1 58 0 146 1 58 0 149] 
#[0 1 62 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 8 213 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 8 217 0 59 4 17 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 8 221 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 8 225 0 59 4 33 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 2 97 0 123 2 101 0 126 4 37 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 8 229 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 8 233 0 59 4 53 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 8 237 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 8 241 0 59 4 69 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 8 245 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 8 249 0 59 4 85 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 8 253 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 1 0 59 4 101 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 9 5 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 9 0 59 4 117 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 9 13 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 17 0 59 4 133 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 9 21 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 25 0 59 4 149 0 61 4 153 0 66 4 157 0 67 4 161 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 9 29 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 33 0 59 4 177 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 9 37 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 41 0 59 4 193 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 9 45 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 49 0 59 4 209 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 9 53 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 57 0 59 4 225 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 9 61 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 65 0 59 4 241 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 9 69 0 25 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 73 0 59 5 1 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 5 121 0 2 5 125 0 25 1 150 0 28 9 77 0 93] 
#[1 5 121 0 2 5 125 0 25 1 158 0 28 9 81 0 93] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 6 1 214 0 8 1 214 0 9 1 214 0 10 1 214 0 16 1 214 0 25 1 214 0 28 5 229 0 29 5 233 0 30 5 237 0 31 5 241 0 32 1 214 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 6 29 0 49 1 241 0 50 1 245 0 63 1 253 0 65 1 214 0 143 2 1 0 146 1 214 0 149] 
#[0 1 218 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 226 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 230 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 242 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 3 154 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[0 3 158 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[0 3 162 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 143 0 144 0 145 0 147 0 148] 
#[0 3 166 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 3 170 0 10 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 33 0 28 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 41 0 58 2 45 0 59 0 133 0 60 2 49 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 9 85 0 86 9 89 0 87 2 57 0 88 2 61 0 89 2 65 0 92 2 69 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 73 0 110 2 77 0 111 2 81 0 112 2 85 0 113 2 89 0 114 2 93 0 116 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 3 170 0 143 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 13 0 4 5 65 0 10 0 69 0 25 9 93 0 81 9 97 0 84 3 174 0 143] 
#[1 6 77 0 85 6 89 0 90 9 101 0 91 6 97 0 143] 
#[1 3 178 0 10 6 77 0 85 6 89 0 90 9 105 0 91 6 97 0 143] 
#[0 9 109 0 10] 
#[1 3 182 0 1 0 13 0 4 3 182 0 5 3 182 0 7 3 182 0 10 3 182 0 11 3 182 0 12 3 182 0 13 3 182 0 14 3 182 0 15 3 182 0 17 3 182 0 18 3 182 0 19 3 182 0 20 3 182 0 21 3 182 0 22 0 69 0 25 3 182 0 26 3 182 0 27 3 182 0 28 3 182 0 34 3 182 0 43 3 182 0 45 3 182 0 46 3 182 0 47 3 182 0 48 3 182 0 51 3 182 0 52 3 182 0 53 3 182 0 54 9 113 0 81 3 182 0 143 3 182 0 144 3 182 0 145 3 182 0 147 3 182 0 148] 
#[0 3 186 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 3 190 0 2 3 190 0 3 3 190 0 25 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 1 237 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 146] 
#[1 3 194 0 2 3 194 0 3 3 194 0 25 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 1 237 0 49 2 5 0 63 2 9 0 64 2 13 0 65] 
#[1 1 139 0 2 3 198 0 3 1 143 0 25 9 117 0 93] 
#[0 3 202 0 2 0 3 0 25] 
#[1 5 121 0 2 9 121 0 3 5 125 0 25 9 125 0 93] 
#[1 5 121 0 2 9 129 0 3 5 125 0 25 9 133 0 93] 
#[0 3 206 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[1 3 210 0 2 3 210 0 3 3 210 0 4 3 210 0 6 3 210 0 7 3 210 0 8 3 5 0 9 3 210 0 10 3 210 0 16 3 210 0 25 3 210 0 28 3 210 0 29 3 210 0 30 3 210 0 31 3 210 0 32 3 210 0 33 3 210 0 35 3 210 0 36 3 210 0 37 3 210 0 38 3 210 0 39 3 210 0 40 3 210 0 41 3 210 0 42 3 210 0 43 3 210 0 44 3 210 0 49 3 210 0 50 3 210 0 53 9 137 0 80 3 13 0 83 3 210 0 143 3 210 0 146 3 210 0 149] 
#[0 2 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 1 125 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 9 141 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 1 133 0 58 1 137 0 59 0 133 0 60 0 137 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 9 145 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 1 157 0 58 1 161 0 59 0 133 0 60 0 137 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 1 169 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 1 173 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 9 149 0 29 9 153 0 30 9 157 0 31 9 161 0 32 7 53 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 9 205 0 49 1 241 0 50 1 245 0 63 1 249 0 64 7 57 0 132 2 1 0 146] 
#[1 1 181 0 29 1 185 0 30 1 189 0 31 7 61 0 32 7 53 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 1 237 0 49 2 5 0 63 2 9 0 64 2 13 0 65 7 65 0 132] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 2 181 0 58 2 185 0 59 0 133 0 60 0 137 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 2 30 0 3 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 2 30 0 16 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 2 30 0 25 0 73 0 26 0 77 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 193 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 85 0 43 0 190 0 44 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 190 0 49 0 190 0 50 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 201 0 59 2 205 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 2 73 0 110 2 225 0 111 2 229 0 112 2 85 0 113 2 89 0 114 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 0 190 0 146 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 201 0 59 2 205 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 2 73 0 110 2 245 0 111 2 249 0 112 2 85 0 113 2 89 0 114 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 73 0 29 2 62 0 30 2 62 0 31 2 62 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 2 62 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 6 177 0 59 0 153 0 68 0 157 0 69 3 241 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 3 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 74 0 29 2 74 0 30 2 74 0 31 2 74 0 32 2 74 0 35 2 74 0 36 2 74 0 37 2 74 0 38 2 74 0 39 2 74 0 40 2 74 0 41 2 74 0 42 2 74 0 43 2 74 0 44 2 74 0 49 2 74 0 50 1 245 0 63 2 74 0 146] 
#[0 3 214 0 15 0 25] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 209 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 94 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 35 2 94 0 36 2 94 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 2 94 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 213 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 73 0 29 3 77 0 30 3 81 0 31 3 85 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 2 106 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 217 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 73 0 29 2 122 0 30 3 81 0 31 3 85 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 2 122 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 221 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 73 0 29 2 134 0 30 2 134 0 31 3 85 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 2 134 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 225 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 73 0 29 2 146 0 30 2 146 0 31 2 146 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 2 146 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 229 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 73 0 29 2 158 0 30 2 158 0 31 2 158 0 32 2 158 0 35 2 158 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 2 158 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 233 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 73 0 29 2 170 0 30 2 170 0 31 2 170 0 32 2 170 0 35 2 170 0 36 2 170 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 2 170 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 237 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 182 0 29 2 182 0 30 2 182 0 31 2 182 0 32 2 182 0 35 2 182 0 36 2 182 0 37 2 182 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 2 182 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 241 0 59 7 229 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 194 0 29 2 194 0 30 2 194 0 31 2 194 0 32 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 38 2 194 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 2 194 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 245 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 218 0 29 2 218 0 30 2 218 0 31 2 218 0 32 2 218 0 35 2 218 0 36 2 218 0 37 2 218 0 38 2 218 0 39 2 218 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 2 218 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 249 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 230 0 29 2 230 0 30 2 230 0 31 2 230 0 32 2 230 0 35 2 230 0 36 2 230 0 37 2 230 0 38 2 230 0 39 2 230 0 40 2 230 0 41 3 117 0 42 3 121 0 43 3 125 0 44 2 230 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 9 253 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 242 0 29 2 242 0 30 2 242 0 31 2 242 0 32 2 242 0 35 2 242 0 36 2 242 0 37 2 242 0 38 2 242 0 39 2 242 0 40 2 242 0 41 3 117 0 42 3 121 0 43 3 125 0 44 2 242 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 1 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 254 0 29 2 254 0 30 2 254 0 31 2 254 0 32 2 254 0 35 2 254 0 36 2 254 0 37 2 254 0 38 2 254 0 39 2 254 0 40 2 254 0 41 2 254 0 42 2 254 0 43 3 125 0 44 2 254 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 5 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 10 0 29 3 10 0 30 3 10 0 31 3 10 0 32 3 10 0 35 3 10 0 36 3 10 0 37 3 10 0 38 3 10 0 39 3 10 0 40 3 10 0 41 3 10 0 42 3 10 0 43 3 10 0 44 3 10 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 1 69 0 34 0 85 0 43 0 89 0 45 3 45 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 9 0 59 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 3 53 0 101 3 57 0 102 0 233 0 103 1 101 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 73 0 29 3 77 0 30 3 81 0 31 3 85 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 3 22 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 10 13 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 10 17 0 59 10 21 0 60 4 69 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 3 145 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 3 149 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 145 0 123 2 149 0 124 10 25 0 125 1 1 0 129 1 5 0 130 1 9 0 131 10 29 0 133 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 218 0 1 3 218 0 5 3 218 0 7 3 218 0 11 3 218 0 12 3 218 0 13 3 218 0 14 3 218 0 15 3 218 0 17 3 218 0 18 3 218 0 19 3 218 0 20 3 218 0 21 3 218 0 22 10 33 0 25 3 218 0 26 3 218 0 27 3 218 0 34 3 218 0 43 3 218 0 45 3 218 0 46 3 218 0 47 3 218 0 48 3 218 0 51 3 218 0 52 3 218 0 54 3 218 0 144 3 218 0 145 3 218 0 147 3 218 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 37 0 59 10 41 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 10 49 0 25 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 10 17 0 59 10 21 0 60 4 69 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 3 145 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 3 149 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 145 0 123 2 149 0 124 10 53 0 125 1 1 0 129 1 5 0 130 1 9 0 131 10 57 0 133 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 61 0 59 10 65 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 3 222 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 5 193 0 16 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 5 197 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 10 69 0 59 10 73 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 3 145 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 10 77 0 100 6 157 0 101 6 161 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 145 0 123 2 149 0 124 3 153 0 125 1 1 0 129 1 5 0 130 1 9 0 131 3 157 0 133 3 169 0 136 3 173 0 137 1 13 0 138 10 81 0 139 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 3 226 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 3 230 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 3 234 0 16 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 3 234 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 10 69 0 59 10 73 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 3 145 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 6 161 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 145 0 123 2 149 0 124 10 85 0 125 1 1 0 129 1 5 0 130 1 9 0 131 10 89 0 133 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 3 238 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 3 210 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 3 242 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 1 147 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 1 151 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 3 254 0 2 3 254 0 3 3 254 0 4 3 254 0 6 3 254 0 8 3 254 0 10 3 254 0 16 3 254 0 25 3 254 0 28 3 254 0 29 3 254 0 30 3 254 0 31 3 254 0 32 3 254 0 33 3 254 0 35 3 254 0 36 3 254 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 3 254 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 3 254 0 143 2 1 0 146 3 254 0 149] 
#[1 4 2 0 2 4 2 0 3 4 2 0 4 4 2 0 6 4 2 0 8 4 2 0 10 4 2 0 16 4 2 0 25 4 2 0 28 4 2 0 29 4 2 0 30 4 2 0 31 4 2 0 32 4 2 0 33 4 2 0 35 4 2 0 36 4 2 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 2 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 2 0 143 4 2 0 149] 
#[0 4 6 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 10 0 2 4 10 0 3 4 10 0 4 4 10 0 6 4 10 0 8 4 10 0 10 4 10 0 16 4 10 0 25 4 10 0 28 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 4 10 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 10 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 10 0 143 2 1 0 146 4 10 0 149] 
#[1 4 14 0 2 4 14 0 3 4 14 0 4 4 14 0 6 4 14 0 8 4 14 0 10 4 14 0 16 4 14 0 25 4 14 0 28 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 4 14 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 14 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 14 0 143 4 14 0 149] 
#[0 4 18 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 4 22 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 26 0 2 4 26 0 3 4 26 0 4 4 26 0 6 4 26 0 8 4 26 0 10 4 26 0 16 4 26 0 25 4 26 0 28 1 181 0 29 4 26 0 30 1 189 0 31 1 193 0 32 4 26 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 26 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 26 0 143 2 1 0 146 4 26 0 149] 
#[1 4 30 0 2 4 30 0 3 4 30 0 4 4 30 0 6 4 30 0 8 4 30 0 10 4 30 0 16 4 30 0 25 4 30 0 28 1 181 0 29 4 30 0 30 1 189 0 31 1 193 0 32 4 30 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 30 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 30 0 143 4 30 0 149] 
#[0 4 34 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 38 0 2 4 38 0 3 4 38 0 4 4 38 0 6 4 38 0 8 4 38 0 10 4 38 0 16 4 38 0 25 4 38 0 28 1 181 0 29 4 38 0 30 4 38 0 31 1 193 0 32 4 38 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 38 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 38 0 143 2 1 0 146 4 38 0 149] 
#[1 4 42 0 2 4 42 0 3 4 42 0 4 4 42 0 6 4 42 0 8 4 42 0 10 4 42 0 16 4 42 0 25 4 42 0 28 1 181 0 29 4 42 0 30 4 42 0 31 1 193 0 32 4 42 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 42 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 42 0 143 4 42 0 149] 
#[0 4 46 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 50 0 2 4 50 0 3 4 50 0 4 4 50 0 6 4 50 0 8 4 50 0 10 4 50 0 16 4 50 0 25 4 50 0 28 1 181 0 29 4 50 0 30 4 50 0 31 4 50 0 32 4 50 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 50 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 50 0 143 2 1 0 146 4 50 0 149] 
#[1 4 54 0 2 4 54 0 3 4 54 0 4 4 54 0 6 4 54 0 8 4 54 0 10 4 54 0 16 4 54 0 25 4 54 0 28 1 181 0 29 4 54 0 30 4 54 0 31 4 54 0 32 4 54 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 54 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 54 0 143 4 54 0 149] 
#[0 4 58 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 62 0 2 4 62 0 3 4 62 0 4 4 62 0 6 4 62 0 8 4 62 0 10 4 62 0 16 4 62 0 25 4 62 0 28 1 181 0 29 4 62 0 30 4 62 0 31 4 62 0 32 4 62 0 33 4 62 0 35 4 62 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 62 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 62 0 143 2 1 0 146 4 62 0 149] 
#[1 4 66 0 2 4 66 0 3 4 66 0 4 4 66 0 6 4 66 0 8 4 66 0 10 4 66 0 16 4 66 0 25 4 66 0 28 1 181 0 29 4 66 0 30 4 66 0 31 4 66 0 32 4 66 0 33 4 66 0 35 4 66 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 66 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 66 0 143 4 66 0 149] 
#[0 4 70 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 74 0 2 4 74 0 3 4 74 0 4 4 74 0 6 4 74 0 8 4 74 0 10 4 74 0 16 4 74 0 25 4 74 0 28 1 181 0 29 4 74 0 30 4 74 0 31 4 74 0 32 4 74 0 33 4 74 0 35 4 74 0 36 4 74 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 74 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 74 0 143 2 1 0 146 4 74 0 149] 
#[1 4 78 0 2 4 78 0 3 4 78 0 4 4 78 0 6 4 78 0 8 4 78 0 10 4 78 0 16 4 78 0 25 4 78 0 28 1 181 0 29 4 78 0 30 4 78 0 31 4 78 0 32 4 78 0 33 4 78 0 35 4 78 0 36 4 78 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 78 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 78 0 143 4 78 0 149] 
#[0 4 82 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 86 0 2 4 86 0 3 4 86 0 4 4 86 0 6 4 86 0 8 4 86 0 10 4 86 0 16 4 86 0 25 4 86 0 28 4 86 0 29 4 86 0 30 4 86 0 31 4 86 0 32 4 86 0 33 4 86 0 35 4 86 0 36 4 86 0 37 4 86 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 86 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 86 0 143 2 1 0 146 4 86 0 149] 
#[1 4 90 0 2 4 90 0 3 4 90 0 4 4 90 0 6 4 90 0 8 4 90 0 10 4 90 0 16 4 90 0 25 4 90 0 28 4 90 0 29 4 90 0 30 4 90 0 31 4 90 0 32 4 90 0 33 4 90 0 35 4 90 0 36 4 90 0 37 4 90 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 90 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 90 0 143 4 90 0 149] 
#[0 4 94 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 98 0 2 4 98 0 3 4 98 0 4 4 98 0 6 4 98 0 8 4 98 0 10 4 98 0 16 4 98 0 25 4 98 0 28 4 98 0 29 4 98 0 30 4 98 0 31 4 98 0 32 4 98 0 33 4 98 0 35 4 98 0 36 4 98 0 37 4 98 0 38 4 98 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 98 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 98 0 143 2 1 0 146 4 98 0 149] 
#[1 4 102 0 2 4 102 0 3 4 102 0 4 4 102 0 6 4 102 0 8 4 102 0 10 4 102 0 16 4 102 0 25 4 102 0 28 4 102 0 29 4 102 0 30 4 102 0 31 4 102 0 32 4 102 0 33 4 102 0 35 4 102 0 36 4 102 0 37 4 102 0 38 4 102 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 102 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 102 0 143 4 102 0 149] 
#[0 4 106 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 155 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 159 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 1 163 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 122 0 2 4 122 0 3 4 122 0 4 4 122 0 6 4 122 0 8 4 122 0 10 4 122 0 16 4 122 0 25 4 122 0 28 4 122 0 29 4 122 0 30 4 122 0 31 4 122 0 32 4 122 0 33 4 122 0 35 4 122 0 36 4 122 0 37 4 122 0 38 4 122 0 39 4 122 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 122 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 122 0 143 2 1 0 146 4 122 0 149] 
#[1 4 126 0 2 4 126 0 3 4 126 0 4 4 126 0 6 4 126 0 8 4 126 0 10 4 126 0 16 4 126 0 25 4 126 0 28 4 126 0 29 4 126 0 30 4 126 0 31 4 126 0 32 4 126 0 33 4 126 0 35 4 126 0 36 4 126 0 37 4 126 0 38 4 126 0 39 4 126 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 126 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 126 0 143 4 126 0 149] 
#[0 4 130 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 134 0 2 4 134 0 3 4 134 0 4 4 134 0 6 4 134 0 8 4 134 0 10 4 134 0 16 4 134 0 25 4 134 0 28 4 134 0 29 4 134 0 30 4 134 0 31 4 134 0 32 4 134 0 33 4 134 0 35 4 134 0 36 4 134 0 37 4 134 0 38 4 134 0 39 4 134 0 40 4 134 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 134 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 134 0 143 2 1 0 146 4 134 0 149] 
#[1 4 138 0 2 4 138 0 3 4 138 0 4 4 138 0 6 4 138 0 8 4 138 0 10 4 138 0 16 4 138 0 25 4 138 0 28 4 138 0 29 4 138 0 30 4 138 0 31 4 138 0 32 4 138 0 33 4 138 0 35 4 138 0 36 4 138 0 37 4 138 0 38 4 138 0 39 4 138 0 40 4 138 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 138 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 138 0 143 4 138 0 149] 
#[0 4 142 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 146 0 2 4 146 0 3 4 146 0 4 4 146 0 6 4 146 0 8 4 146 0 10 4 146 0 16 4 146 0 25 4 146 0 28 4 146 0 29 4 146 0 30 4 146 0 31 4 146 0 32 4 146 0 33 4 146 0 35 4 146 0 36 4 146 0 37 4 146 0 38 4 146 0 39 4 146 0 40 4 146 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 146 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 146 0 143 2 1 0 146 4 146 0 149] 
#[1 4 150 0 2 4 150 0 3 4 150 0 4 4 150 0 6 4 150 0 8 4 150 0 10 4 150 0 16 4 150 0 25 4 150 0 28 4 150 0 29 4 150 0 30 4 150 0 31 4 150 0 32 4 150 0 33 4 150 0 35 4 150 0 36 4 150 0 37 4 150 0 38 4 150 0 39 4 150 0 40 4 150 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 150 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 150 0 143 4 150 0 149] 
#[0 4 154 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 158 0 2 4 158 0 3 4 158 0 4 4 158 0 6 4 158 0 8 4 158 0 10 4 158 0 16 4 158 0 25 4 158 0 28 4 158 0 29 4 158 0 30 4 158 0 31 4 158 0 32 4 158 0 33 4 158 0 35 4 158 0 36 4 158 0 37 4 158 0 38 4 158 0 39 4 158 0 40 4 158 0 41 4 158 0 42 4 158 0 43 1 233 0 44 4 158 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 158 0 143 2 1 0 146 4 158 0 149] 
#[1 4 162 0 2 4 162 0 3 4 162 0 4 4 162 0 6 4 162 0 8 4 162 0 10 4 162 0 16 4 162 0 25 4 162 0 28 4 162 0 29 4 162 0 30 4 162 0 31 4 162 0 32 4 162 0 33 4 162 0 35 4 162 0 36 4 162 0 37 4 162 0 38 4 162 0 39 4 162 0 40 4 162 0 41 4 162 0 42 4 162 0 43 1 233 0 44 4 162 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 162 0 143 4 162 0 149] 
#[0 4 166 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 170 0 2 4 170 0 3 4 170 0 4 4 170 0 6 4 170 0 8 4 170 0 10 4 170 0 16 4 170 0 25 4 170 0 28 4 170 0 29 4 170 0 30 4 170 0 31 4 170 0 32 4 170 0 33 4 170 0 35 4 170 0 36 4 170 0 37 4 170 0 38 4 170 0 39 4 170 0 40 4 170 0 41 4 170 0 42 4 170 0 43 4 170 0 44 4 170 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 170 0 143 2 1 0 146 4 170 0 149] 
#[1 4 174 0 2 4 174 0 3 4 174 0 4 4 174 0 6 4 174 0 8 4 174 0 10 4 174 0 16 4 174 0 25 4 174 0 28 4 174 0 29 4 174 0 30 4 174 0 31 4 174 0 32 4 174 0 33 4 174 0 35 4 174 0 36 4 174 0 37 4 174 0 38 4 174 0 39 4 174 0 40 4 174 0 41 4 174 0 42 4 174 0 43 4 174 0 44 4 174 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 174 0 143 4 174 0 149] 
#[0 4 178 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 4 182 0 2 4 182 0 3 4 182 0 4 4 182 0 6 4 182 0 8 4 182 0 10 4 182 0 16 4 182 0 25 4 182 0 28 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 4 182 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 182 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 4 182 0 143 2 1 0 146 4 182 0 149] 
#[1 4 186 0 2 4 186 0 3 4 186 0 4 4 186 0 6 4 186 0 8 4 186 0 10 4 186 0 16 4 186 0 25 4 186 0 28 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 4 186 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 186 0 49 2 5 0 63 2 9 0 64 2 13 0 65 4 186 0 143 4 186 0 149] 
#[0 4 190 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 4 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 143 0 144 0 145 0 146 0 147 0 148 0 149] 
#[0 4 198 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 10 93 0 16 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 2 125 0 59 2 129 0 60 2 133 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 137 0 117 2 165 0 118 10 97 0 119 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 4 202 0 7] 
#[0 4 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 4 210 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 144 0 145 0 147 0 148] 
#[0 4 214 0 1] 
#[0 4 218 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 5 193 0 16 5 197 0 25 10 101 0 100] 
#[1 5 165 0 8 5 169 0 25 10 105 0 96] 
#[0 4 222 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 4 226 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 4 230 0 2 0 4 0 10 0 25 0 143] 
#[1 4 234 0 2 4 234 0 3 4 234 0 4 4 234 0 6 4 234 0 8 4 234 0 9 4 234 0 10 4 234 0 16 4 234 0 25 4 234 0 28 5 229 0 29 5 233 0 30 5 237 0 31 5 241 0 32 4 234 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 6 29 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 234 0 143 2 1 0 146 4 234 0 149] 
#[0 4 238 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 4 242 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 4 246 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 4 250 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 4 254 0 2 0 4 0 10 0 25 0 143] 
#[0 5 2 0 28 0 30] 
#[0 5 6 0 28 0 30] 
#[1 2 33 0 28 10 109 0 89] 
#[0 5 10 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 5 14 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 2 33 0 28 10 113 0 89] 
#[0 5 18 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 5 22 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 14 0 1 5 121 0 2 0 14 0 5 0 14 0 7 0 14 0 11 0 14 0 12 0 14 0 13 0 14 0 14 0 14 0 15 0 14 0 17 0 14 0 18 0 14 0 19 0 14 0 20 0 14 0 21 0 14 0 22 5 125 0 25 0 14 0 26 0 14 0 27 0 14 0 28 0 14 0 34 0 14 0 43 0 14 0 45 0 14 0 46 0 14 0 47 0 14 0 48 0 14 0 51 0 14 0 52 0 14 0 53 0 14 0 54 10 117 0 93 0 14 0 144 0 14 0 145 0 14 0 147 0 14 0 148] 
#[0 5 26 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 5 30 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 5 34 0 3 0 6 0 8 0 16 0 25] 
#[0 5 38 0 8 0 25] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 2 125 0 59 2 129 0 60 2 133 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 10 121 0 117 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 5 42 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 5 46 0 6 0 16 0 25] 
#[0 5 50 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 5 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 2 62 0 2 2 62 0 3 2 62 0 4 2 62 0 6 2 62 0 8 2 62 0 9 2 62 0 10 2 62 0 16 2 62 0 25 2 62 0 28 5 229 0 29 2 62 0 30 2 62 0 31 2 62 0 32 2 62 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 2 62 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 62 0 143 2 1 0 146 2 62 0 149] 
#[0 2 66 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 2 74 0 2 2 74 0 3 2 74 0 4 2 74 0 6 2 74 0 8 2 74 0 9 2 74 0 10 2 74 0 16 2 74 0 25 2 74 0 28 2 74 0 29 2 74 0 30 2 74 0 31 2 74 0 32 2 74 0 33 2 74 0 35 2 74 0 36 2 74 0 37 2 74 0 38 2 74 0 39 2 74 0 40 2 74 0 41 2 74 0 42 2 74 0 43 2 74 0 44 2 74 0 49 2 74 0 50 1 245 0 63 1 253 0 65 2 74 0 143 2 74 0 146 2 74 0 149] 
#[0 2 78 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 125 0 59 7 117 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 6 2 94 0 8 2 94 0 9 2 94 0 10 2 94 0 16 2 94 0 25 2 94 0 28 2 94 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 2 94 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 2 94 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 94 0 143 2 1 0 146 2 94 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 10 129 0 59 7 129 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 2 97 0 123 2 101 0 126 7 133 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 6 2 106 0 8 2 106 0 9 2 106 0 10 2 106 0 16 2 106 0 25 2 106 0 28 5 229 0 29 5 233 0 30 5 237 0 31 5 241 0 32 2 106 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 2 106 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 106 0 143 2 1 0 146 2 106 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 133 0 59 7 145 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 122 0 2 2 122 0 3 2 122 0 4 2 122 0 6 2 122 0 8 2 122 0 9 2 122 0 10 2 122 0 16 2 122 0 25 2 122 0 28 5 229 0 29 2 122 0 30 5 237 0 31 5 241 0 32 2 122 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 2 122 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 122 0 143 2 1 0 146 2 122 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 137 0 59 7 157 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 134 0 2 2 134 0 3 2 134 0 4 2 134 0 6 2 134 0 8 2 134 0 9 2 134 0 10 2 134 0 16 2 134 0 25 2 134 0 28 5 229 0 29 2 134 0 30 2 134 0 31 5 241 0 32 2 134 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 2 134 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 134 0 143 2 1 0 146 2 134 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 141 0 59 7 169 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 146 0 2 2 146 0 3 2 146 0 4 2 146 0 6 2 146 0 8 2 146 0 9 2 146 0 10 2 146 0 16 2 146 0 25 2 146 0 28 5 229 0 29 2 146 0 30 2 146 0 31 2 146 0 32 2 146 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 2 146 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 146 0 143 2 1 0 146 2 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 145 0 59 7 181 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 158 0 2 2 158 0 3 2 158 0 4 2 158 0 6 2 158 0 8 2 158 0 9 2 158 0 10 2 158 0 16 2 158 0 25 2 158 0 28 5 229 0 29 2 158 0 30 2 158 0 31 2 158 0 32 2 158 0 33 2 158 0 35 2 158 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 2 158 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 158 0 143 2 1 0 146 2 158 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 149 0 59 7 193 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 170 0 2 2 170 0 3 2 170 0 4 2 170 0 6 2 170 0 8 2 170 0 9 2 170 0 10 2 170 0 16 2 170 0 25 2 170 0 28 5 229 0 29 2 170 0 30 2 170 0 31 2 170 0 32 2 170 0 33 2 170 0 35 2 170 0 36 2 170 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 2 170 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 170 0 143 2 1 0 146 2 170 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 153 0 59 7 205 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 182 0 2 2 182 0 3 2 182 0 4 2 182 0 6 2 182 0 8 2 182 0 9 2 182 0 10 2 182 0 16 2 182 0 25 2 182 0 28 2 182 0 29 2 182 0 30 2 182 0 31 2 182 0 32 2 182 0 33 2 182 0 35 2 182 0 36 2 182 0 37 2 182 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 2 182 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 182 0 143 2 1 0 146 2 182 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 157 0 59 7 217 0 61 7 221 0 66 7 225 0 67 7 229 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 194 0 2 2 194 0 3 2 194 0 4 2 194 0 6 2 194 0 8 2 194 0 9 2 194 0 10 2 194 0 16 2 194 0 25 2 194 0 28 2 194 0 29 2 194 0 30 2 194 0 31 2 194 0 32 2 194 0 33 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 38 2 194 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 2 194 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 194 0 143 2 1 0 146 2 194 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 161 0 59 7 241 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 218 0 2 2 218 0 3 2 218 0 4 2 218 0 6 2 218 0 8 2 218 0 9 2 218 0 10 2 218 0 16 2 218 0 25 2 218 0 28 2 218 0 29 2 218 0 30 2 218 0 31 2 218 0 32 2 218 0 33 2 218 0 35 2 218 0 36 2 218 0 37 2 218 0 38 2 218 0 39 2 218 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 2 218 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 218 0 143 2 1 0 146 2 218 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 165 0 59 7 253 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 230 0 2 2 230 0 3 2 230 0 4 2 230 0 6 2 230 0 8 2 230 0 9 2 230 0 10 2 230 0 16 2 230 0 25 2 230 0 28 2 230 0 29 2 230 0 30 2 230 0 31 2 230 0 32 2 230 0 33 2 230 0 35 2 230 0 36 2 230 0 37 2 230 0 38 2 230 0 39 2 230 0 40 2 230 0 41 6 17 0 42 6 21 0 43 6 25 0 44 2 230 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 230 0 143 2 1 0 146 2 230 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 169 0 59 8 9 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 242 0 2 2 242 0 3 2 242 0 4 2 242 0 6 2 242 0 8 2 242 0 9 2 242 0 10 2 242 0 16 2 242 0 25 2 242 0 28 2 242 0 29 2 242 0 30 2 242 0 31 2 242 0 32 2 242 0 33 2 242 0 35 2 242 0 36 2 242 0 37 2 242 0 38 2 242 0 39 2 242 0 40 2 242 0 41 6 17 0 42 6 21 0 43 6 25 0 44 2 242 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 242 0 143 2 1 0 146 2 242 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 173 0 59 8 21 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 254 0 2 2 254 0 3 2 254 0 4 2 254 0 6 2 254 0 8 2 254 0 9 2 254 0 10 2 254 0 16 2 254 0 25 2 254 0 28 2 254 0 29 2 254 0 30 2 254 0 31 2 254 0 32 2 254 0 33 2 254 0 35 2 254 0 36 2 254 0 37 2 254 0 38 2 254 0 39 2 254 0 40 2 254 0 41 2 254 0 42 2 254 0 43 6 25 0 44 2 254 0 49 1 241 0 50 1 245 0 63 1 253 0 65 2 254 0 143 2 1 0 146 2 254 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 177 0 59 8 33 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 10 0 2 3 10 0 3 3 10 0 4 3 10 0 6 3 10 0 8 3 10 0 9 3 10 0 10 3 10 0 16 3 10 0 25 3 10 0 28 3 10 0 29 3 10 0 30 3 10 0 31 3 10 0 32 3 10 0 33 3 10 0 35 3 10 0 36 3 10 0 37 3 10 0 38 3 10 0 39 3 10 0 40 3 10 0 41 3 10 0 42 3 10 0 43 3 10 0 44 3 10 0 49 1 241 0 50 1 245 0 63 1 253 0 65 3 10 0 143 2 1 0 146 3 10 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 193 0 34 0 85 0 43 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 181 0 59 8 45 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 22 0 2 3 22 0 3 3 22 0 4 3 22 0 6 3 22 0 8 3 22 0 9 3 22 0 10 3 22 0 16 3 22 0 25 3 22 0 28 5 229 0 29 5 233 0 30 5 237 0 31 5 241 0 32 3 22 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 3 22 0 49 1 241 0 50 1 245 0 63 1 253 0 65 3 22 0 143 2 1 0 146 3 22 0 149] 
#[0 5 58 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[0 5 62 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 143 0 146 0 149] 
#[1 0 13 0 4 3 174 0 10 0 69 0 25 10 185 0 81 3 174 0 143] 
#[0 5 66 0 10 0 143] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 8 117 0 10 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 33 0 28 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 41 0 58 2 45 0 59 0 133 0 60 2 49 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 8 121 0 88 2 61 0 89 2 65 0 92 2 69 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 73 0 110 2 77 0 111 2 81 0 112 2 85 0 113 2 89 0 114 2 93 0 116 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 5 70 0 143 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 5 74 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[0 10 189 0 10] 
#[0 5 78 0 10] 
#[0 5 82 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[0 5 86 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 143 0 144 0 145 0 147 0 148] 
#[0 5 90 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 6 105 0 59 6 109 0 60 10 193 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 10 197 0 120 2 145 0 123 10 201 0 124 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 5 94 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 5 121 0 2 5 125 0 25 2 37 0 53 10 205 0 93 8 177 0 123] 
#[0 5 98 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 5 102 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 3 213 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 3 217 0 58 3 221 0 59 0 133 0 60 0 137 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 3 229 0 58 3 233 0 59 0 133 0 60 0 137 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 3 241 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 3 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 10 209 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 213 0 59 4 13 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 10 217 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 221 0 59 4 29 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 10 225 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 229 0 59 4 49 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 10 233 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 10 237 0 59 10 21 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 3 145 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 6 161 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 145 0 123 2 149 0 124 10 25 0 125 1 1 0 129 1 5 0 130 1 9 0 131 10 29 0 133 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 10 241 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 245 0 59 4 81 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 10 249 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 10 253 0 59 4 97 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 11 1 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 5 0 59 4 113 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 11 9 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 13 0 59 4 129 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 11 17 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 21 0 59 4 145 0 60 0 141 0 62 4 161 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 11 25 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 29 0 59 4 173 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 11 33 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 37 0 59 4 189 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 11 41 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 45 0 59 4 205 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 11 49 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 53 0 59 4 221 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 11 57 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 61 0 59 4 237 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 11 65 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 69 0 59 4 253 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 254 0 29 3 254 0 30 3 254 0 31 3 254 0 32 3 254 0 35 3 254 0 36 3 254 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 3 254 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 3 73 0 29 3 77 0 30 3 81 0 31 3 85 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 4 10 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 3 73 0 29 4 26 0 30 3 81 0 31 3 85 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 4 26 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 3 73 0 29 4 38 0 30 4 38 0 31 3 85 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 4 38 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 3 73 0 29 4 50 0 30 4 50 0 31 4 50 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 4 50 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 3 73 0 29 4 62 0 30 4 62 0 31 4 62 0 32 4 62 0 35 4 62 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 4 62 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 3 73 0 29 4 74 0 30 4 74 0 31 4 74 0 32 4 74 0 35 4 74 0 36 4 74 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 4 74 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 4 86 0 29 4 86 0 30 4 86 0 31 4 86 0 32 4 86 0 35 4 86 0 36 4 86 0 37 4 86 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 4 86 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 4 98 0 29 4 98 0 30 4 98 0 31 4 98 0 32 4 98 0 35 4 98 0 36 4 98 0 37 4 98 0 38 4 98 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 4 98 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 4 122 0 29 4 122 0 30 4 122 0 31 4 122 0 32 4 122 0 35 4 122 0 36 4 122 0 37 4 122 0 38 4 122 0 39 4 122 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 4 122 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 4 134 0 29 4 134 0 30 4 134 0 31 4 134 0 32 4 134 0 35 4 134 0 36 4 134 0 37 4 134 0 38 4 134 0 39 4 134 0 40 4 134 0 41 3 117 0 42 3 121 0 43 3 125 0 44 4 134 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 4 146 0 29 4 146 0 30 4 146 0 31 4 146 0 32 4 146 0 35 4 146 0 36 4 146 0 37 4 146 0 38 4 146 0 39 4 146 0 40 4 146 0 41 3 117 0 42 3 121 0 43 3 125 0 44 4 146 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 4 158 0 29 4 158 0 30 4 158 0 31 4 158 0 32 4 158 0 35 4 158 0 36 4 158 0 37 4 158 0 38 4 158 0 39 4 158 0 40 4 158 0 41 4 158 0 42 4 158 0 43 3 125 0 44 4 158 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 4 170 0 29 4 170 0 30 4 170 0 31 4 170 0 32 4 170 0 35 4 170 0 36 4 170 0 37 4 170 0 38 4 170 0 39 4 170 0 40 4 170 0 41 4 170 0 42 4 170 0 43 4 170 0 44 4 170 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 3 73 0 29 3 77 0 30 3 81 0 31 3 85 0 32 3 89 0 35 3 93 0 36 3 97 0 37 3 101 0 38 3 105 0 39 3 109 0 40 3 113 0 41 3 117 0 42 3 121 0 43 3 125 0 44 4 182 0 49 1 241 0 50 1 245 0 63 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 11 73 0 59 11 77 0 60 7 157 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 3 145 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 3 149 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 145 0 123 2 149 0 124 11 81 0 125 1 1 0 129 1 5 0 130 1 9 0 131 11 85 0 133 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 134 0 3 2 134 0 16 2 134 0 25 1 181 0 29 2 134 0 30 2 134 0 31 1 193 0 32 7 53 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 134 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 7 57 0 132 2 1 0 146] 
#[1 2 138 0 3 2 138 0 16 2 138 0 25 1 181 0 29 2 138 0 30 2 138 0 31 1 193 0 32 7 53 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 2 138 0 49 2 5 0 63 2 9 0 64 2 13 0 65 7 65 0 132] 
#[0 5 106 0 16 0 25] 
#[0 5 110 0 3 0 16 0 25] 
#[0 5 114 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 144 0 145 0 147 0 148] 
#[1 5 118 0 3 5 118 0 16 5 118 0 25 9 149 0 29 9 153 0 30 9 157 0 31 11 89 0 32 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 9 205 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 5 122 0 3 5 122 0 16 5 122 0 25 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 1 237 0 49 2 5 0 63 2 9 0 64 2 13 0 65] 
#[1 0 9 0 1 0 190 0 3 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 190 0 16 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 190 0 25 0 73 0 26 0 77 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 193 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 85 0 43 0 190 0 44 0 89 0 45 2 197 0 46 0 97 0 47 0 101 0 48 0 190 0 49 0 190 0 50 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 201 0 59 2 205 0 61 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 2 213 0 101 2 217 0 102 0 233 0 103 2 221 0 104 1 105 0 105 0 245 0 106 0 249 0 107 1 109 0 108 2 73 0 110 2 225 0 111 2 229 0 112 2 85 0 113 2 89 0 114 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 0 190 0 146 1 29 0 147 1 33 0 148] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 11 73 0 59 11 77 0 60 7 157 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 3 145 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 3 149 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 145 0 123 2 149 0 124 11 93 0 125 1 1 0 129 1 5 0 130 1 9 0 131 11 97 0 133 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 5 126 0 16 0 25] 
#[0 5 130 0 3 0 16 0 25] 
#[1 5 134 0 3 5 134 0 16 5 134 0 25 9 149 0 29 9 153 0 30 9 157 0 31 11 89 0 32 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 9 205 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 5 138 0 3 5 138 0 16 5 138 0 25 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 1 237 0 49 2 5 0 63 2 9 0 64 2 13 0 65] 
#[1 9 149 0 29 9 153 0 30 9 157 0 31 11 89 0 32 7 53 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 9 205 0 49 1 241 0 50 1 245 0 63 1 249 0 64 7 57 0 132 2 1 0 146] 
#[1 1 181 0 29 1 185 0 30 1 189 0 31 1 193 0 32 7 53 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 1 237 0 49 2 5 0 63 2 9 0 64 2 13 0 65 7 65 0 132] 
#[0 5 142 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 5 146 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 5 193 0 16 5 197 0 25 11 101 0 100] 
#[0 5 150 0 3 0 16 0 25] 
#[0 5 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 5 193 0 16 5 197 0 25 11 105 0 100] 
#[0 5 158 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 5 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 5 166 0 2 0 4 0 10 0 25 0 143] 
#[0 5 170 0 2 0 4 0 10 0 25 0 143] 
#[0 5 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 5 178 0 2 0 3 0 6 0 8 0 16 0 25] 
#[1 3 254 0 2 3 254 0 3 3 254 0 4 3 254 0 6 3 254 0 8 3 254 0 9 3 254 0 10 3 254 0 16 3 254 0 25 3 254 0 28 3 254 0 29 3 254 0 30 3 254 0 31 3 254 0 32 3 254 0 33 3 254 0 35 3 254 0 36 3 254 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 3 254 0 49 1 241 0 50 1 245 0 63 1 253 0 65 3 254 0 143 2 1 0 146 3 254 0 149] 
#[1 4 10 0 2 4 10 0 3 4 10 0 4 4 10 0 6 4 10 0 8 4 10 0 9 4 10 0 10 4 10 0 16 4 10 0 25 4 10 0 28 5 229 0 29 5 233 0 30 5 237 0 31 5 241 0 32 4 10 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 4 10 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 10 0 143 2 1 0 146 4 10 0 149] 
#[1 4 26 0 2 4 26 0 3 4 26 0 4 4 26 0 6 4 26 0 8 4 26 0 9 4 26 0 10 4 26 0 16 4 26 0 25 4 26 0 28 5 229 0 29 4 26 0 30 5 237 0 31 5 241 0 32 4 26 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 4 26 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 26 0 143 2 1 0 146 4 26 0 149] 
#[1 4 38 0 2 4 38 0 3 4 38 0 4 4 38 0 6 4 38 0 8 4 38 0 9 4 38 0 10 4 38 0 16 4 38 0 25 4 38 0 28 5 229 0 29 4 38 0 30 4 38 0 31 5 241 0 32 4 38 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 4 38 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 38 0 143 2 1 0 146 4 38 0 149] 
#[1 4 50 0 2 4 50 0 3 4 50 0 4 4 50 0 6 4 50 0 8 4 50 0 9 4 50 0 10 4 50 0 16 4 50 0 25 4 50 0 28 5 229 0 29 4 50 0 30 4 50 0 31 4 50 0 32 4 50 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 4 50 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 50 0 143 2 1 0 146 4 50 0 149] 
#[1 4 62 0 2 4 62 0 3 4 62 0 4 4 62 0 6 4 62 0 8 4 62 0 9 4 62 0 10 4 62 0 16 4 62 0 25 4 62 0 28 5 229 0 29 4 62 0 30 4 62 0 31 4 62 0 32 4 62 0 33 4 62 0 35 4 62 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 4 62 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 62 0 143 2 1 0 146 4 62 0 149] 
#[1 4 74 0 2 4 74 0 3 4 74 0 4 4 74 0 6 4 74 0 8 4 74 0 9 4 74 0 10 4 74 0 16 4 74 0 25 4 74 0 28 5 229 0 29 4 74 0 30 4 74 0 31 4 74 0 32 4 74 0 33 4 74 0 35 4 74 0 36 4 74 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 4 74 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 74 0 143 2 1 0 146 4 74 0 149] 
#[1 4 86 0 2 4 86 0 3 4 86 0 4 4 86 0 6 4 86 0 8 4 86 0 9 4 86 0 10 4 86 0 16 4 86 0 25 4 86 0 28 4 86 0 29 4 86 0 30 4 86 0 31 4 86 0 32 4 86 0 33 4 86 0 35 4 86 0 36 4 86 0 37 4 86 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 4 86 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 86 0 143 2 1 0 146 4 86 0 149] 
#[1 4 98 0 2 4 98 0 3 4 98 0 4 4 98 0 6 4 98 0 8 4 98 0 9 4 98 0 10 4 98 0 16 4 98 0 25 4 98 0 28 4 98 0 29 4 98 0 30 4 98 0 31 4 98 0 32 4 98 0 33 4 98 0 35 4 98 0 36 4 98 0 37 4 98 0 38 4 98 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 4 98 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 98 0 143 2 1 0 146 4 98 0 149] 
#[1 4 122 0 2 4 122 0 3 4 122 0 4 4 122 0 6 4 122 0 8 4 122 0 9 4 122 0 10 4 122 0 16 4 122 0 25 4 122 0 28 4 122 0 29 4 122 0 30 4 122 0 31 4 122 0 32 4 122 0 33 4 122 0 35 4 122 0 36 4 122 0 37 4 122 0 38 4 122 0 39 4 122 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 4 122 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 122 0 143 2 1 0 146 4 122 0 149] 
#[1 4 134 0 2 4 134 0 3 4 134 0 4 4 134 0 6 4 134 0 8 4 134 0 9 4 134 0 10 4 134 0 16 4 134 0 25 4 134 0 28 4 134 0 29 4 134 0 30 4 134 0 31 4 134 0 32 4 134 0 33 4 134 0 35 4 134 0 36 4 134 0 37 4 134 0 38 4 134 0 39 4 134 0 40 4 134 0 41 6 17 0 42 6 21 0 43 6 25 0 44 4 134 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 134 0 143 2 1 0 146 4 134 0 149] 
#[1 4 146 0 2 4 146 0 3 4 146 0 4 4 146 0 6 4 146 0 8 4 146 0 9 4 146 0 10 4 146 0 16 4 146 0 25 4 146 0 28 4 146 0 29 4 146 0 30 4 146 0 31 4 146 0 32 4 146 0 33 4 146 0 35 4 146 0 36 4 146 0 37 4 146 0 38 4 146 0 39 4 146 0 40 4 146 0 41 6 17 0 42 6 21 0 43 6 25 0 44 4 146 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 146 0 143 2 1 0 146 4 146 0 149] 
#[1 4 158 0 2 4 158 0 3 4 158 0 4 4 158 0 6 4 158 0 8 4 158 0 9 4 158 0 10 4 158 0 16 4 158 0 25 4 158 0 28 4 158 0 29 4 158 0 30 4 158 0 31 4 158 0 32 4 158 0 33 4 158 0 35 4 158 0 36 4 158 0 37 4 158 0 38 4 158 0 39 4 158 0 40 4 158 0 41 4 158 0 42 4 158 0 43 6 25 0 44 4 158 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 158 0 143 2 1 0 146 4 158 0 149] 
#[1 4 170 0 2 4 170 0 3 4 170 0 4 4 170 0 6 4 170 0 8 4 170 0 9 4 170 0 10 4 170 0 16 4 170 0 25 4 170 0 28 4 170 0 29 4 170 0 30 4 170 0 31 4 170 0 32 4 170 0 33 4 170 0 35 4 170 0 36 4 170 0 37 4 170 0 38 4 170 0 39 4 170 0 40 4 170 0 41 4 170 0 42 4 170 0 43 4 170 0 44 4 170 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 170 0 143 2 1 0 146 4 170 0 149] 
#[1 4 182 0 2 4 182 0 3 4 182 0 4 4 182 0 6 4 182 0 8 4 182 0 9 4 182 0 10 4 182 0 16 4 182 0 25 4 182 0 28 5 229 0 29 5 233 0 30 5 237 0 31 5 241 0 32 4 182 0 33 5 245 0 35 5 249 0 36 5 253 0 37 6 1 0 38 6 5 0 39 6 9 0 40 6 13 0 41 6 17 0 42 6 21 0 43 6 25 0 44 4 182 0 49 1 241 0 50 1 245 0 63 1 253 0 65 4 182 0 143 2 1 0 146 4 182 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 5 70 0 10 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 2 33 0 28 0 81 0 34 0 85 0 43 0 89 0 45 0 93 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 2 41 0 58 2 45 0 59 0 133 0 60 2 49 0 61 0 141 0 62 0 145 0 66 0 149 0 67 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 8 121 0 88 2 61 0 89 2 65 0 92 2 69 0 94 0 213 0 95 0 217 0 97 0 221 0 99 0 225 0 101 0 229 0 102 0 233 0 103 0 237 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 73 0 110 2 77 0 111 2 81 0 112 2 85 0 113 2 89 0 114 2 93 0 116 2 97 0 123 2 101 0 126 2 105 0 127 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 5 70 0 143 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 5 182 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 143 0 149] 
#[0 3 198 0 2 0 3 0 25] 
#[0 5 186 0 2 0 3 0 25] 
#[1 5 121 0 2 11 109 0 3 5 125 0 25 11 113 0 93] 
#[0 5 190 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 117 0 59 7 113 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 94 0 3 2 94 0 16 2 94 0 25 2 94 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 2 94 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 2 94 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 121 0 59 7 125 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 106 0 3 2 106 0 16 2 106 0 25 9 149 0 29 9 153 0 30 9 157 0 31 11 89 0 32 2 106 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 2 106 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 125 0 59 7 141 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 122 0 3 2 122 0 16 2 122 0 25 9 149 0 29 2 122 0 30 9 157 0 31 11 89 0 32 2 122 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 2 122 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 2 37 0 53 0 113 0 54 11 129 0 59 11 77 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 3 145 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 6 161 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 2 145 0 123 2 149 0 124 11 81 0 125 1 1 0 129 1 5 0 130 1 9 0 131 11 85 0 133 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 9 149 0 29 2 134 0 30 2 134 0 31 11 89 0 32 7 53 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 2 134 0 49 1 241 0 50 1 245 0 63 1 249 0 64 7 57 0 132 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 133 0 59 7 165 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 146 0 3 2 146 0 16 2 146 0 25 9 149 0 29 2 146 0 30 2 146 0 31 2 146 0 32 2 146 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 2 146 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 137 0 59 7 177 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 158 0 3 2 158 0 16 2 158 0 25 9 149 0 29 2 158 0 30 2 158 0 31 2 158 0 32 2 158 0 33 2 158 0 35 2 158 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 2 158 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 141 0 59 7 189 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 170 0 3 2 170 0 16 2 170 0 25 9 149 0 29 2 170 0 30 2 170 0 31 2 170 0 32 2 170 0 33 2 170 0 35 2 170 0 36 2 170 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 2 170 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 145 0 59 7 201 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 182 0 3 2 182 0 16 2 182 0 25 2 182 0 29 2 182 0 30 2 182 0 31 2 182 0 32 2 182 0 33 2 182 0 35 2 182 0 36 2 182 0 37 2 182 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 2 182 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 149 0 59 7 213 0 60 0 141 0 62 7 229 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 194 0 3 2 194 0 16 2 194 0 25 2 194 0 29 2 194 0 30 2 194 0 31 2 194 0 32 2 194 0 33 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 38 2 194 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 2 194 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 153 0 59 7 237 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 218 0 3 2 218 0 16 2 218 0 25 2 218 0 29 2 218 0 30 2 218 0 31 2 218 0 32 2 218 0 33 2 218 0 35 2 218 0 36 2 218 0 37 2 218 0 38 2 218 0 39 2 218 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 2 218 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 157 0 59 7 249 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 230 0 3 2 230 0 16 2 230 0 25 2 230 0 29 2 230 0 30 2 230 0 31 2 230 0 32 2 230 0 33 2 230 0 35 2 230 0 36 2 230 0 37 2 230 0 38 2 230 0 39 2 230 0 40 2 230 0 41 9 193 0 42 9 197 0 43 9 201 0 44 2 230 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 161 0 59 8 5 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 242 0 3 2 242 0 16 2 242 0 25 2 242 0 29 2 242 0 30 2 242 0 31 2 242 0 32 2 242 0 33 2 242 0 35 2 242 0 36 2 242 0 37 2 242 0 38 2 242 0 39 2 242 0 40 2 242 0 41 9 193 0 42 9 197 0 43 9 201 0 44 2 242 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 165 0 59 8 17 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 254 0 3 2 254 0 16 2 254 0 25 2 254 0 29 2 254 0 30 2 254 0 31 2 254 0 32 2 254 0 33 2 254 0 35 2 254 0 36 2 254 0 37 2 254 0 38 2 254 0 39 2 254 0 40 2 254 0 41 2 254 0 42 2 254 0 43 9 201 0 44 2 254 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 169 0 59 8 29 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 10 0 3 3 10 0 16 3 10 0 25 3 10 0 29 3 10 0 30 3 10 0 31 3 10 0 32 3 10 0 33 3 10 0 35 3 10 0 36 3 10 0 37 3 10 0 38 3 10 0 39 3 10 0 40 3 10 0 41 3 10 0 42 3 10 0 43 3 10 0 44 3 10 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 173 0 59 8 41 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 3 22 0 3 3 22 0 16 3 22 0 25 9 149 0 29 9 153 0 30 9 157 0 31 11 89 0 32 3 22 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 3 22 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 4 38 0 3 4 38 0 16 4 38 0 25 1 181 0 29 4 38 0 30 4 38 0 31 1 193 0 32 7 53 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 38 0 49 1 241 0 50 1 245 0 63 1 249 0 64 1 253 0 65 7 57 0 132 2 1 0 146] 
#[1 4 42 0 3 4 42 0 16 4 42 0 25 1 181 0 29 4 42 0 30 4 42 0 31 1 193 0 32 7 53 0 33 1 197 0 35 1 201 0 36 1 205 0 37 1 209 0 38 1 213 0 39 1 217 0 40 1 221 0 41 1 225 0 42 1 229 0 43 1 233 0 44 4 42 0 49 2 5 0 63 2 9 0 64 2 13 0 65 7 65 0 132] 
#[0 5 194 0 16 0 25] 
#[0 5 198 0 3 0 16 0 25] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 11 177 0 25 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 181 0 59 4 65 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[0 5 202 0 16 0 25] 
#[0 5 206 0 3 0 16 0 25] 
#[0 5 210 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[0 5 214 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 5 121 0 2 5 125 0 25 2 37 0 53 11 185 0 93 8 177 0 123] 
#[0 5 218 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 3 254 0 3 3 254 0 16 3 254 0 25 3 254 0 29 3 254 0 30 3 254 0 31 3 254 0 32 3 254 0 33 3 254 0 35 3 254 0 36 3 254 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 3 254 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 4 10 0 3 4 10 0 16 4 10 0 25 9 149 0 29 9 153 0 30 9 157 0 31 11 89 0 32 4 10 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 4 10 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 4 26 0 3 4 26 0 16 4 26 0 25 9 149 0 29 4 26 0 30 9 157 0 31 11 89 0 32 4 26 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 4 26 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 9 149 0 29 4 38 0 30 4 38 0 31 11 89 0 32 7 53 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 4 38 0 49 1 241 0 50 1 245 0 63 1 249 0 64 7 57 0 132 2 1 0 146] 
#[1 4 50 0 3 4 50 0 16 4 50 0 25 9 149 0 29 4 50 0 30 4 50 0 31 4 50 0 32 4 50 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 4 50 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 4 62 0 3 4 62 0 16 4 62 0 25 9 149 0 29 4 62 0 30 4 62 0 31 4 62 0 32 4 62 0 33 4 62 0 35 4 62 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 4 62 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 4 74 0 3 4 74 0 16 4 74 0 25 9 149 0 29 4 74 0 30 4 74 0 31 4 74 0 32 4 74 0 33 4 74 0 35 4 74 0 36 4 74 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 4 74 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 4 86 0 3 4 86 0 16 4 86 0 25 4 86 0 29 4 86 0 30 4 86 0 31 4 86 0 32 4 86 0 33 4 86 0 35 4 86 0 36 4 86 0 37 4 86 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 4 86 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 4 98 0 3 4 98 0 16 4 98 0 25 4 98 0 29 4 98 0 30 4 98 0 31 4 98 0 32 4 98 0 33 4 98 0 35 4 98 0 36 4 98 0 37 4 98 0 38 4 98 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 4 98 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 4 122 0 3 4 122 0 16 4 122 0 25 4 122 0 29 4 122 0 30 4 122 0 31 4 122 0 32 4 122 0 33 4 122 0 35 4 122 0 36 4 122 0 37 4 122 0 38 4 122 0 39 4 122 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 4 122 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 4 134 0 3 4 134 0 16 4 134 0 25 4 134 0 29 4 134 0 30 4 134 0 31 4 134 0 32 4 134 0 33 4 134 0 35 4 134 0 36 4 134 0 37 4 134 0 38 4 134 0 39 4 134 0 40 4 134 0 41 9 193 0 42 9 197 0 43 9 201 0 44 4 134 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 4 146 0 3 4 146 0 16 4 146 0 25 4 146 0 29 4 146 0 30 4 146 0 31 4 146 0 32 4 146 0 33 4 146 0 35 4 146 0 36 4 146 0 37 4 146 0 38 4 146 0 39 4 146 0 40 4 146 0 41 9 193 0 42 9 197 0 43 9 201 0 44 4 146 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 4 158 0 3 4 158 0 16 4 158 0 25 4 158 0 29 4 158 0 30 4 158 0 31 4 158 0 32 4 158 0 33 4 158 0 35 4 158 0 36 4 158 0 37 4 158 0 38 4 158 0 39 4 158 0 40 4 158 0 41 4 158 0 42 4 158 0 43 9 201 0 44 4 158 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 4 170 0 3 4 170 0 16 4 170 0 25 4 170 0 29 4 170 0 30 4 170 0 31 4 170 0 32 4 170 0 33 4 170 0 35 4 170 0 36 4 170 0 37 4 170 0 38 4 170 0 39 4 170 0 40 4 170 0 41 4 170 0 42 4 170 0 43 4 170 0 44 4 170 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 4 182 0 3 4 182 0 16 4 182 0 25 9 149 0 29 9 153 0 30 9 157 0 31 11 89 0 32 4 182 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 4 182 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[1 0 9 0 1 0 17 0 5 0 21 0 7 0 25 0 11 0 29 0 12 0 33 0 13 0 37 0 14 0 41 0 15 0 45 0 17 0 49 0 18 0 53 0 19 0 57 0 20 0 61 0 21 0 65 0 22 0 73 0 26 0 77 0 27 6 141 0 34 0 85 0 43 0 89 0 45 6 145 0 46 0 97 0 47 0 101 0 48 0 105 0 51 0 109 0 52 0 113 0 54 11 189 0 59 7 153 0 60 0 141 0 62 0 153 0 68 0 157 0 69 0 161 0 70 0 165 0 71 0 169 0 72 0 173 0 73 0 177 0 74 0 181 0 75 0 185 0 76 0 189 0 78 0 193 0 79 0 201 0 82 0 205 0 92 0 209 0 94 0 213 0 95 0 217 0 97 0 221 0 99 6 157 0 101 10 45 0 102 0 233 0 103 6 165 0 104 0 241 0 105 0 245 0 106 0 249 0 107 0 253 0 108 1 1 0 129 1 5 0 130 1 9 0 131 1 13 0 138 1 17 0 142 1 21 0 144 1 25 0 145 1 29 0 147 1 33 0 148] 
#[1 2 134 0 3 2 134 0 16 2 134 0 25 9 149 0 29 2 134 0 30 2 134 0 31 11 89 0 32 2 134 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 2 134 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146] 
#[0 5 222 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 143 0 146 0 149] 
#[1 4 38 0 3 4 38 0 16 4 38 0 25 9 149 0 29 4 38 0 30 4 38 0 31 11 89 0 32 4 38 0 33 9 165 0 35 9 169 0 36 9 173 0 37 9 177 0 38 9 181 0 39 9 185 0 40 9 189 0 41 9 193 0 42 9 197 0 43 9 201 0 44 4 38 0 49 1 241 0 50 1 245 0 63 1 249 0 64 2 1 0 146]
	).
]

{ #category : #private }
ElixirParser >> actionsForCurrentToken [
	| lookahead ids id actions token position previousState |
	currentToken ids first = scanner eolId
		ifTrue: [ actions := super actionsForCurrentToken.
			actions isEmpty
				ifTrue: [ currentToken := nil.
					self getNextToken.
					^ self actionsForCurrentToken ].
			^ actions ].
	currentToken ids first = scanner map_opId
		ifTrue: [ token := currentToken.
			position := self position.
			currentToken := currentToken class
				value: '%'
				start: token startPosition
				ids: {scanner struct_opId}.
			previousState := currentState.
			currentState := self duplicateState.
			self position: position - 2.
			self parseCurrentToken.
			currentState := previousState.
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
