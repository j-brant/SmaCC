Class {
	#name : 'ElixirParser',
	#superclass : 'SmaCCParser',
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated-accessing' }
ElixirParser class >> cacheId [
	^'2026-05-16T00:35:06.908315+08:00'
]

{ #category : 'generated' }
ElixirParser class >> definitionComment [
"# Modified from https://github.com/elixir-lang/elixir/blob/master/lib/elixir/src/elixir_parser.yrl (f38895cebba0fa06f686e1dd9b74e5729aebcb45)
# Apache License 2.0: https://github.com/elixir-lang/elixir/blob/master/LICENSE


%id <identifier> <do_identifier> <block_identifier> <bracket_identifier> <paren_identifier> <op_identifier>
	<dot_call_op> <dot_op> <eol> <kw_identifier> <map_op> <struct_op> <semicolon> <alias> <string> <dual_op> <unary_op> <interpolatedStringStart> <interpolatedAtomStart> <interpolatedStringMid> <interpolatedStringEnd>;

<decimal>
	: [0-9]+ (_ [0-9]+)*
	;
<octal>
	:  0 o [0-7]+ (_ [0-7]+)*
	;
<hex>
	: 0 x [0-9a-fA-F]+
	;
<binary>
	: 0 b [01]+ (_ [01]+)*
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
	| [+\-*/!\^<>=&@%.]	#single-char operators (incl. @, %, .)
	| \+\+\+?	#++ or +++
	| \-\-\-?	#-- or ---
	| \.\.\.?	#.. or ...
	| \.\.//	#..//
	| \*\*	#**
	| //	#//
	| ->	#->
	| <<>>	#<<>>
	| %\{\}	#%{}
	| \{\}	#{}
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
<interpolatedStringStart>
	: "" ([^\\""\#] | \\.)* \#\{
	;
<interpolatedAtomStart>
	: \: "" ([^\\""\#] | \\.)* \#\{
	;
interpolatedString <interpolatedStringMid>
	: \} ([^\\""\#] | \\.)* \#\{
	;
interpolatedString <interpolatedStringEnd>
	: \} ([^\\""\#] | \\.)* ""
	;
<string>
	: "" ([^\\""\#] | \\. | \#[^""{])* \#? ""
	;
<string_heredoc_line>
	: [\t ]* ("" ([^""\r\n][^\r\n]*)? | """" ([^""\r\n][^\r\n]*)? | [^""\r\n\t ][^\r\n]*)? [\r\n]+
	;
<string_heredoc_endline>
	: [\t ]* """"""
	;
<string_heredoc>	
	: """""" [\t ]* (\r\n?|\n) <string_heredoc_line>* <string_heredoc_endline>
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
	| \*\*
	| //
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
	: \\ ([^xu] | (x [0-9a-fA-F]{2,2}) | (u [0-9a-fA-F]{4,4}) | (u \{[0-9a-fA-F]{1,6}\}))
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
	| <charlist_heredoc>
	;
<sigilModifier>
	: [a-zA-Z]*		# what are the potential values
	;
<sigil>
	: \~ [a-z] <sigilEscapedValue> <sigilModifier>
	| \~ [A-Z]+ <sigilValue> <sigilModifier>
	;
	
<identifier>
	: (_ | <isLowercase>) (<isLetter> | <isDigit> |  _)* [\?\!]?
	| \.\.\.
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
%left      ""{"";
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
%nonassoc dot_identifier;
%nonassoc unary_op_eol;
%prefix Elixir;
%suffix Node;
%root Program;
%start grammar;

<block_identifier>
	: <identifier> # Seems to be related to unsfae_atoms
	;
<op_identifier>
	: <dual_op>
	| <mult_op>
	| <comp_op>
	| <two_op>
	| <or_op>
	| <and_op>
	| <pipe_op>
	| <type_op>
	| <in_op>
	| <three_op>
	| <arrow_op>
	| <rel_op>
	| <match_op>
	| <assoc_op>
	| <unary_op>
	;
<dot_call_op>
	: \.\(
	;       ## @
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
	| sub_matched_expr 'expression' {{}}
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
	| <capture_op> 'op' <op_identifier> 'identifier' <mult_op> 'slash' <int> 'arity' {{}}
	| fn_eoe'fn' stab'stab' end_eoe'end' {{Lambda}}
	| open_paren 'leftParen' stab_eoe'stab' close_paren {{}}
	| open_paren 'leftParen' "";"" 'semi' stab_eoe'stab' close_paren {{}}
	| open_paren 'leftParen' "";"" 'semi' close_paren {{}}
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
	| interpolated_string
	| interpolated_atom
	| <sigil> 'sigil' {{Sigil}}
	| <atom> 'atom' {{Atom}}
#	| atom_safe 		# what are these?
#	| atom_unsafe 
	| dot_alias 
	| parens_call 
	;
interpolated_string
	: <interpolatedStringStart> 'part' expr 'expression' (<interpolatedStringMid> 'part' expr 'expression')* <interpolatedStringEnd> 'part' {{}}
	;

interpolated_atom
	: <interpolatedAtomStart> 'part' expr 'expression' (<interpolatedStringMid> 'part' expr 'expression')* <interpolatedStringEnd> 'part' {{}}
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
	: bracket_value 'value'{{}}
	| bracket_values "","" 'com' bracket_value 'value' {{}}
	;

bracket_arg 
#	: open_bracket kw close_bracket 
#	| open_bracket container_expr close_bracket 
#	| open_bracket container_expr "","" close_bracket 
	: open_bracket 'leftBracket' bracket_values'arg'? "","" 'com'? close_bracket {{}}	# modified
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
	| do_eoe'do' stab_eoe'stab' ""end"" 'end' {{}}
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
	 : stab 
	| stab eoe 'eoe'  {{Stab}}
	;

## Here, `element(1, Token)` is the stab operator,
## while `element(2, Token)` is the expression.
stab_expr 
	: expr 'expression'  {{}}
	| stab_op_eol_and_expr'expression' {{}}
	| empty_paren'args' stab_op_eol_and_expr'expression' {{}}
	| empty_paren 'args'<when_op>'when' expr 'guard' stab_op_eol_and_expr'expression' {{}}
	| call_args_no_parens_all'args' stab_op_eol_and_expr'expression' {{}}
	| stab_parens_many'args' stab_op_eol_and_expr'expression' {{}}
	| stab_parens_many'args' <when_op>'when' expr 'guard' stab_op_eol_and_expr'expression' {{}}
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
	: "")"" 'rightParen'
	;

empty_paren 
	: open_paren 'leftParen' "")"" 'close' {{}}
	;

open_bracket  
	: ""[""
	;
close_bracket 
	: ""]"" 'rightBracket'
	;

open_bit  
	: ""<<""
	;
close_bit 
	: "">>"" 'close'
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
	| matched_expr'expression' <dot_op> 'op' open_curly 'leftCurly' container_args'alias' close_curly {{}}
	;

dot_op_identifier 
	: <op_identifier> 'identifier' {{}}
	| matched_expr 'expression' <dot_op> 'op' <op_identifier> 'identifier' {{}}
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
	| open_paren 'leftParen' call_args_no_parens_kw'args' close_paren {{}}
	| open_paren 'leftParen' call_args_no_parens_many'args' close_paren {{}}
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
	| open_paren 'leftParen' kw_base'kw' close_paren {{}}
	| open_paren 'leftParen' kw_base'kw' "","" 'com' close_paren {{}}
	| open_paren 'leftParen' call_args_parens_base'args' close_paren {{}}
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
	| kw_base "","" 'com' <eol>? kw_eol 'key' container_expr 'value' {{}}
	;

kw 
	: kw_base 'kw' ("","" 'com' <eol>?)? {{}}
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
	| container_args_base 'container' "","" 'com' <eol>? {{}}
	| container_args_base 'container' "","" 'com' <eol>? kw 'kw' {{}}
	;

list 
	: open_bracket 'leftBracket' ""]"" 'rightBracket' {{}}
	| open_bracket 'leftBracket' list_args 'args' <eol>? close_bracket {{}}
	;

# Tuple

tuple 
	: open_curly 'leftCurly' ""}"" 'rightCurly' {{}}
	| open_curly 'leftCurly' container_args'elements' close_curly {{}}
	;

# Bitstrings

bit_string 
	: open_bit 'open' "">>"" 'close' {{}}
	| open_bit 'open' container_args 'args' close_bit {{}}
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
	| map_base_expr 'value' {{}}
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
	| assoc_base "","" 'com' <eol>? assoc_expr 'assoc'{{}}
	;

assoc 
	: assoc_base 'assoc'
	| assoc_base 'assoc' "","" 'com' <eol>? {{}}
	;

map_op 
	: <map_op> 'cen'
	;

map_close 
	: kw'kw' close_curly 
	| assoc'association' close_curly 
	| assoc_base'association' "","" 'com' <eol>? kw'kw' close_curly 
	;

map_args 
	: open_curly 'leftCurly' ""}"" 'rightCurly' {{}}
	| open_curly 'leftCurly' map_close {{}}
	| open_curly 'leftCurly' assoc_update'association' close_curly {{}}
	| open_curly 'leftCurly' assoc_update'association' "","" 'com' <eol>? close_curly {{}}
	| open_curly 'leftCurly' assoc_update'association' "","" 'com' <eol>? map_close {{}}
	| open_curly 'leftCurly' assoc_update_kw'association' close_curly {{}}
	;

sub_matched_expr
	: no_parens_zero_expr 'expression' {{}}
	| access_expr 'expression' {{}}
	| access_expr 'expression' <kw_identifier> 'identifier' {{}}
	;

map_base_expr
	: sub_matched_expr 'expression' {{}}
	| <at_op> 'op' map_base_expr {{}}
	| unary_op_eol map_base_expr {{}}
	;

map
	: map_op map_args'args' {{}}
	| <map_op> 'cen' {{}}
	| <struct_op> 'cen' map_base_expr 'struct' ? map_args'args' {{}}			# added ?
	;"
]

{ #category : 'file types' }
ElixirParser class >> fileExtensions [
	^ #('.exs' '.ex')
]

{ #category : 'class initialization' }
ElixirParser class >> initialize [
	self maxParallelParses: 500
]

{ #category : 'samples' }
ElixirParser class >> parityTestsSource [
	"Example expressions from https://github.com/elixir-lang/elixir/blob/main/lib/elixir/test/elixir/kernel/parser_test.exs"
	 
	<gtExample>
	^ #(
		'..'
		'...'
		'&../0'
		'&.../0'
		'if .. do end'
		'f(!: :ok)'
		'f @: :ok'
		'%{+foo, bar => bat, ...baz}'
		'f -var'
		'f -(var)'
		'f +-var'
		'f - var'
		'f --var'
		'(f ->var)'
		'f(+: :ok)'
		'f +: :ok'
		'1..2//3'
		'(1..2)//3'
		'foo do end..bar do end//baz do end'
		'1..foo do end//bar bat'
		'~r/foo/'
	)
]

{ #category : 'generated' }
ElixirParser class >> reduceTable [
^#(
	#(64 0 #reduceActionForgrammar6: 6630406 false) 
	#(106 1 #liftFirstValue: 17162241 false) 
	#(111 1 #liftFirstValue: 17352705 false) 
	#(109 1 #liftFirstValue: 17285121 false) 
	#(78 1 #reduceActionForaccess_expr15: 13332495 false) 
	#(96 1 #reduceActionForfn_eoe1: 15935489 false) 
	#(78 1 #reduceActionForaccess_expr16: 13332496 false) 
	#(78 1 #reduceActionForaccess_expr14: 13332494 false) 
	#(113 1 #liftFirstValue: 17406977 false) 
	#(87 1 #reduceActionFornumber1: 14690305 false) 
	#(78 1 #reduceActionForaccess_expr25: 13332505 false) 
	#(83 1 #reduceActionForbin_string1: 14494721 false) 
	#(85 1 #reduceActionForbin_heredoc1: 14583809 false) 
	#(84 1 #reduceActionForlist_string1: 14537729 false) 
	#(86 1 #reduceActionForlist_heredoc1: 14636033 false) 
	#(95 1 #liftFirstValue: 15900673 false) 
	#(157 1 #reduceActionFormap2: 23950338 false) 
	#(152 1 #liftFirstValue: 23065601 false) 
	#(115 1 #liftFirstValue: 17481730 false) 
	#(115 1 #liftFirstValue: 17481729 false) 
	#(87 1 #reduceActionFornumber2: 14690306 false) 
	#(87 1 #reduceActionFornumber3: 14690307 false) 
	#(78 1 #reduceActionForaccess_expr24: 13332504 false) 
	#(116 1 #reduceActionFordot_identifier1: 17554433 false) 
	#(117 1 #reduceActionFordot_alias1: 17683457 false) 
	#(95 1 #liftFirstValue: 15900674 false) 
	#(118 1 #reduceActionFordot_op_identifier1: 17981441 false) 
	#(64 1 #reduceActionForgrammar2: 6630402 false) 
	#(65 1 #reduceActionForexpr_list1: 6878209 false) 
	#(66 1 #liftFirstValue: 6967297 false) 
	#(66 1 #liftFirstValue: 6967299 false) 
	#(66 1 #liftFirstValue: 6967298 false) 
	#(68 1 #reduceActionForunmatched_expr8: 8896520 false) 
	#(69 1 #reduceActionForno_parens_expr5: 9297925 false) 
	#(69 1 #reduceActionForno_parens_expr5: 9297926 false) 
	#(67 1 #reduceActionFormatched_expr5: 8638469 false) 
	#(155 1 #reduceActionForsub_matched_expr1: 23660545 false) 
	#(155 1 #reduceActionForsub_matched_expr1: 23660546 false) 
	#(78 1 #liftFirstValue: 13332502 false) 
	#(78 1 #liftFirstValue: 13332503 false) 
	#(78 1 #liftFirstValue: 13332497 false) 
	#(78 1 #liftFirstValue: 13332498 false) 
	#(78 1 #liftFirstValue: 13332499 false) 
	#(78 1 #liftFirstValue: 13332500 false) 
	#(78 1 #liftFirstValue: 13332490 false) 
	#(78 1 #liftFirstValue: 13332507 false) 
	#(78 1 #liftFirstValue: 13332482 false) 
	#(78 1 #liftFirstValue: 13332481 false) 
	#(64 1 #reduceActionForgrammar1: 6630401 false) 
	#(78 1 #liftFirstValue: 13332489 false) 
	#(77 1 #liftFirstValue: 13012994 false) 
	#(78 1 #liftFirstValue: 13332506 false) 
	#(77 1 #liftFirstValue: 13012993 false) 
	#(122 1 #reduceActionFordot_call_identifier1: 18558977 false) 
	#(78 1 #liftFirstValue: 13332491 false) 
	#(78 1 #liftFirstValue: 13332493 false) 
	#(78 1 #liftFirstValue: 13332501 false) 
	#(67 1 #reduceActionFormatched_expr5: 8638470 false) 
	#(78 1 #liftFirstValue: 13332492 false) 
	#(120 1 #reduceActionFordot_bracket_identifier1: 18259969 false) 
	#(119 1 #reduceActionFordot_do_identifier1: 18121729 false) 
	#(121 1 #reduceActionFordot_paren_identifier1: 18412545 false) 
	#(96 2 #reduceActionForfn_eoe2: 15935490 false) 
	#(81 0 #reduceActionFor__interpolatedStringMid___part__expr__expression___1: 14233601 false) 
	#(157 2 #reduceActionFormap3: 23950339 false) 
	#(156 1 #reduceActionFormap_base_expr1: 23821313 false) 
	#(78 2 #reduceActionForaccess_expr3: 13332483 false) 
	#(68 2 #reduceActionForunmatched_expr7: 8896519 false) 
	#(67 2 #reduceActionFormatched_expr4: 8638468 false) 
	#(69 2 #reduceActionFormatched_expr4: 9297924 false) 
	#(68 2 #reduceActionForunmatched_expr7: 8896518 false) 
	#(67 2 #reduceActionFormatched_expr4: 8638467 false) 
	#(69 2 #reduceActionFormatched_expr4: 9297923 false) 
	#(64 2 #reduceActionForgrammar4: 6630404 false) 
	#(122 2 #reduceActionFordot_call_identifier2: 18558978 false) 
	#(67 2 #reduceActionFormatched_expr1: 8638465 false) 
	#(68 2 #reduceActionForunmatched_expr1: 8896513 false) 
	#(69 2 #reduceActionForno_parens_expr1: 9297921 false) 
	#(68 2 #reduceActionFormatched_expr1: 8896514 false) 
	#(68 2 #reduceActionFormatched_expr1: 8896515 false) 
	#(68 2 #reduceActionFormatched_expr1: 8896516 false) 
	#(155 2 #reduceActionForsub_matched_expr3: 23660547 false) 
	#(92 2 #reduceActionForbracket_expr2: 15390722 false) 
	#(64 2 #reduceActionForgrammar3: 6630403 false) 
	#(103 1 #reduceActionForstab_op_eol_and_expr1: 16924673 false) 
	#(137 1 #liftFirstValue: 21037057 false) 
	#(102 1 #reduceActionForstab_expr1: 16455681 false) 
	#(126 1 #liftFirstValue: 19099650 false) 
	#(127 1 #liftFirstValue: 19174401 false) 
	#(100 1 #reduceActionForstab1: 16225281 false) 
	#(102 1 #reduceActionForstab_expr1: 16455682 false) 
	#(128 1 #reduceActionForcall_args_no_parens_many2: 19225602 false) 
	#(125 1 #liftFirstValue: 18980865 false) 
	#(125 1 #liftFirstValue: 18980866 false) 
	#(125 1 #liftFirstValue: 18980867 false) 
	#(141 1 #reduceActionForcall_args_no_parens_kw1: 21459969 false) 
	#(126 1 #liftFirstValue: 19099649 false) 
	#(108 2 #reduceActionForempty_paren1: 17223681 false) 
	#(101 1 #liftFirstValue: 16302081 false) 
	#(143 2 #reduceActionForlist1: 21811201 false) 
	#(131 1 #liftFirstValue: 19889153 false) 
	#(131 1 #liftFirstValue: 19889154 false) 
	#(131 1 #liftFirstValue: 19889155 false) 
	#(132 1 #reduceActionForcontainer_args_base1: 19965953 false) 
	#(142 1 #reduceActionForlist_args2: 21615618 false) 
	#(139 1 #reduceActionForkw1: 21292033 false) 
	#(142 1 #reduceActionForlist_args1: 21615617 false) 
	#(145 2 #reduceActionForbit_string1: 22105089 false) 
	#(133 1 #reduceActionForcontainer_args1: 20094977 false) 
	#(144 2 #reduceActionFortuple1: 21960705 false) 
	#(68 2 #reduceActionForunmatched_expr7: 8896517 false) 
	#(67 2 #reduceActionFormatched_expr4: 8638466 false) 
	#(69 2 #reduceActionFormatched_expr4: 9297922 false) 
	#(76 2 #reduceActionForno_parens_one_expr2: 12853250 false) 
	#(74 2 #reduceActionForno_parens_one_ambig_expr2: 12480514 false) 
	#(129 1 #reduceActionForcall_args_no_parens_many_strict1: 19475457 false) 
	#(75 2 #reduceActionForno_parens_many_expr2: 12662786 false) 
	#(76 2 #reduceActionForno_parens_one_expr2: 12853249 false) 
	#(74 2 #reduceActionForno_parens_one_ambig_expr2: 12480513 false) 
	#(75 2 #reduceActionForno_parens_many_expr2: 12662785 false) 
	#(97 1 #reduceActionFordo_eoe1: 15994881 false) 
	#(70 2 #reduceActionForblock_expr3: 9585667 false) 
	#(92 2 #reduceActionForbracket_expr2: 15390721 false) 
	#(88 2 #reduceActionForparens_call1: 14801921 false) 
	#(157 2 #reduceActionFormap3: 23950337 false) 
	#(156 2 #reduceActionFormatched_expr4: 23821314 false) 
	#(154 2 #reduceActionFormap_args1: 23236609 false) 
	#(150 1 #reduceActionForassoc_base1: 22887425 false) 
	#(151 1 #liftFirstValue: 22986753 false) 
	#(154 2 #reduceActionFormap_args2: 23236610 false) 
	#(147 1 #reduceActionForassoc_expr5: 22274053 false) 
	#(156 2 #reduceActionFormatched_expr4: 23821315 false) 
	#(157 3 #reduceActionFormap4: 23950340 false) 
	#(93 3 #reduceActionForbracket_at_expr2: 15520770 false) 
	#(93 3 #reduceActionForbracket_at_expr2: 15520769 false) 
	#(65 3 #reduceActionForexpr_list2: 6878210 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034190 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792973 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584525 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034187 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792971 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584523 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584528 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034186 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792970 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584522 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034188 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792972 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584524 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034177 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792961 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584513 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034183 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792967 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584519 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034182 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792966 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584518 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034189 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792974 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584526 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034191 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792975 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584527 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034184 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792968 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584520 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034181 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792965 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584517 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034180 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792964 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584516 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034178 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792962 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584514 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034179 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792963 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584515 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10034185 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10792969 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11584521 false) 
	#(116 3 #reduceActionFordot_identifier2: 17554434 false) 
	#(117 3 #reduceActionFordot_alias2: 17683458 false) 
	#(118 3 #reduceActionFordot_op_identifier2: 17981442 false) 
	#(120 3 #reduceActionFordot_bracket_identifier2: 18259970 false) 
	#(119 3 #reduceActionFordot_do_identifier2: 18121730 false) 
	#(121 3 #reduceActionFordot_paren_identifier2: 18412546 false) 
	#(110 1 #liftFirstValue: 17310721 false) 
	#(90 1 #reduceActionForbracket_values1: 15029249 false) 
	#(91 2 #reduceActionForbracket_arg1: 15142913 false) 
	#(89 1 #liftFirstValue: 14973954 false) 
	#(89 1 #liftFirstValue: 14973953 false) 
	#(64 3 #reduceActionForgrammar5: 6630405 false) 
	#(103 2 #reduceActionForstab_op_eol_and_expr2: 16924674 false) 
	#(98 1 #reduceActionForend_eoe1: 16054273 false) 
	#(78 3 #reduceActionForaccess_expr5: 13332485 false) 
	#(102 2 #reduceActionForstab_expr3: 16455683 false) 
	#(102 2 #reduceActionForstab_expr3: 16455685 false) 
	#(102 2 #reduceActionForstab_expr3: 16455686 false) 
	#(140 2 #reduceActionForcall_args_no_parens_kw_expr1: 21342209 false) 
	#(140 2 #reduceActionForcall_args_no_parens_kw_expr1: 21342210 false) 
	#(107 1 #liftFirstValue: 17185793 false) 
	#(78 3 #reduceActionForaccess_expr8: 13332488 false) 
	#(101 2 #reduceActionForstab_eoe2: 16302082 false) 
	#(78 3 #reduceActionForaccess_expr6: 13332486 false) 
	#(142 2 #reduceActionForlist_args3: 21615619 false) 
	#(138 2 #reduceActionForkw_base1: 21164033 false) 
	#(139 2 #reduceActionForkw2: 21292034 false) 
	#(143 3 #reduceActionForlist2: 21811202 false) 
	#(133 2 #reduceActionForcontainer_args2: 20094978 false) 
	#(112 1 #liftFirstValue: 17375233 false) 
	#(145 3 #reduceActionForbit_string2: 22105090 false) 
	#(114 1 #liftFirstValue: 17430529 false) 
	#(144 3 #reduceActionFortuple2: 21960706 false) 
	#(70 3 #reduceActionForblock_expr5: 9585669 false) 
	#(70 3 #reduceActionForblock_expr5: 9585668 false) 
	#(97 2 #reduceActionFordo_eoe2: 15994882 false) 
	#(94 2 #reduceActionFordo_block1: 15691777 false) 
	#(99 1 #reduceActionForblock_eoe1: 16118785 false) 
	#(104 1 #reduceActionForblock_item2: 16988162 false) 
	#(105 1 #reduceActionForblock_list1: 17071105 false) 
	#(136 2 #reduceActionForcall_args_parens1: 20457473 false) 
	#(134 1 #liftFirstValue: 20239361 false) 
	#(134 1 #liftFirstValue: 20239362 false) 
	#(134 1 #liftFirstValue: 20239363 false) 
	#(135 1 #reduceActionForcall_args_parens_base1: 20323329 false) 
	#(70 3 #reduceActionForblock_expr5: 9585665 false) 
	#(88 3 #reduceActionForparens_call2: 14801922 false) 
	#(79 4 #reduceActionForinterpolated_string1: 14157825 false) 
	#(81 2 #reduceActionFor__interpolatedStringMid___part__expr__expression___2: 14233602 false) 
	#(82 4 #reduceActionForinterpolated_atom1: 14327809 false) 
	#(146 1 #liftFirstValue: 22236161 false) 
	#(153 2 #reduceActionFormap_close1: 23096321 false) 
	#(154 3 #reduceActionFormap_args3: 23236611 false) 
	#(154 3 #reduceActionFormap_args3: 23236616 false) 
	#(151 2 #reduceActionForassoc2: 22986754 false) 
	#(153 2 #reduceActionFormap_close2: 23096322 false) 
	#(78 4 #reduceActionForaccess_expr4: 13332484 false) 
	#(117 4 #reduceActionFordot_alias3: 17683459 false) 
	#(91 3 #reduceActionForbracket_arg2: 15142914 false) 
	#(91 3 #reduceActionForbracket_arg3: 15142915 false) 
	#(123 1 #liftFirstValue: 18718721 false) 
	#(123 1 #liftFirstValue: 18718722 false) 
	#(124 3 #reduceActionForcall_args_no_parens_comma_expr1: 18786305 false) 
	#(128 3 #reduceActionForcall_args_no_parens_many1: 19225601 false) 
	#(98 2 #reduceActionForend_eoe2: 16054274 false) 
	#(100 3 #reduceActionForstab2: 16225282 false) 
	#(130 3 #reduceActionForstab_parens_many2: 19702786 false) 
	#(130 3 #reduceActionForstab_parens_many2: 19702785 false) 
	#(124 3 #reduceActionForcall_args_no_parens_comma_expr2: 18786306 false) 
	#(128 3 #reduceActionForcall_args_no_parens_many1: 19225603 false) 
	#(141 3 #reduceActionForcall_args_no_parens_kw2: 21459970 false) 
	#(78 4 #reduceActionForaccess_expr7: 13332487 false) 
	#(142 3 #reduceActionForlist_args3: 21615620 false) 
	#(132 3 #reduceActionForcontainer_args_base2: 19965954 false) 
	#(142 3 #reduceActionForlist_args5: 21615621 false) 
	#(139 3 #reduceActionForkw2: 21292035 false) 
	#(143 4 #reduceActionForlist3: 21811203 false) 
	#(133 3 #reduceActionForcontainer_args3: 20094979 false) 
	#(129 3 #reduceActionForcall_args_no_parens_many_strict3: 19475459 false) 
	#(129 3 #reduceActionForcall_args_no_parens_many_strict3: 19475458 false) 
	#(99 2 #reduceActionForblock_eoe2: 16118786 false) 
	#(104 2 #reduceActionForblock_item1: 16988161 false) 
	#(94 3 #reduceActionFordo_block2: 15691778 false) 
	#(105 2 #reduceActionForblock_list2: 17071106 false) 
	#(94 3 #reduceActionFordo_block3: 15691779 false) 
	#(136 3 #reduceActionForcall_args_parens2: 20457474 false) 
	#(136 3 #reduceActionForcall_args_parens2: 20457477 false) 
	#(136 3 #reduceActionForcall_args_parens3: 20457475 false) 
	#(70 4 #reduceActionForblock_expr2: 9585666 false) 
	#(80 2 #reduceActionFor__interpolatedStringMid___part__expr__expression__1: 14233601 false) 
	#(149 3 #reduceActionForassoc_update_kw1: 22744065 false) 
	#(148 3 #reduceActionForassoc_update1: 22572033 false) 
	#(147 3 #reduceActionForassoc_expr1: 22274049 false) 
	#(147 3 #reduceActionForassoc_expr1: 22274051 false) 
	#(149 3 #reduceActionForassoc_update_kw1: 22744066 false) 
	#(148 3 #reduceActionForassoc_update2: 22572034 false) 
	#(147 3 #reduceActionForassoc_expr1: 22274052 false) 
	#(147 3 #reduceActionForassoc_expr1: 22274050 false) 
	#(154 4 #reduceActionFormap_args4: 23236612 false) 
	#(154 4 #reduceActionFormap_args6: 23236614 false) 
	#(151 3 #reduceActionForassoc2: 22986755 false) 
	#(150 3 #reduceActionForassoc_base2: 22887426 false) 
	#(117 5 #reduceActionFordot_alias4: 17683460 false) 
	#(90 3 #reduceActionForbracket_values2: 15029250 false) 
	#(91 4 #reduceActionForbracket_arg4: 15142916 false) 
	#(102 4 #reduceActionForstab_expr4: 16455684 false) 
	#(102 4 #reduceActionForstab_expr4: 16455687 false) 
	#(142 4 #reduceActionForlist_args6: 21615622 false) 
	#(138 4 #reduceActionForkw_base2: 21164034 false) 
	#(94 4 #reduceActionFordo_block4: 15691780 false) 
	#(135 3 #reduceActionForcall_args_parens_base2: 20323330 false) 
	#(136 4 #reduceActionForcall_args_parens4: 20457476 false) 
	#(154 5 #reduceActionFormap_args5: 23236613 false) 
	#(154 5 #reduceActionFormap_args7: 23236615 false) 
	#(150 4 #reduceActionForassoc_base3: 22887427 false) 
	#(153 4 #reduceActionFormap_close3: 23096323 false) 
	#(138 5 #reduceActionForkw_base3: 21164035 false) 
	#(136 5 #reduceActionForcall_args_parens6: 20457478 false) 
	#(153 5 #reduceActionFormap_close4: 23096324 false) 
	#(136 6 #reduceActionForcall_args_parens7: 20457479 false)
	).
]

{ #category : 'examples' }
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
     select: w' '@type startup_options ::
          {:node_id, String.t()}
          | {:strategy, :one_per_key}
          | {:schema, schema()}' '@spec start_link(list(startup_options())) :: Supervisor.on_start()
  def start_link(args) do
    node_id = Keyword.fetch!(args, :node_id)
    name = Registry.via(node_id, __MODULE__)

    child_specs = schema_to_child_specs(node_id, args)

    with {:ok, pid} <-
           DynamicSupervisor.start_link(__MODULE__, [node_id: node_id],
             name: name
           ),
         :ok <- start_initial_children(pid, child_specs) do
      {:ok, pid}
    end
  end' '@spec child_spec(String.t(), atom(), map()) :: Supervisor.child_spec()
  defp child_spec(node_id, shard_id, initial_kv) do
    %{
      id: shard_id,
      start:
        {Shard, :start_link,
         [[node_id: node_id, id: shard_id, initial_kv: initial_kv]]}
    }
  end')
		collect: [ :each | self parse: each ]
]

{ #category : 'samples' }
ElixirParser class >> samplesSource [
	"Same inputs as #samples, returned as raw source strings (for tests/benches)."

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
     select: w' '@type startup_options ::
          {:node_id, String.t()}
          | {:strategy, :one_per_key}
          | {:schema, schema()}' '@spec start_link(list(startup_options())) :: Supervisor.on_start()
  def start_link(args) do
    node_id = Keyword.fetch!(args, :node_id)
    name = Registry.via(node_id, __MODULE__)

    child_specs = schema_to_child_specs(node_id, args)

    with {:ok, pid} <-
           DynamicSupervisor.start_link(__MODULE__, [node_id: node_id],
             name: name
           ),
         :ok <- start_initial_children(pid, child_specs) do
      {:ok, pid}
    end
  end' '@spec child_spec(String.t(), atom(), map()) :: Supervisor.child_spec()
  defp child_spec(node_id, shard_id, initial_kv) do
    %{
      id: shard_id,
      start:
        {Shard, :start_link,
         [[node_id: node_id, id: shard_id, initial_kv: initial_kv]]}
    }
  end')
]

{ #category : 'generated-accessing' }
ElixirParser class >> scannerClass [
	^ElixirScanner
]

{ #category : 'generated' }
ElixirParser class >> startingStateForgrammar [
	^ 1
]

{ #category : 'generated' }
ElixirParser class >> symbolNames [
	^ #('"("' '")"' '","' '";"' '"<<"' '">>"' '"["' '"]"' '"do"' '"end"' '"false"' '"fn"' '"nil"' '"true"' '"{"' '"}"' '<int>' '<atom>' '<interpolatedStringStart>' '<interpolatedAtomStart>' '<interpolatedStringMid>' '<interpolatedStringEnd>' '<string>' '<string_heredoc>' '<charlist>' '<charlist_heredoc>' '<whitespace>' '<comment>' '<eol>' '<struct_op>' '<map_op>' '<stab_op>' '<comp_op>' '<when_op>' '<type_op>' '<pipe_op>' '<assoc_op>' '<capture_op>' '<match_op>' '<or_op>' '<and_op>' '<rel_op>' '<arrow_op>' '<in_op>' '<three_op>' '<two_op>' '<dual_op>' '<mult_op>' '<unary_op>' '<at_op>' '<flt>' '<char>' '<in_match_op>' '<dot_op>' '<sigil>' '<identifier>' '<kw_identifier>' '<alias>' '<semicolon>' '<block_identifier>' '<op_identifier>' '<dot_call_op>' 'B e g i n' 'grammar' 'expr_list' 'expr' 'matched_expr' 'unmatched_expr' 'no_parens_expr' 'block_expr' 'matched_op_expr' 'unmatched_op_expr' 'no_parens_op_expr' 'no_parens_one_ambig_expr' 'no_parens_many_expr' 'no_parens_one_expr' 'no_parens_zero_expr' 'access_expr' 'interpolated_string' '(<interpolatedStringMid> ''part'' expr ''expression'')' '(<interpolatedStringMid> ''part'' expr ''expression'')*' 'interpolated_atom' 'bin_string' 'list_string' 'bin_heredoc' 'list_heredoc' 'number' 'parens_call' 'bracket_value' 'bracket_values' 'bracket_arg' 'bracket_expr' 'bracket_at_expr' 'do_block' 'eoe' 'fn_eoe' 'do_eoe' 'end_eoe' 'block_eoe' 'stab' 'stab_eoe' 'stab_expr' 'stab_op_eol_and_expr' 'block_item' 'block_list' 'open_paren' 'close_paren' 'empty_paren' 'open_bracket' 'close_bracket' 'open_bit' 'close_bit' 'open_curly' 'close_curly' 'unary_op_eol' 'dot_identifier' 'dot_alias' 'dot_op_identifier' 'dot_do_identifier' 'dot_bracket_identifier' 'dot_paren_identifier' 'dot_call_identifier' 'call_args_no_parens_expr' 'call_args_no_parens_comma_expr' 'call_args_no_parens_all' 'call_args_no_parens_one' 'call_args_no_parens_ambig' 'call_args_no_parens_many' 'call_args_no_parens_many_strict' 'stab_parens_many' 'container_expr' 'container_args_base' 'container_args' 'call_args_parens_expr' 'call_args_parens_base' 'call_args_parens' 'kw_eol' 'kw_base' 'kw' 'call_args_no_parens_kw_expr' 'call_args_no_parens_kw' 'list_args' 'list' 'tuple' 'bit_string' 'assoc_op_eol' 'assoc_expr' 'assoc_update' 'assoc_update_kw' 'assoc_base' 'assoc' 'map_op' 'map_close' 'map_args' 'sub_matched_expr' 'map_base_expr' 'map' '<bracket_identifier>' '<do_identifier>' '<paren_identifier>' 'E O F' 'error')
]

{ #category : 'generated' }
ElixirParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirGrammarNode #ElixirGrammarNode #ElixirExprListNode #ElixirProgramNode #ElixirMatchedExprNode #ElixirUnmatchedExprNode #ElixirNoParensExprNode #ElixirBlockExprNode #ElixirMatchedOpExprNode #ElixirUnmatchedOpExprNode #ElixirNoParensOpExprNode #ElixirNoParensOneAmbigExprNode #ElixirNoParensManyExprNode #ElixirNoParensOneExprNode #ElixirProgramNode #ElixirProgramNode #ElixirInterpolatedStringNode #OrderedCollection #OrderedCollection #ElixirInterpolatedAtomNode #ElixirBinStringNode #ElixirListStringNode #ElixirBinHeredocNode #ElixirListHeredocNode #ElixirNumberNode #ElixirParensCallNode #ElixirProgramNode #ElixirBracketValuesNode #ElixirBracketArgNode #ElixirBracketExprNode #ElixirBracketAtExprNode #ElixirDoBlockNode #SmaCCToken #ElixirFnEoeNode #ElixirDoEoeNode #ElixirEndEoeNode #ElixirBlockEoeNode #ElixirStabNode #ElixirStabNode #ElixirStabExprNode #ElixirStabOpEolAndExprNode #ElixirBlockItemNode #ElixirBlockListNode #SmaCCToken #SmaCCToken #ElixirEmptyParenNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirDotIdentifierNode #ElixirDotAliasNode #ElixirDotOpIdentifierNode #ElixirDotDoIdentifierNode #ElixirDotBracketIdentifierNode #ElixirDotParenIdentifierNode #ElixirDotCallIdentifierNode #ElixirProgramNode #ElixirCallArgsNoParensCommaExprNode #ElixirProgramNode #ElixirProgramNode #ElixirNoParensExprNode #ElixirCallArgsNoParensManyNode #ElixirCallArgsNoParensManyStrictNode #ElixirStabParensManyNode #ElixirProgramNode #ElixirContainerArgsBaseNode #ElixirContainerArgsNode #ElixirProgramNode #ElixirCallArgsParensBaseNode #ElixirCallArgsParensNode #SmaCCToken #ElixirKwBaseNode #ElixirKwNode #ElixirCallArgsNoParensKwExprNode #ElixirCallArgsNoParensKwNode #ElixirListArgsNode #ElixirListNode #ElixirTupleNode #ElixirBitStringNode #SmaCCToken #ElixirAssocExprNode #ElixirAssocUpdateNode #ElixirAssocUpdateKwNode #ElixirAssocBaseNode #ElixirProgramNode #SmaCCToken #OrderedCollection #ElixirMapArgsNode #ElixirSubMatchedExprNode #ElixirMapBaseExprNode #ElixirMapNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
ElixirParser class >> transitionTable [
^#(
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 217 0 29 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 217 0 59 0 125 0 61 0 129 0 64 0 133 0 65 0 137 0 66 0 141 0 67 0 145 0 68 0 137 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 217 0 95 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160 0 6 0 161] 
#[0 0 10 0 1 0 2 0 4 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 32 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 61 0 158 0 159 0 160] 
#[0 0 14 0 1 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 58 0 61 0 158 0 159 0 160] 
#[0 0 18 0 1 0 3 0 5 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 61 0 158 0 159 0 160] 
#[0 0 22 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 26 0 1 0 26 0 5 0 26 0 7 0 26 0 11 0 26 0 12 0 26 0 13 0 26 0 14 0 26 0 15 0 26 0 17 0 26 0 18 0 26 0 19 0 26 0 20 0 26 0 23 0 26 0 24 0 26 0 25 0 26 0 26 1 57 0 29 0 26 0 30 0 26 0 31 0 26 0 32 0 26 0 38 0 26 0 47 0 26 0 49 0 26 0 50 0 26 0 51 0 26 0 52 0 26 0 55 0 26 0 56 0 26 0 57 0 26 0 58 1 57 0 59 0 26 0 61 1 57 0 95 0 26 0 158 0 26 0 159 0 26 0 160] 
#[0 0 30 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 34 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 38 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 61 0 158 0 159 0 160] 
#[0 0 42 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 46 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 1 61 0 66 0 141 0 67 0 145 0 68 1 61 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 1 65 0 66 0 141 0 67 0 145 0 68 1 65 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 0 50 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 54 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 58 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 62 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 66 0 1 0 2 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 32 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 60 0 61 0 158 0 159 0 160 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 1 81 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 1 85 0 47 1 85 0 49 1 73 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 1 77 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 1 81 0 113 1 85 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 105 0 154 1 109 0 155 1 113 0 156 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 70 0 2 0 70 0 3 0 70 0 6 0 70 0 7 0 70 0 8 0 70 0 9 0 70 0 10 0 74 0 15 0 70 0 16 0 70 0 21 0 70 0 22 0 70 0 29 0 70 0 32 0 70 0 33 0 70 0 34 0 70 0 35 0 70 0 36 0 70 0 37 0 70 0 39 0 70 0 40 0 70 0 41 0 70 0 42 0 70 0 43 0 70 0 44 0 70 0 45 0 70 0 46 0 70 0 47 0 70 0 48 0 70 0 53 0 70 0 54 0 70 0 57 0 70 0 59 0 70 0 60 0 70 0 62 0 70 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 1 117 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 1 121 0 61 1 125 0 66 1 129 0 67 0 145 0 68 1 133 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 0 78 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 58 0 61 0 158 0 159 0 160] 
#[0 0 82 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 58 0 61 0 158 0 159 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 1 137 0 66 1 141 0 67 0 145 0 68 1 145 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 1 149 0 78 1 149 0 79 1 149 0 82 1 149 0 83 1 149 0 84 1 149 0 85 1 149 0 86 1 149 0 87 1 149 0 88 1 149 0 92 1 149 0 93 0 221 0 96 0 225 0 106 1 149 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 1 149 0 117 1 1 0 118 1 5 0 119 1 153 0 120 1 13 0 121 1 17 0 122 1 149 0 143 1 149 0 144 1 149 0 145 1 33 0 152 1 37 0 155 1 149 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 0 86 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 90 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 94 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 98 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 158 0 159 0 160 0 161] 
#[0 0 102 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 106 0 1 0 2 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 32 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 60 0 61 0 158 0 159 0 160 0 161] 
#[0 0 110 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 61 0 158 0 159 0 160] 
#[0 0 0 0 161] 
#[1 1 157 0 29 1 157 0 59 1 157 0 95 0 114 0 161] 
#[0 0 118 0 29 0 59 0 161] 
#[1 0 122 0 2 0 122 0 10 0 122 0 21 0 122 0 22 0 122 0 29 0 122 0 32 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 221 0 54 0 122 0 59 0 122 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 0 122 0 161] 
#[1 0 126 0 2 0 126 0 3 0 126 0 6 0 126 0 8 0 126 0 10 0 126 0 16 0 126 0 21 0 126 0 22 0 126 0 29 0 126 0 32 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 0 126 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 0 126 0 59 0 126 0 60 1 241 0 71 1 245 0 72 1 249 0 73 0 126 0 161] 
#[0 0 130 0 2 0 3 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[0 0 134 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[0 0 138 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 0 142 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 0 146 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 0 150 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 0 154 0 2 0 154 0 3 0 154 0 6 2 5 0 7 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 15 0 154 0 16 0 154 0 21 0 154 0 22 0 154 0 29 0 154 0 32 0 154 0 33 0 154 0 34 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 39 0 154 0 40 0 154 0 41 0 154 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 154 0 47 0 154 0 48 0 154 0 53 0 154 0 54 1 253 0 57 0 154 0 59 0 154 0 60 0 154 0 62 2 1 0 91 2 5 0 109 0 154 0 161] 
#[0 0 158 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 162 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 166 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 170 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 174 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 178 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 182 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 186 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 190 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 194 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 2 9 0 65 0 137 0 66 0 141 0 67 0 145 0 68 0 137 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160 0 198 0 161] 
#[1 2 45 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 13 0 32 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 2 21 0 66 2 25 0 67 0 145 0 68 2 29 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 2 33 0 100 2 37 0 102 2 41 0 103 2 45 0 106 2 49 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 53 0 124 2 57 0 125 2 57 0 126 2 57 0 127 2 57 0 128 2 73 0 130 2 77 0 137 2 81 0 140 2 57 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 2 45 0 1 2 89 0 2 2 93 0 4 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 13 0 32 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 2 21 0 66 2 25 0 67 0 145 0 68 2 29 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 2 97 0 100 2 101 0 101 2 37 0 102 2 41 0 103 2 45 0 106 2 49 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 53 0 124 2 57 0 125 2 57 0 126 2 57 0 127 2 57 0 128 2 73 0 130 2 77 0 137 2 81 0 140 2 57 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 0 202 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 2 105 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 2 109 0 67 2 113 0 68 2 121 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 121 0 131 2 125 0 132 2 129 0 137 2 133 0 138 2 137 0 139 2 141 0 142 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 2 145 0 6 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 2 109 0 67 2 113 0 68 2 121 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 121 0 131 2 149 0 132 2 153 0 133 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 2 157 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 2 109 0 67 2 113 0 68 2 121 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 121 0 131 2 149 0 132 2 161 0 133 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 2 165 0 66 2 169 0 67 0 145 0 68 2 173 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 2 193 0 1 0 206 0 2 0 206 0 3 0 237 0 5 0 206 0 6 0 233 0 7 0 206 0 8 0 206 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 206 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 206 0 21 0 206 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 206 0 29 0 77 0 30 0 81 0 31 0 206 0 32 0 206 0 33 0 206 0 34 0 206 0 35 0 206 0 36 0 206 0 37 2 177 0 38 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 42 0 206 0 43 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 48 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 206 0 53 0 206 0 54 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 206 0 59 0 206 0 60 0 125 0 61 0 206 0 62 2 185 0 67 2 217 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 2 193 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 2 53 0 124 2 209 0 125 2 213 0 126 2 217 0 127 2 221 0 128 2 225 0 129 2 77 0 137 2 81 0 140 2 213 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160 0 206 0 161] 
#[0 0 210 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 2 193 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 2 185 0 67 2 237 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 2 193 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 2 53 0 124 2 229 0 125 2 233 0 126 2 237 0 127 2 221 0 128 2 241 0 129 2 77 0 137 2 81 0 140 2 233 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 214 0 2 0 214 0 3 0 214 0 6 0 214 0 8 2 245 0 9 0 214 0 10 0 214 0 16 0 214 0 21 0 214 0 22 0 214 0 29 0 214 0 32 0 214 0 33 0 214 0 34 0 214 0 35 0 214 0 36 0 214 0 37 0 214 0 39 0 214 0 40 0 214 0 41 0 214 0 42 0 214 0 43 0 214 0 44 0 214 0 45 0 214 0 46 0 214 0 47 0 214 0 48 0 214 0 53 0 214 0 54 0 214 0 59 0 214 0 60 0 214 0 62 2 249 0 94 2 253 0 97 0 214 0 161] 
#[1 2 5 0 7 3 1 0 91 2 5 0 109] 
#[0 0 218 0 1] 
#[1 3 5 0 1 3 5 0 106 3 9 0 136] 
#[0 0 222 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 226 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 230 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 3 13 0 15 3 13 0 113 3 17 0 154] 
#[0 0 234 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 0 238 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 0 242 0 7] 
#[0 0 246 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 0 250 0 1] 
#[0 0 254 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 32 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 61 0 158 0 159 0 160] 
#[1 1 2 0 21 1 2 0 22 3 21 0 81] 
#[1 1 2 0 21 1 2 0 22 3 25 0 81] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 1 117 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 1 121 0 61 3 33 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 1 85 0 47 1 85 0 49 1 73 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 3 41 0 67 0 165 0 76 0 169 0 77 1 149 0 78 1 149 0 79 1 149 0 82 1 149 0 83 1 149 0 84 1 149 0 85 1 149 0 86 1 149 0 87 1 149 0 88 1 149 0 92 1 149 0 93 0 221 0 96 0 225 0 106 1 149 0 108 0 233 0 109 0 237 0 111 0 241 0 113 1 85 0 115 1 89 0 116 1 149 0 117 1 93 0 118 0 169 0 119 1 153 0 120 1 13 0 121 1 101 0 122 1 149 0 143 1 149 0 144 1 149 0 145 1 33 0 152 1 109 0 155 3 45 0 156 1 149 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 3 49 0 33 3 53 0 34 3 57 0 35 3 61 0 36 3 65 0 39 3 69 0 40 3 73 0 41 3 77 0 42 3 81 0 43 3 85 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 3 105 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 3 109 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 3 125 0 47 3 125 0 49 3 113 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 3 117 0 67 3 121 0 68 2 121 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 125 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 121 0 131 2 149 0 132 2 161 0 133 2 129 0 137 2 133 0 138 3 129 0 139 0 173 0 143 0 173 0 144 0 173 0 145 3 133 0 147 3 137 0 148 3 141 0 149 3 145 0 150 3 149 0 151 1 33 0 152 3 153 0 153 1 109 0 155 3 157 0 156 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 1 85 0 47 1 85 0 49 1 73 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 3 161 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 1 85 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 109 0 155 3 165 0 156 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 206 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 206 0 33 0 206 0 34 0 206 0 35 0 206 0 36 1 69 0 38 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 42 0 206 0 43 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 48 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 206 0 53 0 206 0 54 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 0 206 0 62 3 169 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 3 173 0 126 2 77 0 137 2 81 0 140 3 173 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 3 169 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 3 177 0 126 2 77 0 137 2 81 0 140 3 177 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 0 214 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 3 5 0 1 3 5 0 106 3 181 0 136] 
#[0 1 6 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 234 0 3 1 10 0 15 0 234 0 16 0 234 0 33 0 234 0 34 0 234 0 35 0 234 0 36 0 234 0 37 0 234 0 39 0 234 0 40 0 234 0 41 0 234 0 42 0 234 0 43 0 234 0 44 0 234 0 45 0 234 0 46 0 234 0 47 0 234 0 48 0 234 0 53 0 234 0 54 0 234 0 62] 
#[1 3 13 0 15 3 13 0 113 3 185 0 154] 
#[0 1 14 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 110 0 1 0 110 0 5 0 110 0 7 0 110 0 11 0 110 0 12 0 110 0 13 0 110 0 14 0 110 0 15 0 110 0 17 0 110 0 18 0 110 0 19 0 110 0 20 0 110 0 23 0 110 0 24 0 110 0 25 0 110 0 26 0 110 0 30 0 110 0 31 0 110 0 38 0 110 0 47 3 189 0 48 0 110 0 49 0 110 0 50 0 110 0 51 0 110 0 52 0 110 0 55 0 110 0 56 0 110 0 57 0 110 0 58 0 110 0 61 0 110 0 158 0 110 0 159 0 110 0 160] 
#[0 1 18 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[1 1 22 0 2 1 22 0 3 1 22 0 6 1 22 0 8 1 22 0 10 1 22 0 16 1 22 0 21 1 22 0 22 1 22 0 29 1 22 0 32 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 1 22 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 221 0 54 1 22 0 59 1 22 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 1 22 0 161] 
#[0 1 26 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[0 1 30 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[1 1 34 0 2 1 34 0 3 1 34 0 6 1 34 0 8 1 34 0 10 1 34 0 16 1 34 0 21 1 34 0 22 1 34 0 29 1 34 0 32 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 1 34 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 34 0 54 1 34 0 59 1 34 0 60 1 34 0 62 1 229 0 71 1 233 0 72 1 237 0 73 1 34 0 161] 
#[0 1 38 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[1 0 154 0 2 0 154 0 3 0 154 0 6 2 5 0 7 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 15 0 154 0 16 0 154 0 21 0 154 0 22 0 154 0 29 0 154 0 32 0 154 0 33 0 154 0 34 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 39 0 154 0 40 0 154 0 41 0 154 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 154 0 47 0 154 0 48 0 154 0 53 0 154 0 54 1 253 0 57 0 154 0 59 0 154 0 60 0 154 0 62 3 193 0 91 2 5 0 109 0 154 0 161] 
#[1 2 5 0 7 3 197 0 91 2 5 0 109] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 3 201 0 66 0 141 0 67 0 145 0 68 3 201 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160 1 42 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 3 205 0 67 3 209 0 68 3 213 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 3 217 0 67 3 221 0 68 3 225 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 77 0 137 2 81 0 140 3 229 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 3 233 0 67 3 237 0 68 3 241 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 3 245 0 67 3 249 0 68 3 253 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 4 1 0 67 4 5 0 68 4 9 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 4 13 0 67 4 17 0 68 4 21 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 4 25 0 67 4 29 0 68 4 33 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 4 37 0 67 4 41 0 68 4 45 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 4 49 0 67 4 53 0 68 4 57 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 4 61 0 67 4 65 0 68 4 69 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 4 73 0 67 4 77 0 68 4 81 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 4 85 0 67 4 89 0 68 4 93 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 4 97 0 67 4 101 0 68 4 105 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 4 109 0 67 4 113 0 68 4 117 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 4 121 0 67 4 125 0 68 4 129 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 4 145 0 15 4 133 0 56 4 137 0 58 4 141 0 61 4 145 0 113 4 149 0 158 4 153 0 159 4 157 0 160] 
#[0 1 46 0 1] 
#[0 1 50 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 1 54 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[0 1 58 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 1 62 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[0 1 66 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[0 1 70 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[0 1 74 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 1 78 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 4 161 0 3 0 237 0 5 0 233 0 7 4 177 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 2 109 0 67 2 113 0 68 4 169 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 4 169 0 89 4 173 0 90 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 4 177 0 110 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 4 169 0 131 2 129 0 137 4 185 0 138 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 4 189 0 29 4 189 0 59 4 189 0 95 1 82 0 161] 
#[1 0 225 0 1 1 86 0 2 0 237 0 5 0 233 0 7 1 86 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 1 86 0 29 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 1 86 0 59 1 86 0 60 0 125 0 61 4 193 0 66 0 141 0 67 0 145 0 68 4 193 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 1 90 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 58 0 61 0 158 0 159 0 160] 
#[0 1 94 0 2 0 10 0 29 0 59 0 60] 
#[1 0 122 0 2 4 197 0 3 0 122 0 10 0 122 0 29 1 98 0 32 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 221 0 54 0 122 0 59 0 122 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73] 
#[1 0 130 0 2 0 130 0 10 0 130 0 29 1 102 0 32 0 130 0 59 0 130 0 60] 
#[1 4 201 0 10 4 205 0 29 4 205 0 59 4 205 0 95 4 209 0 98] 
#[0 1 106 0 2 0 10 0 29 0 59 0 60] 
#[0 1 110 0 2 0 10 0 29 0 59 0 60] 
#[1 2 45 0 1 2 89 0 2 2 93 0 4 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 13 0 32 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 2 21 0 66 2 25 0 67 0 145 0 68 2 29 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 2 97 0 100 2 101 0 101 2 37 0 102 2 41 0 103 2 45 0 106 2 49 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 53 0 124 2 57 0 125 2 57 0 126 2 57 0 127 4 213 0 128 2 73 0 130 2 77 0 137 2 81 0 140 4 217 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 202 0 2 0 202 0 3 0 202 0 7 0 202 0 10 0 202 0 29 2 13 0 32 0 202 0 33 4 221 0 34 0 202 0 35 0 202 0 36 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 42 0 202 0 43 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 47 0 202 0 48 0 202 0 53 0 202 0 54 0 202 0 57 0 202 0 59 0 202 0 60 0 202 0 62 4 225 0 103] 
#[1 1 114 0 2 4 229 0 3 1 114 0 6 1 114 0 8 1 114 0 9 1 114 0 10 1 114 0 16 1 114 0 21 1 114 0 22 1 114 0 29 1 114 0 32 1 114 0 33 1 114 0 34 1 114 0 35 1 114 0 36 1 114 0 37 1 114 0 39 1 114 0 40 1 114 0 41 1 114 0 42 1 114 0 43 1 114 0 44 1 114 0 45 1 114 0 46 1 114 0 47 1 114 0 48 1 114 0 53 1 114 0 54 1 114 0 59 1 114 0 60 1 114 0 62 1 114 0 161] 
#[1 2 13 0 32 4 233 0 103] 
#[0 1 118 0 32] 
#[0 1 122 0 9 0 32] 
#[0 1 126 0 9 0 32] 
#[1 2 13 0 32 4 237 0 34 4 241 0 103] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 4 245 0 67 4 249 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 1 130 0 2 4 253 0 3 1 130 0 6 1 130 0 8 1 130 0 9 1 130 0 10 1 130 0 16 1 130 0 21 1 130 0 22 1 130 0 29 1 130 0 32 1 130 0 33 1 130 0 34 1 130 0 35 1 130 0 36 1 130 0 37 1 130 0 39 1 130 0 40 1 130 0 41 1 130 0 42 1 130 0 43 1 130 0 44 1 130 0 45 1 130 0 46 1 130 0 47 1 130 0 48 1 130 0 53 1 130 0 54 1 130 0 59 1 130 0 60 1 130 0 62 1 130 0 161] 
#[0 1 134 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 1 138 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 2 45 0 1 5 9 0 2 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 13 0 32 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 2 21 0 66 2 25 0 67 0 145 0 68 2 29 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 2 97 0 100 5 5 0 101 2 37 0 102 2 41 0 103 2 45 0 106 5 9 0 107 2 49 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 53 0 124 2 57 0 125 2 57 0 126 2 57 0 127 2 57 0 128 2 73 0 130 2 77 0 137 2 81 0 140 2 57 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 1 142 0 2 1 142 0 10 5 13 0 29 5 13 0 59 1 142 0 60 5 13 0 95] 
#[0 5 17 0 2 0 107] 
#[0 1 146 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 1 150 0 2 1 150 0 3 1 150 0 6 1 150 0 8 1 150 0 16 1 150 0 29 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73] 
#[1 1 154 0 2 1 154 0 3 1 154 0 6 1 154 0 8 1 154 0 16 1 154 0 29 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 241 0 71 1 245 0 72 1 249 0 73] 
#[0 1 158 0 2 0 3 0 6 0 8 0 16 0 29] 
#[0 1 162 0 3 0 6 0 8 0 16 0 29] 
#[1 5 21 0 3 1 166 0 8 1 166 0 29] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 2 109 0 67 2 113 0 68 5 25 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 5 25 0 131 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 5 29 0 3 1 170 0 6 1 170 0 8 1 170 0 16 1 170 0 29] 
#[0 1 174 0 8 0 29] 
#[1 5 37 0 8 5 33 0 29 5 37 0 110] 
#[0 1 178 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 5 41 0 3 1 182 0 6 1 182 0 16] 
#[0 5 49 0 6 0 112] 
#[0 1 186 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 5 57 0 16 0 114] 
#[0 1 190 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[1 1 194 0 2 1 194 0 3 1 194 0 6 1 194 0 8 1 194 0 10 1 194 0 16 1 194 0 21 1 194 0 22 1 194 0 29 1 194 0 32 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 1 194 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 194 0 54 1 194 0 59 1 194 0 60 1 194 0 62 1 229 0 71 1 233 0 72 1 237 0 73 1 194 0 161] 
#[0 1 198 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 1 117 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 1 121 0 61 5 61 0 67 5 65 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 5 69 0 67 5 73 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 1 149 0 78 1 149 0 79 1 149 0 82 1 149 0 83 1 149 0 84 1 149 0 85 1 149 0 86 1 149 0 87 1 149 0 88 1 149 0 92 1 149 0 93 0 221 0 96 0 225 0 106 1 149 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 1 149 0 117 2 205 0 118 0 169 0 119 1 153 0 120 1 13 0 121 1 101 0 122 1 149 0 143 1 149 0 144 1 149 0 145 1 33 0 152 1 37 0 155 1 149 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 1 98 0 2 4 197 0 3 1 98 0 6 1 98 0 8 1 98 0 9 1 98 0 10 1 98 0 16 1 98 0 21 1 98 0 22 1 98 0 29 1 98 0 32 5 77 0 33 5 81 0 34 5 85 0 35 5 89 0 36 1 98 0 37 5 93 0 39 5 97 0 40 5 101 0 41 5 105 0 42 5 109 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 5 133 0 53 1 221 0 54 1 98 0 59 1 98 0 60 1 225 0 62 1 229 0 71 1 237 0 73 1 98 0 161] 
#[0 1 102 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 45 0 1 2 89 0 2 2 93 0 4 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 13 0 32 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 2 21 0 66 2 25 0 67 0 145 0 68 2 29 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 2 97 0 100 2 101 0 101 2 37 0 102 2 41 0 103 2 45 0 106 2 49 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 53 0 124 2 57 0 125 2 57 0 126 2 57 0 127 5 137 0 128 2 73 0 130 2 77 0 137 2 81 0 140 5 141 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 5 145 0 67 5 149 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 2 193 0 1 0 206 0 2 0 206 0 3 0 237 0 5 0 206 0 6 0 233 0 7 0 206 0 8 0 206 0 9 0 206 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 206 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 206 0 21 0 206 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 206 0 29 0 77 0 30 0 81 0 31 0 206 0 32 0 206 0 33 0 206 0 34 0 206 0 35 0 206 0 36 0 206 0 37 2 177 0 38 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 42 0 206 0 43 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 48 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 206 0 53 0 206 0 54 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 206 0 59 0 206 0 60 0 125 0 61 0 206 0 62 2 185 0 67 5 153 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 2 193 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 2 53 0 124 3 173 0 126 5 153 0 127 5 157 0 128 2 225 0 129 2 77 0 137 2 81 0 140 3 173 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160 0 206 0 161] 
#[1 2 193 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 2 185 0 67 5 161 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 2 193 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 2 53 0 124 3 177 0 126 5 161 0 127 5 157 0 128 2 241 0 129 2 77 0 137 2 81 0 140 3 177 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 2 245 0 9 5 165 0 94 2 253 0 97] 
#[1 1 202 0 2 1 202 0 3 1 202 0 6 1 202 0 8 1 118 0 9 1 202 0 10 1 202 0 16 1 202 0 21 1 202 0 22 1 202 0 29 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 46 1 202 0 47 1 202 0 48 1 202 0 53 1 202 0 54 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 161] 
#[1 1 206 0 2 1 206 0 3 1 206 0 6 1 206 0 8 1 122 0 9 1 206 0 10 1 206 0 16 1 206 0 21 1 206 0 22 1 206 0 29 1 206 0 32 1 206 0 33 1 206 0 34 1 206 0 35 1 206 0 36 1 206 0 37 1 206 0 39 1 206 0 40 1 206 0 41 1 206 0 42 1 206 0 43 1 206 0 44 1 206 0 45 1 206 0 46 1 206 0 47 1 206 0 48 1 206 0 53 1 206 0 59 1 206 0 60 1 206 0 161] 
#[1 1 210 0 2 1 210 0 3 1 210 0 6 1 210 0 8 1 126 0 9 1 210 0 10 1 210 0 16 1 210 0 21 1 210 0 22 1 210 0 29 1 210 0 32 1 210 0 33 1 210 0 34 1 210 0 35 1 210 0 36 1 210 0 37 1 210 0 39 1 210 0 40 1 210 0 41 1 210 0 42 1 210 0 43 1 210 0 44 1 210 0 45 1 210 0 46 1 210 0 47 1 210 0 48 1 210 0 53 1 210 0 59 1 210 0 60 1 210 0 161] 
#[0 1 214 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 245 0 9 5 169 0 94 2 253 0 97] 
#[1 1 218 0 2 1 218 0 3 1 218 0 6 1 218 0 8 1 118 0 9 1 218 0 10 1 218 0 16 1 218 0 21 1 218 0 22 1 218 0 29 1 218 0 32 1 218 0 33 1 218 0 34 1 218 0 35 1 218 0 36 1 218 0 37 1 218 0 39 1 218 0 40 1 218 0 41 1 218 0 42 1 218 0 43 1 218 0 44 1 218 0 45 1 218 0 46 1 218 0 47 1 218 0 48 1 218 0 53 1 218 0 54 1 218 0 59 1 218 0 60 1 218 0 62 1 218 0 161] 
#[1 1 222 0 2 1 222 0 3 1 222 0 6 1 222 0 8 1 122 0 9 1 222 0 10 1 222 0 16 1 222 0 21 1 222 0 22 1 222 0 29 1 222 0 32 1 222 0 33 1 222 0 34 1 222 0 35 1 222 0 36 1 222 0 37 1 222 0 39 1 222 0 40 1 222 0 41 1 222 0 42 1 222 0 43 1 222 0 44 1 222 0 45 1 222 0 46 1 222 0 47 1 222 0 48 1 222 0 53 1 222 0 59 1 222 0 60 1 222 0 161] 
#[0 1 226 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 1 230 0 1 1 230 0 5 1 230 0 7 1 230 0 10 1 230 0 11 1 230 0 12 1 230 0 13 1 230 0 14 1 230 0 15 1 230 0 17 1 230 0 18 1 230 0 19 1 230 0 20 1 230 0 23 1 230 0 24 1 230 0 25 1 230 0 26 5 173 0 29 1 230 0 30 1 230 0 31 1 230 0 32 1 230 0 38 1 230 0 47 1 230 0 49 1 230 0 50 1 230 0 51 1 230 0 52 1 230 0 55 1 230 0 56 1 230 0 57 1 230 0 58 5 173 0 59 1 230 0 60 1 230 0 61 5 173 0 95 1 230 0 158 1 230 0 159 1 230 0 160] 
#[0 1 234 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[1 2 45 0 1 0 237 0 5 0 233 0 7 5 177 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 13 0 32 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 5 181 0 60 0 125 0 61 2 21 0 66 2 25 0 67 0 145 0 68 2 29 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 5 185 0 99 2 97 0 100 5 189 0 101 2 37 0 102 2 41 0 103 5 193 0 104 5 197 0 105 2 45 0 106 2 49 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 53 0 124 2 57 0 125 2 57 0 126 2 57 0 127 2 57 0 128 2 73 0 130 2 77 0 137 2 81 0 140 2 57 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 1 238 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 5 201 0 2 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 5 205 0 67 5 209 0 68 5 213 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 5 217 0 134 5 221 0 135 2 129 0 137 5 225 0 138 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 3 5 0 1 1 242 0 2 1 242 0 3 1 242 0 6 1 242 0 7 1 242 0 8 2 245 0 9 1 242 0 10 1 242 0 16 1 242 0 21 1 242 0 22 1 242 0 29 1 242 0 32 1 242 0 33 1 242 0 34 1 242 0 35 1 242 0 36 1 242 0 37 1 242 0 39 1 242 0 40 1 242 0 41 1 242 0 42 1 242 0 43 1 242 0 44 1 242 0 45 1 242 0 46 1 242 0 47 1 242 0 48 1 242 0 53 1 242 0 54 1 242 0 57 1 242 0 59 1 242 0 60 1 242 0 62 5 229 0 94 2 253 0 97 3 5 0 106 5 233 0 136 1 242 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 5 237 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 6 1 0 47 6 1 0 49 5 245 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 5 249 0 67 5 253 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 6 1 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 129 0 137 2 133 0 138 3 129 0 139 0 173 0 143 0 173 0 144 0 173 0 145 3 133 0 147 3 137 0 148 3 141 0 149 3 145 0 150 3 149 0 151 1 33 0 152 3 153 0 153 1 109 0 155 3 157 0 156 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 1 246 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 6 13 0 21 6 17 0 22 6 21 0 80] 
#[1 6 13 0 21 6 25 0 22 6 21 0 80] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 3 41 0 67 0 165 0 76 0 169 0 77 1 149 0 78 1 149 0 79 1 149 0 82 1 149 0 83 1 149 0 84 1 149 0 85 1 149 0 86 1 149 0 87 1 149 0 88 1 149 0 92 1 149 0 93 0 221 0 96 0 225 0 106 1 149 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 1 149 0 117 1 93 0 118 0 169 0 119 1 153 0 120 1 13 0 121 1 101 0 122 1 149 0 143 1 149 0 144 1 149 0 145 1 33 0 152 1 37 0 155 1 149 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 3 49 0 33 1 22 0 34 1 22 0 35 1 22 0 36 3 65 0 39 3 69 0 40 3 73 0 41 3 77 0 42 3 81 0 43 3 85 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 1 22 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 3 161 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 1 34 0 33 1 34 0 34 1 34 0 35 1 34 0 36 1 34 0 39 1 34 0 40 1 34 0 41 1 34 0 42 1 34 0 43 1 34 0 44 1 34 0 45 1 34 0 46 1 34 0 47 1 34 0 48 1 34 0 53 1 34 0 54 1 34 0 62 1 229 0 71] 
#[0 1 250 0 3 0 15 0 16] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 29 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 33 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 37 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 41 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 45 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 49 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 53 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 57 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 61 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 65 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 69 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 73 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 77 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 81 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 69 0 38 3 37 0 47 3 37 0 49 3 29 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 85 0 67 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 37 0 115 1 89 0 116 0 173 0 117 1 93 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 1 254 0 2 1 254 0 3 1 254 0 6 1 186 0 7 1 254 0 8 1 254 0 9 1 254 0 10 1 186 0 15 1 254 0 16 1 254 0 21 1 254 0 22 1 254 0 29 1 254 0 32 1 186 0 33 1 186 0 34 1 186 0 35 1 186 0 36 1 254 0 37 1 186 0 39 1 186 0 40 1 186 0 41 1 186 0 42 1 186 0 43 1 186 0 44 1 186 0 45 1 186 0 46 1 186 0 47 1 186 0 48 1 186 0 53 1 186 0 54 1 186 0 57 1 254 0 59 1 254 0 60 1 186 0 62 1 254 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 3 125 0 47 3 125 0 49 3 113 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 1 137 0 66 1 141 0 67 0 145 0 68 1 145 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 1 149 0 78 1 149 0 79 1 149 0 82 1 149 0 83 1 149 0 84 1 149 0 85 1 149 0 86 1 149 0 87 1 149 0 88 1 149 0 92 1 149 0 93 0 221 0 96 0 225 0 106 1 149 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 125 0 115 0 249 0 116 1 149 0 117 1 1 0 118 1 5 0 119 1 153 0 120 1 13 0 121 1 17 0 122 1 149 0 143 1 149 0 144 1 149 0 145 1 33 0 152 1 109 0 155 3 45 0 156 1 149 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 1 150 0 3 1 150 0 16 1 161 0 33 1 165 0 34 1 169 0 35 6 89 0 36 6 97 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 6 97 0 146] 
#[1 1 154 0 3 1 154 0 16 1 161 0 33 1 165 0 34 1 169 0 35 6 101 0 36 6 105 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 241 0 71 1 245 0 72 1 249 0 73 6 105 0 146] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 3 125 0 47 3 125 0 49 3 113 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 2 165 0 66 2 169 0 67 0 145 0 68 2 173 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 125 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 109 0 155 3 165 0 156 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 6 109 0 16 0 114] 
#[0 2 2 0 3 0 16] 
#[1 6 113 0 3 6 117 0 16 6 117 0 114] 
#[0 6 121 0 16 0 114] 
#[1 6 125 0 3 2 6 0 16] 
#[0 6 129 0 16 0 114] 
#[0 2 10 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 2 14 0 3 0 16] 
#[1 1 194 0 33 1 194 0 34 1 194 0 35 1 194 0 36 1 194 0 39 1 194 0 40 1 194 0 41 1 194 0 42 1 194 0 43 1 194 0 44 1 194 0 45 1 194 0 46 1 194 0 47 1 194 0 48 1 194 0 53 1 194 0 54 1 194 0 62 1 229 0 71] 
#[0 2 18 0 3 0 15 0 16] 
#[1 3 49 0 33 3 53 0 34 3 57 0 35 3 61 0 36 3 65 0 39 3 69 0 40 3 73 0 41 3 77 0 42 3 81 0 43 3 85 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 3 105 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[0 1 202 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 1 218 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 3 5 0 1 1 242 0 2 1 242 0 3 1 242 0 6 1 242 0 7 1 242 0 8 1 242 0 9 1 242 0 10 1 242 0 15 1 242 0 16 1 242 0 21 1 242 0 22 1 242 0 29 1 242 0 32 1 242 0 33 1 242 0 34 1 242 0 35 1 242 0 36 1 242 0 37 1 242 0 39 1 242 0 40 1 242 0 41 1 242 0 42 1 242 0 43 1 242 0 44 1 242 0 45 1 242 0 46 1 242 0 47 1 242 0 48 1 242 0 53 1 242 0 54 1 242 0 57 1 242 0 59 1 242 0 60 1 242 0 62 3 5 0 106 6 133 0 136 1 242 0 161] 
#[0 2 22 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 6 137 0 17] 
#[0 2 26 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 2 30 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 2 34 0 29 0 59 0 161] 
#[1 2 38 0 2 2 38 0 3 2 38 0 6 2 38 0 8 2 38 0 10 2 38 0 16 2 38 0 21 2 38 0 22 2 38 0 29 2 38 0 32 2 38 0 33 2 38 0 34 2 38 0 35 2 38 0 36 2 38 0 37 2 38 0 39 2 38 0 40 2 38 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 38 0 53 1 221 0 54 2 38 0 59 2 38 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 38 0 161] 
#[1 2 42 0 2 2 42 0 3 2 42 0 6 2 42 0 8 2 42 0 10 2 42 0 16 2 42 0 21 2 42 0 22 2 42 0 29 2 42 0 32 2 42 0 33 2 42 0 34 2 42 0 35 2 42 0 36 2 42 0 37 2 42 0 39 2 42 0 40 2 42 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 42 0 53 2 42 0 59 2 42 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 42 0 161] 
#[0 2 46 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 50 0 2 2 50 0 3 2 50 0 6 2 50 0 8 2 50 0 10 2 50 0 16 2 50 0 21 2 50 0 22 2 50 0 29 2 50 0 32 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 2 50 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 50 0 53 1 221 0 54 2 50 0 59 2 50 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 50 0 161] 
#[1 2 54 0 2 2 54 0 3 2 54 0 6 2 54 0 8 2 54 0 10 2 54 0 16 2 54 0 21 2 54 0 22 2 54 0 29 2 54 0 32 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 2 54 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 54 0 53 2 54 0 59 2 54 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 54 0 161] 
#[0 2 58 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 2 62 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 66 0 2 2 66 0 3 2 66 0 6 2 66 0 8 2 66 0 10 2 66 0 16 2 66 0 21 2 66 0 22 2 66 0 29 2 66 0 32 1 161 0 33 2 66 0 34 1 169 0 35 1 173 0 36 2 66 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 66 0 53 1 221 0 54 2 66 0 59 2 66 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 66 0 161] 
#[1 2 70 0 2 2 70 0 3 2 70 0 6 2 70 0 8 2 70 0 10 2 70 0 16 2 70 0 21 2 70 0 22 2 70 0 29 2 70 0 32 1 161 0 33 2 70 0 34 1 169 0 35 1 173 0 36 2 70 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 70 0 53 2 70 0 59 2 70 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 70 0 161] 
#[0 2 74 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 78 0 2 2 78 0 3 2 78 0 6 2 78 0 8 2 78 0 10 2 78 0 16 2 78 0 21 2 78 0 22 2 78 0 29 2 78 0 32 1 161 0 33 2 78 0 34 2 78 0 35 1 173 0 36 2 78 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 78 0 53 1 221 0 54 2 78 0 59 2 78 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 78 0 161] 
#[1 2 82 0 2 2 82 0 3 2 82 0 6 2 82 0 8 2 82 0 10 2 82 0 16 2 82 0 21 2 82 0 22 2 82 0 29 2 82 0 32 1 161 0 33 2 82 0 34 2 82 0 35 1 173 0 36 2 82 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 82 0 53 2 82 0 59 2 82 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 82 0 161] 
#[0 2 86 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 90 0 2 2 90 0 3 2 90 0 6 2 90 0 8 2 90 0 10 2 90 0 16 2 90 0 21 2 90 0 22 2 90 0 29 2 90 0 32 1 161 0 33 2 90 0 34 2 90 0 35 2 90 0 36 2 90 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 90 0 53 1 221 0 54 2 90 0 59 2 90 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 90 0 161] 
#[1 2 94 0 2 2 94 0 3 2 94 0 6 2 94 0 8 2 94 0 10 2 94 0 16 2 94 0 21 2 94 0 22 2 94 0 29 2 94 0 32 1 161 0 33 2 94 0 34 2 94 0 35 2 94 0 36 2 94 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 94 0 53 2 94 0 59 2 94 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 94 0 161] 
#[0 2 98 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 102 0 2 2 102 0 3 2 102 0 6 2 102 0 8 2 102 0 10 2 102 0 16 2 102 0 21 2 102 0 22 2 102 0 29 2 102 0 32 1 161 0 33 2 102 0 34 2 102 0 35 2 102 0 36 2 102 0 37 2 102 0 39 2 102 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 102 0 53 1 221 0 54 2 102 0 59 2 102 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 102 0 161] 
#[1 2 106 0 2 2 106 0 3 2 106 0 6 2 106 0 8 2 106 0 10 2 106 0 16 2 106 0 21 2 106 0 22 2 106 0 29 2 106 0 32 1 161 0 33 2 106 0 34 2 106 0 35 2 106 0 36 2 106 0 37 2 106 0 39 2 106 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 106 0 53 2 106 0 59 2 106 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 106 0 161] 
#[0 2 110 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 114 0 2 2 114 0 3 2 114 0 6 2 114 0 8 2 114 0 10 2 114 0 16 2 114 0 21 2 114 0 22 2 114 0 29 2 114 0 32 1 161 0 33 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 39 2 114 0 40 2 114 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 114 0 53 1 221 0 54 2 114 0 59 2 114 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 114 0 161] 
#[1 2 118 0 2 2 118 0 3 2 118 0 6 2 118 0 8 2 118 0 10 2 118 0 16 2 118 0 21 2 118 0 22 2 118 0 29 2 118 0 32 1 161 0 33 2 118 0 34 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 39 2 118 0 40 2 118 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 118 0 53 2 118 0 59 2 118 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 118 0 161] 
#[0 2 122 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 126 0 2 2 126 0 3 2 126 0 6 2 126 0 8 2 126 0 10 2 126 0 16 2 126 0 21 2 126 0 22 2 126 0 29 2 126 0 32 2 126 0 33 2 126 0 34 2 126 0 35 2 126 0 36 2 126 0 37 2 126 0 39 2 126 0 40 2 126 0 41 2 126 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 126 0 53 1 221 0 54 2 126 0 59 2 126 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 126 0 161] 
#[1 2 130 0 2 2 130 0 3 2 130 0 6 2 130 0 8 2 130 0 10 2 130 0 16 2 130 0 21 2 130 0 22 2 130 0 29 2 130 0 32 2 130 0 33 2 130 0 34 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 39 2 130 0 40 2 130 0 41 2 130 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 130 0 53 2 130 0 59 2 130 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 130 0 161] 
#[0 2 134 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 138 0 2 2 138 0 3 2 138 0 6 2 138 0 8 2 138 0 10 2 138 0 16 2 138 0 21 2 138 0 22 2 138 0 29 2 138 0 32 2 138 0 33 2 138 0 34 2 138 0 35 2 138 0 36 2 138 0 37 2 138 0 39 2 138 0 40 2 138 0 41 2 138 0 42 2 138 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 138 0 53 1 221 0 54 2 138 0 59 2 138 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 138 0 161] 
#[1 2 142 0 2 2 142 0 3 2 142 0 6 2 142 0 8 2 142 0 10 2 142 0 16 2 142 0 21 2 142 0 22 2 142 0 29 2 142 0 32 2 142 0 33 2 142 0 34 2 142 0 35 2 142 0 36 2 142 0 37 2 142 0 39 2 142 0 40 2 142 0 41 2 142 0 42 2 142 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 142 0 53 2 142 0 59 2 142 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 142 0 161] 
#[0 2 146 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 150 0 2 2 150 0 3 2 150 0 6 2 150 0 8 2 150 0 10 2 150 0 16 2 150 0 21 2 150 0 22 2 150 0 29 2 150 0 32 2 150 0 33 2 150 0 34 2 150 0 35 2 150 0 36 2 150 0 37 2 150 0 39 2 150 0 40 2 150 0 41 2 150 0 42 2 150 0 43 2 150 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 150 0 53 1 221 0 54 2 150 0 59 2 150 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 150 0 161] 
#[1 2 154 0 2 2 154 0 3 2 154 0 6 2 154 0 8 2 154 0 10 2 154 0 16 2 154 0 21 2 154 0 22 2 154 0 29 2 154 0 32 2 154 0 33 2 154 0 34 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 39 2 154 0 40 2 154 0 41 2 154 0 42 2 154 0 43 2 154 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 154 0 53 2 154 0 59 2 154 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 154 0 161] 
#[0 2 158 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 162 0 2 2 162 0 3 2 162 0 6 2 162 0 8 2 162 0 10 2 162 0 16 2 162 0 21 2 162 0 22 2 162 0 29 2 162 0 32 2 162 0 33 2 162 0 34 2 162 0 35 2 162 0 36 2 162 0 37 2 162 0 39 2 162 0 40 2 162 0 41 2 162 0 42 2 162 0 43 2 162 0 44 2 162 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 162 0 53 1 221 0 54 2 162 0 59 2 162 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 162 0 161] 
#[1 2 166 0 2 2 166 0 3 2 166 0 6 2 166 0 8 2 166 0 10 2 166 0 16 2 166 0 21 2 166 0 22 2 166 0 29 2 166 0 32 2 166 0 33 2 166 0 34 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 39 2 166 0 40 2 166 0 41 2 166 0 42 2 166 0 43 2 166 0 44 2 166 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 166 0 53 2 166 0 59 2 166 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 166 0 161] 
#[0 2 170 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 174 0 2 2 174 0 3 2 174 0 6 2 174 0 8 2 174 0 10 2 174 0 16 2 174 0 21 2 174 0 22 2 174 0 29 2 174 0 32 2 174 0 33 2 174 0 34 2 174 0 35 2 174 0 36 2 174 0 37 2 174 0 39 2 174 0 40 2 174 0 41 2 174 0 42 2 174 0 43 2 174 0 44 2 174 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 174 0 53 1 221 0 54 2 174 0 59 2 174 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 174 0 161] 
#[1 2 178 0 2 2 178 0 3 2 178 0 6 2 178 0 8 2 178 0 10 2 178 0 16 2 178 0 21 2 178 0 22 2 178 0 29 2 178 0 32 2 178 0 33 2 178 0 34 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 39 2 178 0 40 2 178 0 41 2 178 0 42 2 178 0 43 2 178 0 44 2 178 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 178 0 53 2 178 0 59 2 178 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 178 0 161] 
#[0 2 182 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 186 0 2 2 186 0 3 2 186 0 6 2 186 0 8 2 186 0 10 2 186 0 16 2 186 0 21 2 186 0 22 2 186 0 29 2 186 0 32 2 186 0 33 2 186 0 34 2 186 0 35 2 186 0 36 2 186 0 37 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 42 2 186 0 43 2 186 0 44 2 186 0 45 2 186 0 46 2 186 0 47 1 213 0 48 2 186 0 53 1 221 0 54 2 186 0 59 2 186 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 186 0 161] 
#[1 2 190 0 2 2 190 0 3 2 190 0 6 2 190 0 8 2 190 0 10 2 190 0 16 2 190 0 21 2 190 0 22 2 190 0 29 2 190 0 32 2 190 0 33 2 190 0 34 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 2 190 0 44 2 190 0 45 2 190 0 46 2 190 0 47 1 213 0 48 2 190 0 53 2 190 0 59 2 190 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 190 0 161] 
#[0 2 194 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 198 0 2 2 198 0 3 2 198 0 6 2 198 0 8 2 198 0 10 2 198 0 16 2 198 0 21 2 198 0 22 2 198 0 29 2 198 0 32 2 198 0 33 2 198 0 34 2 198 0 35 2 198 0 36 2 198 0 37 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 45 2 198 0 46 2 198 0 47 2 198 0 48 2 198 0 53 1 221 0 54 2 198 0 59 2 198 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 198 0 161] 
#[1 2 202 0 2 2 202 0 3 2 202 0 6 2 202 0 8 2 202 0 10 2 202 0 16 2 202 0 21 2 202 0 22 2 202 0 29 2 202 0 32 2 202 0 33 2 202 0 34 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 45 2 202 0 46 2 202 0 47 2 202 0 48 2 202 0 53 2 202 0 59 2 202 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 202 0 161] 
#[0 2 206 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 210 0 2 2 210 0 3 2 210 0 6 2 210 0 8 2 210 0 10 2 210 0 16 2 210 0 21 2 210 0 22 2 210 0 29 2 210 0 32 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 2 210 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 210 0 53 1 221 0 54 2 210 0 59 2 210 0 60 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 2 210 0 161] 
#[1 2 214 0 2 2 214 0 3 2 214 0 6 2 214 0 8 2 214 0 10 2 214 0 16 2 214 0 21 2 214 0 22 2 214 0 29 2 214 0 32 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 2 214 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 214 0 53 2 214 0 59 2 214 0 60 1 241 0 71 1 245 0 72 1 249 0 73 2 214 0 161] 
#[0 2 218 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 2 222 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 158 0 159 0 160 0 161] 
#[0 2 226 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 2 230 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 61 0 158 0 159 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 6 141 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 2 109 0 67 2 113 0 68 2 121 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 121 0 131 2 149 0 132 6 145 0 133 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 2 234 0 7] 
#[0 2 238 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 2 242 0 1] 
#[0 6 149 0 8 0 110] 
#[0 2 246 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 2 250 0 3 0 8] 
#[1 6 153 0 3 6 157 0 8 6 157 0 110] 
#[0 2 254 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 3 2 0 3 0 8] 
#[1 6 161 0 3 3 6 0 8] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 3 201 0 66 0 141 0 67 0 145 0 68 3 201 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160 3 10 0 161] 
#[0 3 14 0 2 0 10 0 29 0 59 0 60] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 6 165 0 67 6 173 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 6 173 0 123 2 77 0 137 2 81 0 140 6 177 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 18 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 2 45 0 1 0 237 0 5 0 233 0 7 6 181 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 13 0 32 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 2 21 0 66 2 25 0 67 0 145 0 68 2 29 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 6 185 0 102 2 41 0 103 2 45 0 106 2 49 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 53 0 124 2 57 0 125 2 57 0 126 2 57 0 127 2 57 0 128 2 73 0 130 2 77 0 137 2 81 0 140 2 57 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 22 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 6 189 0 2 1 126 0 32 6 189 0 107] 
#[1 6 193 0 2 1 134 0 32 6 193 0 107] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 197 0 66 0 141 0 67 0 145 0 68 6 197 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 26 0 2 0 10 0 29 0 59 0 60] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 6 165 0 67 6 201 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 6 201 0 123 2 77 0 137 2 81 0 140 6 205 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 30 0 2 0 10 0 29 0 59 0 60] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 209 0 66 0 141 0 67 0 145 0 68 6 209 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 34 0 2 0 10 0 29 0 59 0 60] 
#[1 3 38 0 2 3 38 0 3 3 38 0 6 3 38 0 8 3 38 0 9 3 38 0 10 3 38 0 16 3 38 0 21 3 38 0 22 3 38 0 29 3 38 0 32 5 77 0 33 5 81 0 34 5 85 0 35 5 89 0 36 3 38 0 37 5 93 0 39 5 97 0 40 5 101 0 41 5 105 0 42 5 109 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 5 133 0 53 1 221 0 54 3 38 0 59 3 38 0 60 1 225 0 62 1 229 0 71 1 237 0 73 3 38 0 161] 
#[0 3 42 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 77 0 57 2 77 0 137 2 81 0 140 6 213 0 141] 
#[0 3 46 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 6 217 0 2 0 107] 
#[0 3 50 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 2 45 0 1 3 54 0 2 0 237 0 5 0 233 0 7 3 54 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 13 0 32 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 3 54 0 60 0 125 0 61 2 21 0 66 2 25 0 67 0 145 0 68 2 29 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 6 185 0 102 2 41 0 103 2 45 0 106 2 49 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 53 0 124 2 57 0 125 2 57 0 126 2 57 0 127 2 57 0 128 2 73 0 130 2 77 0 137 2 81 0 140 2 57 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 58 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 3 62 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 6 221 0 29 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 2 109 0 67 2 113 0 68 6 225 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 6 225 0 131 2 129 0 137 2 133 0 138 6 229 0 139 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 66 0 2 0 3 0 6 0 8 0 16 0 29] 
#[1 3 70 0 6 3 70 0 8 3 70 0 16 6 233 0 29 6 237 0 57 6 237 0 137] 
#[0 6 241 0 8 0 110] 
#[0 3 74 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 0 237 0 5 3 78 0 6 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 3 78 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 2 109 0 67 2 113 0 68 6 225 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 6 225 0 131 2 129 0 137 2 133 0 138 6 245 0 139 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 82 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 3 86 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 3 90 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 3 94 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 1 22 0 2 1 22 0 3 1 22 0 6 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 16 1 22 0 21 1 22 0 22 1 22 0 29 1 22 0 32 5 77 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 5 93 0 39 5 97 0 40 5 101 0 41 5 105 0 42 5 109 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 1 22 0 53 1 221 0 54 1 22 0 59 1 22 0 60 1 225 0 62 1 229 0 71 1 237 0 73 1 22 0 161] 
#[0 1 26 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 1 34 0 2 1 34 0 3 1 34 0 6 1 34 0 8 1 34 0 9 1 34 0 10 1 34 0 16 1 34 0 21 1 34 0 22 1 34 0 29 1 34 0 32 1 34 0 33 1 34 0 34 1 34 0 35 1 34 0 36 1 34 0 37 1 34 0 39 1 34 0 40 1 34 0 41 1 34 0 42 1 34 0 43 1 34 0 44 1 34 0 45 1 34 0 46 1 34 0 47 1 34 0 48 1 34 0 53 1 34 0 54 1 34 0 59 1 34 0 60 1 34 0 62 1 229 0 71 1 237 0 73 1 34 0 161] 
#[0 1 38 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 6 249 0 67 3 213 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 6 253 0 67 3 225 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 2 77 0 137 2 81 0 140 3 229 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 1 0 67 3 241 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 5 0 67 3 253 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 9 0 67 4 9 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 13 0 67 4 21 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 17 0 67 4 33 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 21 0 67 4 45 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 25 0 67 4 57 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 29 0 67 4 69 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 33 0 67 4 81 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 37 0 67 4 93 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 41 0 67 4 105 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 45 0 67 4 117 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 49 0 67 4 129 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 7 53 0 2 1 126 0 32 7 53 0 107] 
#[1 7 57 0 2 1 134 0 32 7 57 0 107] 
#[1 1 194 0 2 1 194 0 3 1 194 0 6 1 194 0 8 1 194 0 9 1 194 0 10 1 194 0 16 1 194 0 21 1 194 0 22 1 194 0 29 1 194 0 32 1 194 0 33 1 194 0 34 1 194 0 35 1 194 0 36 1 194 0 37 1 194 0 39 1 194 0 40 1 194 0 41 1 194 0 42 1 194 0 43 1 194 0 44 1 194 0 45 1 194 0 46 1 194 0 47 1 194 0 48 1 194 0 53 1 194 0 54 1 194 0 59 1 194 0 60 1 194 0 62 1 229 0 71 1 237 0 73 1 194 0 161] 
#[0 1 198 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 1 206 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 1 210 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 1 222 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 3 98 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[0 3 102 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[0 3 106 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 32 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 60 0 61 0 158 0 159 0 160] 
#[0 3 110 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[1 3 114 0 1 3 114 0 5 3 114 0 7 3 114 0 10 3 114 0 11 3 114 0 12 3 114 0 13 3 114 0 14 3 114 0 15 3 114 0 17 3 114 0 18 3 114 0 19 3 114 0 20 3 114 0 23 3 114 0 24 3 114 0 25 3 114 0 26 7 61 0 29 3 114 0 30 3 114 0 31 3 114 0 32 3 114 0 38 3 114 0 47 3 114 0 49 3 114 0 50 3 114 0 51 3 114 0 52 3 114 0 55 3 114 0 56 3 114 0 57 3 114 0 58 7 61 0 59 3 114 0 60 3 114 0 61 7 61 0 95 3 114 0 158 3 114 0 159 3 114 0 160] 
#[1 2 45 0 1 0 237 0 5 0 233 0 7 3 118 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 13 0 32 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 3 118 0 60 0 125 0 61 2 21 0 66 2 25 0 67 0 145 0 68 2 29 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 2 97 0 100 7 65 0 101 2 37 0 102 2 41 0 103 2 45 0 106 2 49 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 53 0 124 2 57 0 125 2 57 0 126 2 57 0 127 2 57 0 128 2 73 0 130 2 77 0 137 2 81 0 140 2 57 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 7 69 0 10 5 181 0 60 5 185 0 99 5 193 0 104 7 73 0 105] 
#[1 3 122 0 10 5 181 0 60 5 185 0 99 5 193 0 104 7 77 0 105] 
#[0 7 81 0 10] 
#[0 3 126 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 3 130 0 2 3 130 0 3 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73] 
#[1 3 134 0 2 3 134 0 3 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 241 0 71 1 245 0 72 1 249 0 73] 
#[1 7 85 0 2 3 138 0 3 7 85 0 107] 
#[0 3 142 0 2 0 3] 
#[1 7 93 0 2 7 89 0 3 7 93 0 107] 
#[1 7 101 0 2 7 97 0 3 7 101 0 107] 
#[0 3 146 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[1 3 150 0 2 3 150 0 3 3 150 0 6 3 150 0 7 3 150 0 8 2 245 0 9 3 150 0 10 3 150 0 16 3 150 0 21 3 150 0 22 3 150 0 29 3 150 0 32 3 150 0 33 3 150 0 34 3 150 0 35 3 150 0 36 3 150 0 37 3 150 0 39 3 150 0 40 3 150 0 41 3 150 0 42 3 150 0 43 3 150 0 44 3 150 0 45 3 150 0 46 3 150 0 47 3 150 0 48 3 150 0 53 3 150 0 54 3 150 0 57 3 150 0 59 3 150 0 60 3 150 0 62 7 105 0 94 2 253 0 97 3 150 0 161] 
#[0 1 254 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 1 117 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 1 121 0 61 1 125 0 66 1 129 0 67 0 145 0 68 1 125 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 3 125 0 47 3 125 0 49 3 113 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 1 137 0 66 1 141 0 67 0 145 0 68 1 137 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 1 149 0 78 1 149 0 79 1 149 0 82 1 149 0 83 1 149 0 84 1 149 0 85 1 149 0 86 1 149 0 87 1 149 0 88 1 149 0 92 1 149 0 93 0 221 0 96 0 225 0 106 1 149 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 125 0 115 0 249 0 116 1 149 0 117 1 1 0 118 1 5 0 119 1 153 0 120 1 13 0 121 1 17 0 122 1 149 0 143 1 149 0 144 1 149 0 145 1 33 0 152 1 109 0 155 3 45 0 156 1 149 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 7 109 0 33 7 113 0 34 7 117 0 35 7 121 0 36 6 97 0 37 7 125 0 39 7 129 0 40 7 133 0 41 7 137 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 7 165 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72 6 97 0 146] 
#[1 1 161 0 33 1 165 0 34 1 169 0 35 6 101 0 36 6 105 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 241 0 71 1 245 0 72 1 249 0 73 6 105 0 146] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 3 125 0 47 3 125 0 49 3 113 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 2 165 0 66 2 169 0 67 0 145 0 68 2 165 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 125 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 109 0 155 3 165 0 156 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 206 0 3 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 206 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 206 0 33 0 206 0 34 0 206 0 35 0 206 0 36 0 206 0 37 2 177 0 38 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 42 0 206 0 43 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 48 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 206 0 53 0 206 0 54 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 0 206 0 62 2 185 0 67 2 209 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 2 53 0 124 2 209 0 125 2 213 0 126 2 209 0 127 2 209 0 128 2 77 0 137 2 81 0 140 2 213 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 177 0 38 2 197 0 47 2 197 0 49 2 181 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 77 0 57 0 117 0 58 0 125 0 61 2 185 0 67 2 229 0 69 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 2 197 0 115 2 201 0 116 0 173 0 117 2 205 0 118 0 169 0 119 1 9 0 120 1 13 0 121 1 101 0 122 2 53 0 124 2 229 0 125 2 233 0 126 2 229 0 127 2 229 0 128 2 77 0 137 2 81 0 140 2 233 0 141 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 169 0 66 0 141 0 67 0 145 0 68 7 169 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 154 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 3 158 0 21 0 22] 
#[0 3 162 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 2 38 0 33 2 38 0 34 2 38 0 35 2 38 0 36 2 38 0 39 2 38 0 40 2 38 0 41 3 77 0 42 3 81 0 43 3 85 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 2 38 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 3 49 0 33 3 53 0 34 3 57 0 35 3 61 0 36 3 65 0 39 3 69 0 40 3 73 0 41 3 77 0 42 3 81 0 43 3 85 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 2 50 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 3 49 0 33 2 66 0 34 3 57 0 35 3 61 0 36 3 65 0 39 3 69 0 40 3 73 0 41 3 77 0 42 3 81 0 43 3 85 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 2 66 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 3 49 0 33 2 78 0 34 2 78 0 35 3 61 0 36 3 65 0 39 3 69 0 40 3 73 0 41 3 77 0 42 3 81 0 43 3 85 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 2 78 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 3 49 0 33 2 90 0 34 2 90 0 35 2 90 0 36 3 65 0 39 3 69 0 40 3 73 0 41 3 77 0 42 3 81 0 43 3 85 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 2 90 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 3 49 0 33 2 102 0 34 2 102 0 35 2 102 0 36 2 102 0 39 2 102 0 40 3 73 0 41 3 77 0 42 3 81 0 43 3 85 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 2 102 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 3 49 0 33 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 39 2 114 0 40 2 114 0 41 3 77 0 42 3 81 0 43 3 85 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 2 114 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 2 126 0 33 2 126 0 34 2 126 0 35 2 126 0 36 2 126 0 39 2 126 0 40 2 126 0 41 2 126 0 42 3 81 0 43 3 85 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 2 126 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 2 138 0 33 2 138 0 34 2 138 0 35 2 138 0 36 2 138 0 39 2 138 0 40 2 138 0 41 2 138 0 42 2 138 0 43 3 85 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 2 138 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 2 150 0 33 2 150 0 34 2 150 0 35 2 150 0 36 2 150 0 39 2 150 0 40 2 150 0 41 2 150 0 42 2 150 0 43 2 150 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 2 150 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 2 162 0 33 2 162 0 34 2 162 0 35 2 162 0 36 2 162 0 39 2 162 0 40 2 162 0 41 2 162 0 42 2 162 0 43 2 162 0 44 2 162 0 45 3 93 0 46 3 97 0 47 3 101 0 48 2 162 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 2 174 0 33 2 174 0 34 2 174 0 35 2 174 0 36 2 174 0 39 2 174 0 40 2 174 0 41 2 174 0 42 2 174 0 43 2 174 0 44 2 174 0 45 3 93 0 46 3 97 0 47 3 101 0 48 2 174 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 2 186 0 33 2 186 0 34 2 186 0 35 2 186 0 36 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 42 2 186 0 43 2 186 0 44 2 186 0 45 2 186 0 46 2 186 0 47 3 101 0 48 2 186 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 2 198 0 33 2 198 0 34 2 198 0 35 2 198 0 36 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 45 2 198 0 46 2 198 0 47 2 198 0 48 2 198 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 3 49 0 33 3 53 0 34 3 57 0 35 3 61 0 36 3 65 0 39 3 69 0 40 3 73 0 41 3 77 0 42 3 81 0 43 3 85 0 44 3 89 0 45 3 93 0 46 3 97 0 47 3 101 0 48 2 210 0 53 1 221 0 54 1 225 0 62 1 229 0 71] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 3 125 0 47 3 125 0 49 3 113 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 7 173 0 67 7 177 0 68 3 253 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 125 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 129 0 137 2 133 0 138 7 181 0 139 0 173 0 143 0 173 0 144 0 173 0 145 7 185 0 147 1 33 0 152 1 109 0 155 3 157 0 156 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 166 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 58 0 61 0 158 0 159 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 193 0 67 7 197 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 3 125 0 47 3 125 0 49 3 113 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 7 173 0 67 7 177 0 68 3 253 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 3 125 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 129 0 137 2 133 0 138 7 205 0 139 0 173 0 143 0 173 0 144 0 173 0 145 7 209 0 147 1 33 0 152 1 109 0 155 3 157 0 156 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 7 213 0 67 7 217 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 170 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 7 233 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 7 221 0 29 0 77 0 30 0 81 0 31 5 241 0 38 6 1 0 47 6 1 0 49 5 245 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 7 225 0 67 7 229 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 233 0 114 6 1 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 129 0 137 2 133 0 138 3 129 0 139 0 173 0 143 0 173 0 144 0 173 0 145 3 133 0 147 3 145 0 150 3 149 0 151 1 33 0 152 7 237 0 153 1 109 0 155 3 157 0 156 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 174 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 3 178 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 3 182 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 7 241 0 29 0 77 0 30 0 81 0 31 5 241 0 38 6 1 0 47 6 1 0 49 5 245 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 7 225 0 67 7 229 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 6 1 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 129 0 137 2 133 0 138 7 245 0 139 0 173 0 143 0 173 0 144 0 173 0 145 7 249 0 147 1 33 0 152 1 109 0 155 3 157 0 156 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 186 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 3 150 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 3 190 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 3 194 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 7 253 0 16 0 114] 
#[0 3 198 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 8 5 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 2 109 0 67 2 113 0 68 8 1 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 8 1 0 89 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 8 5 0 110 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 8 1 0 131 2 129 0 137 4 185 0 138 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 3 202 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 8 9 0 29 6 237 0 57 6 237 0 137] 
#[1 3 206 0 2 3 206 0 3 3 206 0 6 3 206 0 8 3 206 0 9 3 206 0 10 3 206 0 16 3 206 0 21 3 206 0 22 3 206 0 29 3 206 0 32 5 77 0 33 5 81 0 34 5 85 0 35 5 89 0 36 3 206 0 37 5 93 0 39 5 97 0 40 5 101 0 41 5 105 0 42 5 109 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 5 133 0 53 1 221 0 54 3 206 0 59 3 206 0 60 1 225 0 62 1 229 0 71 1 237 0 73 3 206 0 161] 
#[0 3 210 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 3 214 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 3 218 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 3 222 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 3 226 0 2 0 10 0 29 0 59 0 60] 
#[0 3 230 0 32 0 34] 
#[0 3 234 0 32 0 34] 
#[1 2 13 0 32 8 13 0 103] 
#[0 3 238 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 3 242 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[1 2 13 0 32 8 17 0 103] 
#[0 3 246 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 3 250 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 3 254 0 8 3 254 0 29 2 129 0 57 2 129 0 137 2 133 0 138 8 21 0 139] 
#[0 4 2 0 3 0 6 0 8 0 16 0 29] 
#[0 4 6 0 8 0 29] 
#[1 4 10 0 6 4 10 0 8 4 10 0 16 4 10 0 29 8 25 0 57 8 25 0 137] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 2 109 0 67 2 113 0 68 8 29 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 8 29 0 131 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 4 14 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 4 18 0 6 0 16] 
#[1 2 38 0 2 2 38 0 3 2 38 0 6 2 38 0 8 2 38 0 9 2 38 0 10 2 38 0 16 2 38 0 21 2 38 0 22 2 38 0 29 2 38 0 32 2 38 0 33 2 38 0 34 2 38 0 35 2 38 0 36 2 38 0 37 2 38 0 39 2 38 0 40 2 38 0 41 5 105 0 42 5 109 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 2 38 0 53 1 221 0 54 2 38 0 59 2 38 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 38 0 161] 
#[1 2 50 0 2 2 50 0 3 2 50 0 6 2 50 0 8 2 50 0 9 2 50 0 10 2 50 0 16 2 50 0 21 2 50 0 22 2 50 0 29 2 50 0 32 5 77 0 33 5 81 0 34 5 85 0 35 5 89 0 36 2 50 0 37 5 93 0 39 5 97 0 40 5 101 0 41 5 105 0 42 5 109 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 2 50 0 53 1 221 0 54 2 50 0 59 2 50 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 50 0 161] 
#[1 2 66 0 2 2 66 0 3 2 66 0 6 2 66 0 8 2 66 0 9 2 66 0 10 2 66 0 16 2 66 0 21 2 66 0 22 2 66 0 29 2 66 0 32 5 77 0 33 2 66 0 34 5 85 0 35 5 89 0 36 2 66 0 37 5 93 0 39 5 97 0 40 5 101 0 41 5 105 0 42 5 109 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 2 66 0 53 1 221 0 54 2 66 0 59 2 66 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 66 0 161] 
#[1 2 78 0 2 2 78 0 3 2 78 0 6 2 78 0 8 2 78 0 9 2 78 0 10 2 78 0 16 2 78 0 21 2 78 0 22 2 78 0 29 2 78 0 32 5 77 0 33 2 78 0 34 2 78 0 35 5 89 0 36 2 78 0 37 5 93 0 39 5 97 0 40 5 101 0 41 5 105 0 42 5 109 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 2 78 0 53 1 221 0 54 2 78 0 59 2 78 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 78 0 161] 
#[1 2 90 0 2 2 90 0 3 2 90 0 6 2 90 0 8 2 90 0 9 2 90 0 10 2 90 0 16 2 90 0 21 2 90 0 22 2 90 0 29 2 90 0 32 5 77 0 33 2 90 0 34 2 90 0 35 2 90 0 36 2 90 0 37 5 93 0 39 5 97 0 40 5 101 0 41 5 105 0 42 5 109 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 2 90 0 53 1 221 0 54 2 90 0 59 2 90 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 90 0 161] 
#[1 2 102 0 2 2 102 0 3 2 102 0 6 2 102 0 8 2 102 0 9 2 102 0 10 2 102 0 16 2 102 0 21 2 102 0 22 2 102 0 29 2 102 0 32 5 77 0 33 2 102 0 34 2 102 0 35 2 102 0 36 2 102 0 37 2 102 0 39 2 102 0 40 5 101 0 41 5 105 0 42 5 109 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 2 102 0 53 1 221 0 54 2 102 0 59 2 102 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 102 0 161] 
#[1 2 114 0 2 2 114 0 3 2 114 0 6 2 114 0 8 2 114 0 9 2 114 0 10 2 114 0 16 2 114 0 21 2 114 0 22 2 114 0 29 2 114 0 32 5 77 0 33 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 39 2 114 0 40 2 114 0 41 5 105 0 42 5 109 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 2 114 0 53 1 221 0 54 2 114 0 59 2 114 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 114 0 161] 
#[1 2 126 0 2 2 126 0 3 2 126 0 6 2 126 0 8 2 126 0 9 2 126 0 10 2 126 0 16 2 126 0 21 2 126 0 22 2 126 0 29 2 126 0 32 2 126 0 33 2 126 0 34 2 126 0 35 2 126 0 36 2 126 0 37 2 126 0 39 2 126 0 40 2 126 0 41 2 126 0 42 5 109 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 2 126 0 53 1 221 0 54 2 126 0 59 2 126 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 126 0 161] 
#[1 2 138 0 2 2 138 0 3 2 138 0 6 2 138 0 8 2 138 0 9 2 138 0 10 2 138 0 16 2 138 0 21 2 138 0 22 2 138 0 29 2 138 0 32 2 138 0 33 2 138 0 34 2 138 0 35 2 138 0 36 2 138 0 37 2 138 0 39 2 138 0 40 2 138 0 41 2 138 0 42 2 138 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 2 138 0 53 1 221 0 54 2 138 0 59 2 138 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 138 0 161] 
#[1 2 150 0 2 2 150 0 3 2 150 0 6 2 150 0 8 2 150 0 9 2 150 0 10 2 150 0 16 2 150 0 21 2 150 0 22 2 150 0 29 2 150 0 32 2 150 0 33 2 150 0 34 2 150 0 35 2 150 0 36 2 150 0 37 2 150 0 39 2 150 0 40 2 150 0 41 2 150 0 42 2 150 0 43 2 150 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 2 150 0 53 1 221 0 54 2 150 0 59 2 150 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 150 0 161] 
#[1 2 162 0 2 2 162 0 3 2 162 0 6 2 162 0 8 2 162 0 9 2 162 0 10 2 162 0 16 2 162 0 21 2 162 0 22 2 162 0 29 2 162 0 32 2 162 0 33 2 162 0 34 2 162 0 35 2 162 0 36 2 162 0 37 2 162 0 39 2 162 0 40 2 162 0 41 2 162 0 42 2 162 0 43 2 162 0 44 2 162 0 45 5 121 0 46 5 125 0 47 5 129 0 48 2 162 0 53 1 221 0 54 2 162 0 59 2 162 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 162 0 161] 
#[1 2 174 0 2 2 174 0 3 2 174 0 6 2 174 0 8 2 174 0 9 2 174 0 10 2 174 0 16 2 174 0 21 2 174 0 22 2 174 0 29 2 174 0 32 2 174 0 33 2 174 0 34 2 174 0 35 2 174 0 36 2 174 0 37 2 174 0 39 2 174 0 40 2 174 0 41 2 174 0 42 2 174 0 43 2 174 0 44 2 174 0 45 5 121 0 46 5 125 0 47 5 129 0 48 2 174 0 53 1 221 0 54 2 174 0 59 2 174 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 174 0 161] 
#[1 2 186 0 2 2 186 0 3 2 186 0 6 2 186 0 8 2 186 0 9 2 186 0 10 2 186 0 16 2 186 0 21 2 186 0 22 2 186 0 29 2 186 0 32 2 186 0 33 2 186 0 34 2 186 0 35 2 186 0 36 2 186 0 37 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 42 2 186 0 43 2 186 0 44 2 186 0 45 2 186 0 46 2 186 0 47 5 129 0 48 2 186 0 53 1 221 0 54 2 186 0 59 2 186 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 186 0 161] 
#[1 2 198 0 2 2 198 0 3 2 198 0 6 2 198 0 8 2 198 0 9 2 198 0 10 2 198 0 16 2 198 0 21 2 198 0 22 2 198 0 29 2 198 0 32 2 198 0 33 2 198 0 34 2 198 0 35 2 198 0 36 2 198 0 37 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 45 2 198 0 46 2 198 0 47 2 198 0 48 2 198 0 53 1 221 0 54 2 198 0 59 2 198 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 198 0 161] 
#[1 2 210 0 2 2 210 0 3 2 210 0 6 2 210 0 8 2 210 0 9 2 210 0 10 2 210 0 16 2 210 0 21 2 210 0 22 2 210 0 29 2 210 0 32 5 77 0 33 5 81 0 34 5 85 0 35 5 89 0 36 2 210 0 37 5 93 0 39 5 97 0 40 5 101 0 41 5 105 0 42 5 109 0 43 5 113 0 44 5 117 0 45 5 121 0 46 5 125 0 47 5 129 0 48 2 210 0 53 1 221 0 54 2 210 0 59 2 210 0 60 1 225 0 62 1 229 0 71 1 237 0 73 2 210 0 161] 
#[0 4 22 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 4 26 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 161] 
#[0 4 30 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 32 0 38 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 60 0 61 0 158 0 159 0 160] 
#[0 4 34 0 10 0 60] 
#[0 4 38 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[0 8 33 0 10] 
#[0 4 42 0 10] 
#[0 4 46 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[0 4 50 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 5 205 0 67 5 209 0 68 8 41 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 8 41 0 134 2 129 0 137 8 45 0 138 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 4 54 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 8 49 0 2 8 9 0 29 6 237 0 57 8 49 0 107 6 237 0 137] 
#[0 4 58 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 4 62 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 53 0 67 3 209 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 57 0 67 3 221 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 61 0 67 3 237 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 6 1 0 47 6 1 0 49 5 245 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 8 65 0 67 7 177 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 6 1 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 129 0 137 2 133 0 138 7 181 0 139 0 173 0 143 0 173 0 144 0 173 0 145 7 185 0 147 1 33 0 152 1 109 0 155 3 157 0 156 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 69 0 67 4 5 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 73 0 67 4 17 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 77 0 67 4 29 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 81 0 67 4 41 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 85 0 67 4 53 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 89 0 67 4 65 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 93 0 67 4 77 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 97 0 67 4 89 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 101 0 67 4 101 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 105 0 67 4 113 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 109 0 67 4 125 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 4 66 0 21 0 22] 
#[1 2 78 0 3 2 78 0 16 1 161 0 33 2 78 0 34 2 78 0 35 1 173 0 36 6 97 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 78 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72 1 237 0 73 6 97 0 146] 
#[1 2 82 0 3 2 82 0 16 1 161 0 33 2 82 0 34 2 82 0 35 1 173 0 36 6 105 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 2 82 0 53 1 241 0 71 1 245 0 72 1 249 0 73 6 105 0 146] 
#[0 4 70 0 16] 
#[0 4 74 0 3 0 16] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 1 137 0 66 1 141 0 67 0 145 0 68 1 137 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 1 149 0 78 1 149 0 79 1 149 0 82 1 149 0 83 1 149 0 84 1 149 0 85 1 149 0 86 1 149 0 87 1 149 0 88 1 149 0 92 1 149 0 93 0 221 0 96 0 225 0 106 1 149 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 1 149 0 117 1 1 0 118 1 5 0 119 1 153 0 120 1 13 0 121 1 17 0 122 1 149 0 143 1 149 0 144 1 149 0 145 1 33 0 152 1 37 0 155 1 149 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 4 78 0 3 4 78 0 16 7 109 0 33 7 113 0 34 7 117 0 35 8 113 0 36 7 125 0 39 7 129 0 40 7 133 0 41 7 137 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 7 165 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 4 82 0 3 4 82 0 16 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 241 0 71 1 245 0 72 1 249 0 73] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 2 165 0 66 2 169 0 67 0 145 0 68 2 165 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 4 86 0 16] 
#[0 4 90 0 3 0 16] 
#[1 4 94 0 3 4 94 0 16 7 109 0 33 7 113 0 34 7 117 0 35 8 113 0 36 7 125 0 39 7 129 0 40 7 133 0 41 7 137 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 7 165 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 4 98 0 3 4 98 0 16 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 241 0 71 1 245 0 72 1 249 0 73] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 8 117 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 6 1 0 47 6 1 0 49 5 245 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 7 225 0 67 7 229 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 8 117 0 114 6 1 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 129 0 137 2 133 0 138 3 129 0 139 0 173 0 143 0 173 0 144 0 173 0 145 3 133 0 147 3 145 0 150 3 149 0 151 1 33 0 152 8 121 0 153 1 109 0 155 3 157 0 156 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[1 7 109 0 33 7 113 0 34 7 117 0 35 8 113 0 36 6 97 0 37 7 125 0 39 7 129 0 40 7 133 0 41 7 137 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 7 165 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72 6 97 0 146] 
#[1 1 161 0 33 1 165 0 34 1 169 0 35 1 173 0 36 6 105 0 37 1 177 0 39 1 181 0 40 1 185 0 41 1 189 0 42 1 193 0 43 1 197 0 44 1 201 0 45 1 205 0 46 1 209 0 47 1 213 0 48 1 217 0 53 1 241 0 71 1 245 0 72 1 249 0 73 6 105 0 146] 
#[0 4 102 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 4 106 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 4 110 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 6 1 0 47 6 1 0 49 5 245 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 2 129 0 57 0 117 0 58 0 125 0 61 7 225 0 67 7 229 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 6 1 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 2 129 0 137 2 133 0 138 8 125 0 139 0 173 0 143 0 173 0 144 0 173 0 145 8 129 0 147 1 33 0 152 1 109 0 155 3 157 0 156 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 8 133 0 16 0 114] 
#[0 4 114 0 3 0 16] 
#[0 4 118 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 4 122 0 3 0 8] 
#[0 4 126 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 8 25 0 57 0 137] 
#[0 4 130 0 2 0 10 0 29 0 59 0 60] 
#[0 4 134 0 2 0 10 0 29 0 59 0 60] 
#[0 4 138 0 8 0 29] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 245 0 47 0 245 0 49 0 97 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 2 109 0 67 2 113 0 68 8 137 0 69 0 153 0 70 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 0 245 0 115 0 249 0 116 0 173 0 117 1 1 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 8 137 0 131 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 4 142 0 2 0 3 0 6 0 8 0 16 0 29] 
#[0 4 146 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 161] 
#[0 3 138 0 2 0 3] 
#[0 4 150 0 2 0 3] 
#[1 8 145 0 2 8 141 0 3 8 145 0 107] 
#[0 4 154 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 2 38 0 3 2 38 0 16 2 38 0 33 2 38 0 34 2 38 0 35 2 38 0 36 2 38 0 37 2 38 0 39 2 38 0 40 2 38 0 41 7 137 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 38 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 2 50 0 3 2 50 0 16 7 109 0 33 7 113 0 34 7 117 0 35 8 113 0 36 2 50 0 37 7 125 0 39 7 129 0 40 7 133 0 41 7 137 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 50 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 2 66 0 3 2 66 0 16 7 109 0 33 2 66 0 34 7 117 0 35 8 113 0 36 2 66 0 37 7 125 0 39 7 129 0 40 7 133 0 41 7 137 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 66 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 7 109 0 33 2 78 0 34 2 78 0 35 8 113 0 36 6 97 0 37 7 125 0 39 7 129 0 40 7 133 0 41 7 137 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 78 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72 6 97 0 146] 
#[1 2 90 0 3 2 90 0 16 7 109 0 33 2 90 0 34 2 90 0 35 2 90 0 36 2 90 0 37 7 125 0 39 7 129 0 40 7 133 0 41 7 137 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 90 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 2 102 0 3 2 102 0 16 7 109 0 33 2 102 0 34 2 102 0 35 2 102 0 36 2 102 0 37 2 102 0 39 2 102 0 40 7 133 0 41 7 137 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 102 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 2 114 0 3 2 114 0 16 7 109 0 33 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 39 2 114 0 40 2 114 0 41 7 137 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 114 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 2 126 0 3 2 126 0 16 2 126 0 33 2 126 0 34 2 126 0 35 2 126 0 36 2 126 0 37 2 126 0 39 2 126 0 40 2 126 0 41 2 126 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 126 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 2 138 0 3 2 138 0 16 2 138 0 33 2 138 0 34 2 138 0 35 2 138 0 36 2 138 0 37 2 138 0 39 2 138 0 40 2 138 0 41 2 138 0 42 2 138 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 138 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 2 150 0 3 2 150 0 16 2 150 0 33 2 150 0 34 2 150 0 35 2 150 0 36 2 150 0 37 2 150 0 39 2 150 0 40 2 150 0 41 2 150 0 42 2 150 0 43 2 150 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 150 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 2 162 0 3 2 162 0 16 2 162 0 33 2 162 0 34 2 162 0 35 2 162 0 36 2 162 0 37 2 162 0 39 2 162 0 40 2 162 0 41 2 162 0 42 2 162 0 43 2 162 0 44 2 162 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 162 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 2 174 0 3 2 174 0 16 2 174 0 33 2 174 0 34 2 174 0 35 2 174 0 36 2 174 0 37 2 174 0 39 2 174 0 40 2 174 0 41 2 174 0 42 2 174 0 43 2 174 0 44 2 174 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 174 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 2 186 0 3 2 186 0 16 2 186 0 33 2 186 0 34 2 186 0 35 2 186 0 36 2 186 0 37 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 42 2 186 0 43 2 186 0 44 2 186 0 45 2 186 0 46 2 186 0 47 7 161 0 48 2 186 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 2 198 0 3 2 198 0 16 2 198 0 33 2 198 0 34 2 198 0 35 2 198 0 36 2 198 0 37 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 45 2 198 0 46 2 198 0 47 2 198 0 48 2 198 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 2 210 0 3 2 210 0 16 7 109 0 33 7 113 0 34 7 117 0 35 8 113 0 36 2 210 0 37 7 125 0 39 7 129 0 40 7 133 0 41 7 137 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 210 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[1 0 225 0 1 0 237 0 5 0 233 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 241 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 241 0 38 7 201 0 47 7 201 0 49 7 189 0 50 0 101 0 51 0 105 0 52 0 109 0 55 0 113 0 56 0 117 0 58 0 125 0 61 8 149 0 67 3 249 0 68 0 153 0 70 0 165 0 76 0 169 0 77 0 173 0 78 0 173 0 79 0 173 0 82 0 173 0 83 0 173 0 84 0 173 0 85 0 173 0 86 0 173 0 87 0 173 0 88 0 173 0 92 0 173 0 93 0 221 0 96 0 225 0 106 0 173 0 108 0 233 0 109 0 237 0 111 0 241 0 113 7 201 0 115 6 5 0 116 0 173 0 117 6 9 0 118 1 5 0 119 1 9 0 120 1 13 0 121 1 17 0 122 0 173 0 143 0 173 0 144 0 173 0 145 1 33 0 152 1 37 0 155 0 173 0 157 1 45 0 158 1 49 0 159 1 53 0 160] 
#[0 4 158 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 4 162 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 8 153 0 16 0 114] 
#[0 4 166 0 3 0 16] 
#[0 4 170 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 4 174 0 2 0 3 0 6 0 8 0 16 0 29] 
#[1 8 157 0 2 8 9 0 29 6 237 0 57 8 157 0 107 6 237 0 137] 
#[0 4 178 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[1 2 78 0 3 2 78 0 16 7 109 0 33 2 78 0 34 2 78 0 35 8 113 0 36 2 78 0 37 7 125 0 39 7 129 0 40 7 133 0 41 7 137 0 42 7 141 0 43 7 145 0 44 7 149 0 45 7 153 0 46 7 157 0 47 7 161 0 48 2 78 0 53 1 221 0 54 1 225 0 62 1 229 0 71 1 233 0 72] 
#[0 4 182 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161] 
#[0 4 186 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 161]
	).
]

{ #category : 'private' }
ElixirParser >> actionForCurrentToken [


	"LALR-mode entry point. Same runtime token rewriting as the GLR override on
	 #actionsForCurrentToken, minus state-duplication tricks that only work with multi-stack."

	| lookahead ids id action eolAction oldToken oldScope |
	"'not in' greedy-match split. The scanner's <in_op> regex matches
	 'not in' as a single token. That's correct for 'a not in [1,2]' but
	 wrong for 'not in_signed_set' where 'in_signed_set' is a single
	 identifier and 'not' is the unary operator. The DFA can't
	 distinguish without a lookahead. If the next source char is an
	 identifier continuation (letter, digit, _, ?, !), rewind the
	 scanner past 'not' and replace currentToken with a 3-char <unary_op>
	 'not'; the 'in' part will be re-tokenized as the start of the 'in_…'
	 identifier."
	(currentToken value = 'not in')
		ifTrue: [
			| contents afterPos afterCh |
			contents := scanner stream contents.
			afterPos := currentToken stopPosition + 1.
			(afterPos <= contents size) ifTrue: [
				afterCh := contents at: afterPos.
				(afterCh isLetter or: [ afterCh isDigit or: [ '_?!' includes: afterCh ] ])
					ifTrue: [
						| notEnd |
						notEnd := currentToken startPosition + 2.
						self position: notEnd.
						currentToken := currentToken class
							value: 'not'
							start: currentToken startPosition
							ids: { scanner unary_opId } ] ] ].
	scanner lastWasEol
		ifTrue: [
			eolAction := self actionFor: scanner eolId.
			(eolAction bitAnd: self actionMask) = self errorAction ifFalse: [
				| char shouldShift |
				char := currentToken value isEmpty
						ifTrue: [ $  ]
						ifFalse: [ currentToken value first ].
				shouldShift := (')|}<>' includes: char).
				shouldShift ifFalse: [ shouldShift := self shouldSuppressEol ].
				"Continuation keywords on a new line should not get an eol
				 separating them from the previous expression."
				shouldShift ifFalse: [ shouldShift := #('when' 'and' 'or' 'in') includes: currentToken value ].
				shouldShift ifTrue: [
					action := self actionFor: currentToken ids first.
					(action bitAnd: self actionMask) = self errorAction
						ifFalse: [ ^ action ] ].
				"For '}' specifically: don't inject eol — the close-curly may be
				 the end of an interpolation that the }-rescue path will
				 retokenize as <interpolatedStringMid/End>. If we inject eol
				 here, the parser shifts eol successfully but then can't get
				 back to the rescue."
				char = $} ifTrue: [ scanner lastWasEol: false ].
				char = $} ifFalse: [
					scanner lastWasEol: false.
					self position: currentToken startPosition - 1.
					currentToken := currentToken class
							value: ''
							start: currentToken startPosition
							ids: {scanner eolId}.
					^ eolAction ] ] ].
	currentToken ids first = scanner identifierId
		ifTrue: [ lookahead := self peekNextToken.
			id := lookahead value = 'do'
					ifTrue: [ scanner do_identifierId ]
					ifFalse: [ lookahead value = ' ??? '
							ifTrue: [ scanner block_identifierId ]
							ifFalse: [ currentToken stopPosition + 1 = lookahead startPosition
									ifTrue: [ lookahead value = '['
											ifTrue: [ scanner bracket_identifierId ]
											ifFalse: [ lookahead value = '(' ifTrue: [ scanner paren_identifierId ] ] ] ] ].
			id notNil
				ifTrue: [
					ids := (id = scanner paren_identifierId
						or: [ id = scanner bracket_identifierId
						or: [ id = scanner do_identifierId ] ])
							ifTrue: [ {id} ]
							ifFalse: [ {id. scanner identifierId} ] ] ].
	(currentToken ids includes: scanner dot_opId)
		ifTrue: [ self peekNextToken value = '(' ifTrue: [ ids := {scanner dot_call_opId} ] ].
	ids notNil ifTrue: [ currentToken ids: ids ].
	action := super actionForCurrentToken.
	((action bitAnd: self actionMask) = self errorAction
		and: [ (currentToken ids includes: scanner interpolatedStringEndId) not
				and: [ (currentToken ids includes: scanner interpolatedStringMidId) not
						and: [ currentToken value beginsWith: '}' ] ] ])
		ifTrue: [
			"Re-tokenize from interpolatedString scope so the closing '}' becomes part of an
			 interpolatedStringMid/End token instead of a plain close-curly."
			oldToken := currentToken.
			oldScope := self scope.
			self scope: #interpolatedString.
			self position: currentToken startPosition - 1.
			currentToken := nil.
			self getNextToken.
			self scope: oldScope.
			(currentToken ids first = scanner interpolatedStringMidId
				or: [ currentToken ids first = scanner interpolatedStringEndId ])
				ifTrue: [ ^ self actionForCurrentToken ].
			(self
				rescueInterpolatedStringFrom: oldToken
				midId: scanner interpolatedStringMidId
				endId: scanner interpolatedStringEndId)
				ifTrue: [ ^ self actionForCurrentToken ].
			currentToken := oldToken.
			^ action ].
	((action bitAnd: self actionMask) = self errorAction
		and: [ currentToken value beginsWith: '"' ])
		ifTrue: [
			oldToken := currentToken.
			(self
				rescueInterpolatedStringFrom: oldToken
				midId: scanner interpolatedStringStartId
				endId: scanner stringId)
				ifTrue: [ ^ self actionForCurrentToken ].
			currentToken := oldToken ].
	^ action


]

{ #category : 'private' }
ElixirParser >> actionsForCurrentToken [
	| lookahead ids id actions token position previousState oldScope oldToken char otherActions |
	scanner lastWasEol
		ifTrue: [ actions := OrderedCollection new.
			self addActionsFor: scanner eolId to: actions.
			actions notEmpty
				ifTrue: [ char := currentToken value isEmpty
							ifTrue: [ $  ]
							ifFalse: [ currentToken value first ].
					(')|}<>:' includes: char)
						ifTrue: [ otherActions := super actionsForCurrentToken.
							otherActions notEmpty ifTrue: [ ^ otherActions ] ].
					self shouldSuppressEol
						ifTrue: [ otherActions := super actionsForCurrentToken.
							otherActions notEmpty ifTrue: [ ^ otherActions ] ].
					scanner lastWasEol: false.
					self position: currentToken startPosition - 1.
					currentToken := currentToken class
							value: ''
							start: currentToken startPosition
							ids: {scanner eolId}.
					^ actions ] ].
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
							ifFalse: [ currentToken stopPosition + 1 = lookahead startPosition
									ifTrue: [ lookahead value = '['
											ifTrue: [ scanner bracket_identifierId ]
											ifFalse: [ lookahead value = '(' ifTrue: [ scanner paren_identifierId ] ] ] ] ].
			id notNil
				ifTrue: [
					"F2: paren_/bracket_/do_ identifiers are deterministic; no fallback fork.
					 The original code injected {id. identifierId} for every match, which forced
					 a GLR fork on every function call (~17 forks/char in real Elixir code)."
					ids := (id = scanner paren_identifierId
						or: [ id = scanner bracket_identifierId
						or: [ id = scanner do_identifierId ] ])
							ifTrue: [ {id} ]
							ifFalse: [ {id. scanner identifierId} ] ] ].
	(currentToken ids includes: scanner dot_opId)
		ifTrue: [ self peekNextToken value = '(' ifTrue: [ ids := {scanner dot_call_opId} ] ].
	ids notNil ifTrue: [ currentToken ids: ids ].
	actions := super actionsForCurrentToken.
	(actions isEmpty
		and: [ (currentToken ids includes: scanner interpolatedStringEndId) not
				and: [ (currentToken ids includes: scanner interpolatedStringMidId) not
						and: [ currentToken value beginsWith: '}' ] ] ])
		ifTrue: [ oldToken := currentToken.
			oldScope := self scope.
			self scope: #interpolatedString.
			self position: currentToken startPosition - 1.
			currentToken := nil.
			self getNextToken.
			self scope: oldScope.
			(currentToken ids first = scanner interpolatedStringMidId
				or: [ currentToken ids first = scanner interpolatedStringEndId ])
				ifFalse: [ currentToken := oldToken.
					^ actions ].
			^ self actionsForCurrentToken ].
	^ actions
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFor__interpolatedStringMid___part__expr__expression__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFor__interpolatedStringMid___part__expr__expression___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFor__interpolatedStringMid___part__expr__expression___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr14: nodes [
	| result |
	result := ElixirTrueNode new.
	result _true: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr15: nodes [
	| result |
	result := ElixirFalseNode new.
	result _false: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr16: nodes [
	| result |
	result := ElixirNilNode new.
	result _nil: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr24: nodes [
	| result |
	result := ElixirSigilNode new.
	result sigil: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr25: nodes [
	| result |
	result := ElixirAtomNode new.
	result atom: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr3: nodes [
	| result |
	result := ElixirCaptureNode new.
	result op: (nodes at: 1).
	result int: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr4: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result op: (nodes at: 1).
	result identifier: (nodes at: 2).
	result slash: (nodes at: 3).
	result arity: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr5: nodes [
	| result |
	result := ElixirLambdaNode new.
	result fn: (nodes at: 1).
	result stab: (nodes at: 2).
	result end: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr6: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result stab: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr7: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result semi: (nodes at: 2).
	result stab: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr8: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result semi: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc2: nodes [
	| result |
	result := ElixirAssocNode new.
	result assoc: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_base1: nodes [
	| result |
	result := ElixirAssocBaseNode new.
	result addNode: (nodes at: 1) to: result assocs.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result assocs.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_base3: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 4) to: result assocs.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_expr1: nodes [
	| result |
	result := ElixirAssocExprNode new.
	result key: (nodes at: 1).
	result op: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_expr5: nodes [
	| result |
	result := ElixirAssocExprNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_update1: nodes [
	| result |
	result := ElixirAssocUpdateNode new.
	result expression: (nodes at: 1).
	result pipe: (nodes at: 2).
	result associatoin: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_update2: nodes [
	| result |
	result := ElixirAssocUpdateNode new.
	result expression: (nodes at: 1).
	result pipe: (nodes at: 2).
	result association: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_update_kw1: nodes [
	| result |
	result := ElixirAssocUpdateKwNode new.
	result expression: (nodes at: 1).
	result pipe: (nodes at: 2).
	result kw: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbin_heredoc1: nodes [
	| result |
	result := ElixirBinHeredocNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbin_string1: nodes [
	| result |
	result := ElixirBinStringNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbit_string1: nodes [
	| result |
	result := ElixirBitStringNode new.
	result open: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbit_string2: nodes [
	| result |
	result := ElixirBitStringNode new.
	result open: (nodes at: 1).
	result args: (nodes at: 2).
	result close: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_eoe1: nodes [
	| result |
	result := ElixirBlockEoeNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_eoe2: nodes [
	| result |
	result := ElixirBlockEoeNode new.
	result identifier: (nodes at: 1).
	result eoe: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_expr2: nodes [
	| result |
	result := ElixirBlockExprNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	result call2: (nodes at: 3).
	result do_block: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_expr3: nodes [
	| result |
	result := ElixirBlockExprNode new.
	result identifier: (nodes at: 1).
	result do_block: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_expr5: nodes [
	| result |
	result := ElixirBlockExprNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	result do_block: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_item1: nodes [
	| result |
	result := ElixirBlockItemNode new.
	result block: (nodes at: 1).
	result stab: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_item2: nodes [
	| result |
	result := ElixirBlockItemNode new.
	result block: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_list1: nodes [
	| result |
	result := ElixirBlockListNode new.
	result addNode: (nodes at: 1) to: result items.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_list2: nodes [
	| result |
	result := nodes at: 2.
	result addFirstNode: (nodes at: 1) to: result items.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg1: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg2: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result com: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg3: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result arg: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg4: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result arg: (nodes at: 2).
	result com: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_at_expr2: nodes [
	| result |
	result := ElixirBracketAtExprNode new.
	result op: (nodes at: 1).
	result identifier: (nodes at: 2).
	result arg: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_expr2: nodes [
	| result |
	result := ElixirBracketExprNode new.
	result identifier: (nodes at: 1).
	result arg: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_values1: nodes [

	| result |
	result := ElixirBracketValuesNode new.
	result addNode: (nodes at: 1) to: result values.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_values2: nodes [

	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result values.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_comma_expr1: nodes [
	| result |
	result := ElixirCallArgsNoParensCommaExprNode new.
	result expression: (nodes at: 1).
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result argses.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_comma_expr2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result argses.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_kw1: nodes [
	| result |
	result := ElixirCallArgsNoParensKwNode new.
	result addNode: (nodes at: 1) to: result kws.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_kw2: nodes [
	| result |
	result := nodes at: 3.
	result addFirstNode: (nodes at: 1) to: result kws.
	result addFirstToken: (nodes at: 2) to: result coms.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_kw_expr1: nodes [
	| result |
	result := ElixirCallArgsNoParensKwExprNode new.
	result key: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many1: nodes [
	| result |
	result := ElixirCallArgsNoParensManyNode new.
	result expression: (nodes at: 1).
	result com: (nodes at: 2).
	result args: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many2: nodes [
	| result |
	result := ElixirCallArgsNoParensManyNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many_strict1: nodes [
	| result |
	result := ElixirCallArgsNoParensManyStrictNode new.
	result args: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many_strict3: nodes [
	| result |
	result := ElixirCallArgsNoParensManyStrictNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens1: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result rightParen: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens2: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens3: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result kw: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens4: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result kw: (nodes at: 2).
	result addToken: (nodes at: 3) to: result coms.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens_base1: nodes [
	| result |
	result := ElixirCallArgsParensBaseNode new.
	result addNode: (nodes at: 1) to: result args.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result args.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args1: nodes [
	| result |
	result := ElixirContainerArgsNode new.
	result base: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args2: nodes [
	| result |
	result := ElixirContainerArgsNode new.
	result base: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args3: nodes [
	| result |
	result := ElixirContainerArgsNode new.
	result base: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args_base1: nodes [
	| result |
	result := ElixirContainerArgsBaseNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block1: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result end: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block2: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result stab: (nodes at: 2).
	result end: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block3: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result block: (nodes at: 2).
	result end: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block4: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result stab: (nodes at: 2).
	result block: (nodes at: 3).
	result end: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordo_eoe1: nodes [
	| result |
	result := ElixirDoEoeNode new.
	result do: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordo_eoe2: nodes [
	| result |
	result := ElixirDoEoeNode new.
	result do: (nodes at: 1).
	result eoe: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias1: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result alias: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias2: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result alias: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias3: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result leftCurly: (nodes at: 3).
	result rightCurly: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_bracket_identifier1: nodes [
	| result |
	result := ElixirDotBracketIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_bracket_identifier2: nodes [
	| result |
	result := ElixirDotBracketIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_call_identifier1: nodes [
	| result |
	result := ElixirDotCallIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_call_identifier2: nodes [
	| result |
	result := ElixirDotCallIdentifierNode new.
	result identifier: (nodes at: 1).
	result op: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_do_identifier1: nodes [
	| result |
	result := ElixirDotDoIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_do_identifier2: nodes [
	| result |
	result := ElixirDotDoIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_identifier1: nodes [
	| result |
	result := ElixirDotIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_identifier2: nodes [
	| result |
	result := ElixirDotIdentifierNode new.
	result expression: (nodes at: 1).
	result dot: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_op_identifier1: nodes [

	| result |
	result := ElixirDotOpIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_op_identifier2: nodes [

	| result |
	result := ElixirDotOpIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_paren_identifier1: nodes [
	| result |
	result := ElixirDotParenIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_paren_identifier2: nodes [
	| result |
	result := ElixirDotParenIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForempty_paren1: nodes [
	| result |
	result := ElixirEmptyParenNode new.
	result leftParen: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForend_eoe1: nodes [
	| result |
	result := ElixirEndEoeNode new.
	result end: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForend_eoe2: nodes [
	| result |
	result := ElixirEndEoeNode new.
	result eoe: (nodes at: 1).
	result end: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForexpr_list1: nodes [
	| result |
	result := ElixirExprListNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForexpr_list2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result eoes.
	result addNode: (nodes at: 3) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForfn_eoe1: nodes [
	| result |
	result := ElixirFnEoeNode new.
	result fn: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForfn_eoe2: nodes [
	| result |
	result := ElixirFnEoeNode new.
	result fn: (nodes at: 1).
	result eoe: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar1: nodes [
	| result |
	result := ElixirGrammarNode new.
	result addToken: (nodes at: 1) to: result eoes.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar2: nodes [
	| result |
	result := ElixirGrammarNode new.
	result expressions: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar3: nodes [
	| result |
	result := ElixirGrammarNode new.
	result addToken: (nodes at: 1) to: result eoes.
	result expressions: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar4: nodes [
	| result |
	result := ElixirGrammarNode new.
	result expressions: (nodes at: 1).
	result addToken: (nodes at: 2) to: result eoes.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar5: nodes [
	| result |
	result := ElixirGrammarNode new.
	result addToken: (nodes at: 1) to: result eoes.
	result expressions: (nodes at: 2).
	result addToken: (nodes at: 3) to: result eoes.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar6: nodes [
	| result |
	result := ElixirGrammarNode new.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForinterpolated_atom1: nodes [
	| result |
	result := ElixirInterpolatedAtomNode new.
	result addToken: (nodes at: 1) to: result parts.
	result addNode: (nodes at: 2) to: result expressions.
	result addTokens: ((nodes at: 3) at: 1) to: result parts.
	result addNodes: ((nodes at: 3) at: 2) to: result expressions.
	result addToken: (nodes at: 4) to: result parts.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForinterpolated_string1: nodes [
	| result |
	result := ElixirInterpolatedStringNode new.
	result addToken: (nodes at: 1) to: result parts.
	result addNode: (nodes at: 2) to: result expressions.
	result addTokens: ((nodes at: 3) at: 1) to: result parts.
	result addNodes: ((nodes at: 3) at: 2) to: result expressions.
	result addToken: (nodes at: 4) to: result parts.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForkw1: nodes [

	| result |
	result := ElixirKwNode new.
	result kw: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForkw2: nodes [

	| result |
	result := ElixirKwNode new.
	result kw: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForkw_base1: nodes [
	| result |
	result := ElixirKwBaseNode new.
	result addToken: (nodes at: 1) to: result keys.
	result addNode: (nodes at: 2) to: result values.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForkw_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addToken: (nodes at: 3) to: result keys.
	result addNode: (nodes at: 4) to: result values.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForkw_base3: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addToken: (nodes at: 4) to: result keys.
	result addNode: (nodes at: 5) to: result values.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist1: nodes [
	| result |
	result := ElixirListNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist2: nodes [
	| result |
	result := ElixirListNode new.
	result leftBracket: (nodes at: 1).
	result args: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist3: nodes [
	| result |
	result := ElixirListNode new.
	result leftBracket: (nodes at: 1).
	result args: (nodes at: 2).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args1: nodes [
	| result |
	result := ElixirListArgsNode new.
	result kw: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args2: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args3: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args5: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args6: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_heredoc1: nodes [
	| result |
	result := ElixirListHeredocNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_string1: nodes [
	| result |
	result := ElixirListStringNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap2: nodes [
	| result |
	result := ElixirMapNode new.
	result cen: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap3: nodes [
	| result |
	result := ElixirMapNode new.
	result cen: (nodes at: 1).
	result args: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap4: nodes [
	| result |
	result := ElixirMapNode new.
	result cen: (nodes at: 1).
	result struct: (nodes at: 2).
	result args: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args1: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result rightCurly: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args2: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result kw: ((nodes at: 2) at: 1).
	result rightCurly: ((nodes at: 2) at: 2).
	result addNode: ((nodes at: 2) at: 3) to: result associations.
	result addToken: ((nodes at: 2) at: 4) to: result coms.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args3: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result addNode: (nodes at: 2) to: result associations.
	result rightCurly: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args4: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result addNode: (nodes at: 2) to: result associations.
	result addToken: (nodes at: 3) to: result coms.
	result rightCurly: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args5: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result addNode: (nodes at: 2) to: result associations.
	result addToken: (nodes at: 3) to: result coms.
	result rightCurly: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args6: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result addNode: (nodes at: 2) to: result associations.
	result addToken: (nodes at: 3) to: result coms.
	result kw: ((nodes at: 4) at: 1).
	result rightCurly: ((nodes at: 4) at: 2).
	result addNode: ((nodes at: 4) at: 3) to: result associations.
	result addToken: ((nodes at: 4) at: 4) to: result coms.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args7: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result addNode: (nodes at: 2) to: result associations.
	result addToken: (nodes at: 3) to: result coms.
	result kw: ((nodes at: 5) at: 1).
	result rightCurly: ((nodes at: 5) at: 2).
	result addNode: ((nodes at: 5) at: 3) to: result associations.
	result addToken: ((nodes at: 5) at: 4) to: result coms.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_base_expr1: nodes [
	| result |
	result := ElixirMapBaseExprNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close2: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close3: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (nodes at: 1).
	result at: 4 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close4: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (nodes at: 1).
	result at: 4 put: (nodes at: 2).
	result at: 1 put: (nodes at: 4).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr1: nodes [
	| result |
	result := nodes at: 1.
	result addNode: (nodes at: 2) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr4: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result ops.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr5: nodes [
	| result |
	result := ElixirMatchedExprNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_op_expr14: nodes [
	| result |
	result := ElixirMatchedOpExprNode new.
	result op: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_expr1: nodes [
	| result |
	result := ElixirNoParensExprNode new.
	result expression: (nodes at: 1).
	result expressoin: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_expr5: nodes [
	| result |
	result := ElixirNoParensExprNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_many_expr2: nodes [
	| result |
	result := ElixirNoParensManyExprNode new.
	result identifier: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_one_ambig_expr2: nodes [
	| result |
	result := ElixirNoParensOneAmbigExprNode new.
	result identifier: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_one_expr2: nodes [
	| result |
	result := ElixirNoParensOneExprNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_op_expr13: nodes [
	| result |
	result := ElixirNoParensOpExprNode new.
	result op: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFornumber1: nodes [
	| result |
	result := ElixirNumberNode new.
	result int: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFornumber2: nodes [
	| result |
	result := ElixirNumberNode new.
	result float: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFornumber3: nodes [
	| result |
	result := ElixirNumberNode new.
	result char: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForparens_call1: nodes [
	| result |
	result := ElixirParensCallNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForparens_call2: nodes [
	| result |
	result := ElixirParensCallNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	result call2: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab1: nodes [
	| result |
	result := ElixirStabNode new.
	result addNode: (nodes at: 1) to: result stabs.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result eoes.
	result addNode: (nodes at: 3) to: result stabs.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_eoe2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result eoes.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_expr1: nodes [
	| result |
	result := ElixirStabExprNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_expr3: nodes [
	| result |
	result := ElixirStabExprNode new.
	result args: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_expr4: nodes [

	| result |
	result := ElixirStabExprNode new.
	result args: (nodes at: 1).
	result when: (nodes at: 2).
	result guard: (nodes at: 3).
	result expression: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_op_eol_and_expr1: nodes [
	| result |
	result := ElixirStabOpEolAndExprNode new.
	result op: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_op_eol_and_expr2: nodes [
	| result |
	result := ElixirStabOpEolAndExprNode new.
	result op: (nodes at: 1).
	result body: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_parens_many2: nodes [

	| result |
	result := ElixirStabParensManyNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForsub_matched_expr1: nodes [
	| result |
	result := ElixirSubMatchedExprNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForsub_matched_expr3: nodes [
	| result |
	result := ElixirSubMatchedExprNode new.
	result expression: (nodes at: 1).
	result identifier: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFortuple1: nodes [
	| result |
	result := ElixirTupleNode new.
	result leftCurly: (nodes at: 1).
	result rightCurly: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFortuple2: nodes [
	| result |
	result := ElixirTupleNode new.
	result leftCurly: (nodes at: 1).
	result elements: (nodes at: 2).
	result rightCurly: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_expr1: nodes [
	| result |
	result := ElixirUnmatchedExprNode new.
	result matched: (nodes at: 1).
	result addNode: (nodes at: 2) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_expr7: nodes [
	| result |
	result := ElixirUnmatchedExprNode new.
	result op: (nodes at: 1).
	result addNode: (nodes at: 2) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_expr8: nodes [
	| result |
	result := ElixirUnmatchedExprNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_op_expr13: nodes [
	| result |
	result := ElixirUnmatchedOpExprNode new.
	result op: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'private' }
ElixirParser >> rescueInterpolatedStringFrom: oldToken midId: midId endId: endId [

	"Walk source forward from oldToken's start+1, looking for the next
	 unescaped #{ (synthesize a token with midId) or closing quote
	 (synthesize a token with endId). Returns true if currentToken was
	 replaced. Used by both the }-rescue and the quote-rescue paths."

	| contents pos size foundMid foundEnd endPos newId |
	oldToken ifNil: [ ^ false ].
	contents := scanner stream contents.
	size := contents size.
	pos := oldToken startPosition + 1.
	foundMid := false.
	foundEnd := false.
	[ pos <= size and: [ foundMid not and: [ foundEnd not ] ] ] whileTrue: [
		| ch |
		ch := contents at: pos.
		ch = $\
			ifTrue: [ pos := pos + 2 ]
			ifFalse: [ (ch = $# and: [ pos < size and: [ (contents at: pos + 1) = ${ ] ])
				ifTrue: [ foundMid := true ]
				ifFalse: [ ch = (Character value: 34)
					ifTrue: [ foundEnd := true ]
					ifFalse: [ pos := pos + 1 ] ] ] ].
	(foundMid or: [ foundEnd ]) ifFalse: [ ^ false ].
	endPos := foundMid ifTrue: [ pos + 1 ] ifFalse: [ pos ].
	newId := foundMid ifTrue: [ midId ] ifFalse: [ endId ].
	self position: endPos.
	currentToken := oldToken class
		value: (contents copyFrom: oldToken startPosition to: endPos)
		start: oldToken startPosition
		ids: { newId }.
	^ true

]

{ #category : 'private' }
ElixirParser >> shouldSuppressEol [
	"Suppress eol injection after binary operators and keyword identifiers.
	 Replicates what the original Elixir tokenizer does by not emitting eol
	 after operators, reducing GLR ambiguity and improving performance."
	| prev |
	prev := scanner lastTokenValue.
	prev ifNil: [ ^ false ].
	(#('=' '+' '-' '*' '/' '|>' '||' '|||' '&&' '&&&' '==' '!=' '===' '!=='
	   '=~' '<=' '>=' '<-' '\\' '|' '=>' '::' '..'
	   '++' '--' '<>' '^^^' '<<<' '>>>' '<<~' '~>>' '~>' '<~' '<~>' '<|>'
	   'not' 'when' 'in' 'and' 'or' 'not in') includes: prev) ifTrue: [ ^ true ].
	(prev notEmpty and: [ prev last = $: ]) ifTrue: [ ^ true ].
	^ false
]

{ #category : 'private-actions' }
ElixirParser >> tryAllTokens [
	"Multi-id tokens (e.g. identifier+block_identifier for __MODULE__-style names) need each
	 alternative tried; first non-error action wins."

	^ true
]
