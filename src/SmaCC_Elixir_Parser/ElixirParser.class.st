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
	^'2024-11-03T13:28:35.356299+08:00'
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
%start grammar;

<block_identifier>
	: <identifier> # Seems to be related to unsfae_atoms
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
	| open_paren 'leftParen' stab'stab' "";"" 'semi' close_paren'rightParen' {{}}
	| open_paren 'leftParen' "";"" 'semi' stab'stab'"";"" 'semi' close_paren'rightParen' {{}}
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
	: bracket_value 'value'{{}}
	| bracket_values "","" 'com' bracket_value 'value' {{}}
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
	| stab'stab' eoe 'eoe'  {{}}
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
	| open_paren 'leftParen' call_args_no_parens_kw'args' close_paren'rightParen' {{}}
	| open_paren 'leftParen' call_args_no_parens_many'args' close_paren'rightParen' {{}}
	;

stab_parens_many 
	: open_paren 'leftParen' call_args_no_parens_kw'args' close_paren'rightParen' {{}}
	| open_paren 'leftParen' call_args_no_parens_many'args' close_paren'rightParen' {{}}
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
	: kw_base 'kw' "","" 'com' ? {{}}
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
	#(59 0 #reduceActionForgrammar6: 5685254 false) 
	#(97 1 #liftFirstValue: 16307201 false) 
	#(102 1 #liftFirstValue: 16471041 false) 
	#(100 1 #liftFirstValue: 16417793 false) 
	#(73 1 #reduceActionForaccess_expr16: 12725264 false) 
	#(87 1 #reduceActionForfn_eoe1: 15067137 false) 
	#(73 1 #reduceActionForaccess_expr17: 12725265 false) 
	#(73 1 #reduceActionForaccess_expr15: 12725263 false) 
	#(104 1 #liftFirstValue: 16518145 false) 
	#(78 1 #reduceActionFornumber1: 13810689 false) 
	#(73 1 #reduceActionForaccess_expr24: 12725272 false) 
	#(74 1 #reduceActionForbin_string1: 13615105 false) 
	#(76 1 #reduceActionForbin_heredoc1: 13704193 false) 
	#(75 1 #reduceActionForlist_string1: 13658113 false) 
	#(77 1 #reduceActionForlist_heredoc1: 13756417 false) 
	#(86 1 #liftFirstValue: 15032321 false) 
	#(143 1 #liftFirstValue: 22263809 false) 
	#(106 1 #liftFirstValue: 16592898 false) 
	#(106 1 #liftFirstValue: 16592897 false) 
	#(78 1 #reduceActionFornumber2: 13810690 false) 
	#(78 1 #reduceActionFornumber3: 13810691 false) 
	#(73 1 #reduceActionForaccess_expr23: 12725271 false) 
	#(107 1 #reduceActionFordot_identifier1: 16665601 false) 
	#(108 1 #reduceActionFordot_alias1: 16794625 false) 
	#(86 1 #liftFirstValue: 15032322 false) 
	#(59 1 #reduceActionForgrammar2: 5685250 false) 
	#(60 1 #reduceActionForexpr_list1: 5933057 false) 
	#(61 1 #liftFirstValue: 6022145 false) 
	#(61 1 #liftFirstValue: 6022147 false) 
	#(61 1 #liftFirstValue: 6022146 false) 
	#(63 1 #reduceActionForunmatched_expr8: 8053768 false) 
	#(64 1 #reduceActionForno_parens_expr5: 8455173 false) 
	#(64 1 #reduceActionForno_parens_expr5: 8455174 false) 
	#(62 1 #reduceActionFormatched_expr5: 7693317 false) 
	#(62 1 #reduceActionFormatched_expr5: 7693318 false) 
	#(62 1 #reduceActionFormatched_expr5: 7693319 false) 
	#(73 1 #liftFirstValue: 12725266 false) 
	#(73 1 #liftFirstValue: 12725267 false) 
	#(73 1 #liftFirstValue: 12725268 false) 
	#(73 1 #liftFirstValue: 12725269 false) 
	#(73 1 #liftFirstValue: 12725259 false) 
	#(73 1 #liftFirstValue: 12725274 false) 
	#(73 1 #liftFirstValue: 12725250 false) 
	#(73 1 #liftFirstValue: 12725249 false) 
	#(59 1 #reduceActionForgrammar1: 5685249 false) 
	#(73 1 #liftFirstValue: 12725258 false) 
	#(72 1 #liftFirstValue: 12405762 false) 
	#(73 1 #liftFirstValue: 12725273 false) 
	#(72 1 #liftFirstValue: 12405761 false) 
	#(113 1 #reduceActionFordot_call_identifier1: 17682433 false) 
	#(73 1 #liftFirstValue: 12725260 false) 
	#(73 1 #liftFirstValue: 12725262 false) 
	#(73 1 #liftFirstValue: 12725270 false) 
	#(73 1 #liftFirstValue: 12725261 false) 
	#(111 1 #reduceActionFordot_bracket_identifier1: 17383425 false) 
	#(110 1 #reduceActionFordot_do_identifier1: 17245185 false) 
	#(109 1 #reduceActionFordot_op_identifier1: 17104897 false) 
	#(112 1 #reduceActionFordot_paren_identifier1: 17536001 false) 
	#(87 2 #reduceActionForfn_eoe2: 15067138 false) 
	#(146 1 #reduceActionForstruct_expr1: 22935553 false) 
	#(146 1 #reduceActionForstruct_expr1: 22935558 false) 
	#(146 1 #reduceActionForstruct_expr1: 22935555 false) 
	#(146 1 #reduceActionForstruct_expr1: 22935554 false) 
	#(147 2 #reduceActionFormap2: 23148546 false) 
	#(73 2 #reduceActionForaccess_expr3: 12725251 false) 
	#(63 2 #reduceActionForunmatched_expr7: 8053767 false) 
	#(62 2 #reduceActionFormatched_expr4: 7693316 false) 
	#(64 2 #reduceActionFormatched_expr4: 8455172 false) 
	#(63 2 #reduceActionForunmatched_expr7: 8053766 false) 
	#(62 2 #reduceActionFormatched_expr4: 7693315 false) 
	#(64 2 #reduceActionFormatched_expr4: 8455171 false) 
	#(59 2 #reduceActionForgrammar4: 5685252 false) 
	#(113 2 #reduceActionFordot_call_identifier2: 17682434 false) 
	#(62 2 #reduceActionFormatched_expr1: 7693313 false) 
	#(63 2 #reduceActionForunmatched_expr1: 8053761 false) 
	#(64 2 #reduceActionForno_parens_expr1: 8455169 false) 
	#(63 2 #reduceActionFormatched_expr1: 8053762 false) 
	#(63 2 #reduceActionFormatched_expr1: 8053763 false) 
	#(63 2 #reduceActionFormatched_expr1: 8053764 false) 
	#(62 2 #reduceActionFormatched_expr8: 7693320 false) 
	#(83 2 #reduceActionForbracket_expr2: 14524418 false) 
	#(59 2 #reduceActionForgrammar3: 5685251 false) 
	#(94 1 #reduceActionForstab_op_eol_and_expr1: 16069633 false) 
	#(128 1 #liftFirstValue: 20249601 false) 
	#(93 1 #reduceActionForstab_expr1: 15600641 false) 
	#(117 1 #liftFirstValue: 18223106 false) 
	#(118 1 #liftFirstValue: 18297857 false) 
	#(91 1 #reduceActionForstab1: 15356929 false) 
	#(93 1 #reduceActionForstab_expr1: 15600642 false) 
	#(119 1 #reduceActionForcall_args_no_parens_many2: 18349058 false) 
	#(116 1 #liftFirstValue: 18104321 false) 
	#(116 1 #liftFirstValue: 18104322 false) 
	#(116 1 #liftFirstValue: 18104323 false) 
	#(132 1 #reduceActionForcall_args_no_parens_kw1: 20657153 false) 
	#(117 1 #liftFirstValue: 18223105 false) 
	#(99 2 #reduceActionForempty_paren1: 16356353 false) 
	#(134 2 #reduceActionForlist1: 20993025 false) 
	#(122 1 #liftFirstValue: 19061761 false) 
	#(122 1 #liftFirstValue: 19061762 false) 
	#(122 1 #liftFirstValue: 19061763 false) 
	#(123 1 #reduceActionForcontainer_args_base1: 19138561 false) 
	#(133 1 #reduceActionForlist_args2: 20812802 false) 
	#(130 1 #reduceActionForkw1: 20497409 false) 
	#(133 1 #reduceActionForlist_args1: 20812801 false) 
	#(136 2 #reduceActionForbit_string1: 21280769 false) 
	#(124 1 #reduceActionForcontainer_args1: 19267585 false) 
	#(135 2 #reduceActionFortuple1: 21136385 false) 
	#(63 2 #reduceActionForunmatched_expr7: 8053765 false) 
	#(62 2 #reduceActionFormatched_expr4: 7693314 false) 
	#(64 2 #reduceActionFormatched_expr4: 8455170 false) 
	#(71 2 #reduceActionForno_parens_one_expr2: 12246018 false) 
	#(69 2 #reduceActionForno_parens_one_ambig_expr2: 11873282 false) 
	#(120 1 #reduceActionForcall_args_no_parens_many_strict1: 18598913 false) 
	#(70 2 #reduceActionForno_parens_many_expr2: 12055554 false) 
	#(71 2 #reduceActionForno_parens_one_expr2: 12246017 false) 
	#(69 2 #reduceActionForno_parens_one_ambig_expr2: 11873281 false) 
	#(70 2 #reduceActionForno_parens_many_expr2: 12055553 false) 
	#(88 1 #reduceActionFordo_eoe1: 15126529 false) 
	#(65 2 #reduceActionForblock_expr3: 8742915 false) 
	#(83 2 #reduceActionForbracket_expr2: 14524417 false) 
	#(79 2 #reduceActionForparens_call1: 13922305 false) 
	#(147 2 #reduceActionFormap2: 23148545 false) 
	#(146 2 #reduceActionFormatched_expr4: 22935556 false) 
	#(145 2 #reduceActionFormap_args1: 22464513 false) 
	#(138 1 #reduceActionForassoc_expr6: 21456902 false) 
	#(138 1 #reduceActionForassoc_expr6: 21456901 false) 
	#(141 1 #reduceActionForassoc_base1: 22099969 false) 
	#(142 1 #liftFirstValue: 22192129 false) 
	#(145 2 #reduceActionFormap_args1: 22464514 false) 
	#(146 2 #reduceActionFormatched_expr4: 22935557 false) 
	#(147 3 #reduceActionFormap3: 23148547 false) 
	#(84 3 #reduceActionForbracket_at_expr2: 14654466 false) 
	#(84 3 #reduceActionForbracket_at_expr2: 14654465 false) 
	#(60 3 #reduceActionForexpr_list2: 5933058 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191438 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036237 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827789 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191435 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036235 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827787 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827794 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191434 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036234 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827786 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191436 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036236 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827788 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191425 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036225 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827777 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191431 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036231 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827783 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191430 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036230 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827782 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191437 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036238 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827790 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191439 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036239 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827791 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827792 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827793 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191440 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191432 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036232 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827784 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191429 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036229 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827781 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191428 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036228 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827780 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191426 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036226 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827778 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191427 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036227 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827779 false) 
	#(66 2 #reduceActionFormatched_op_expr14: 9191433 false) 
	#(67 2 #reduceActionForunmatched_op_expr13: 10036233 false) 
	#(68 2 #reduceActionForno_parens_op_expr13: 10827785 false) 
	#(107 3 #reduceActionFordot_identifier2: 16665602 false) 
	#(108 3 #reduceActionFordot_alias2: 16794626 false) 
	#(111 3 #reduceActionFordot_bracket_identifier2: 17383426 false) 
	#(110 3 #reduceActionFordot_do_identifier2: 17245186 false) 
	#(109 3 #reduceActionFordot_op_identifier2: 17104898 false) 
	#(112 3 #reduceActionFordot_paren_identifier2: 17536002 false) 
	#(101 1 #liftFirstValue: 16443393 false) 
	#(81 1 #reduceActionForbracket_values1: 14149633 false) 
	#(82 2 #reduceActionForbracket_arg1: 14263297 false) 
	#(80 1 #liftFirstValue: 14094338 false) 
	#(80 1 #liftFirstValue: 14094337 false) 
	#(59 3 #reduceActionForgrammar5: 5685253 false) 
	#(94 2 #reduceActionForstab_op_eol_and_expr2: 16069634 false) 
	#(89 1 #reduceActionForend_eoe1: 15185921 false) 
	#(73 3 #reduceActionForaccess_expr4: 12725252 false) 
	#(93 2 #reduceActionForstab_expr3: 15600643 false) 
	#(93 2 #reduceActionForstab_expr3: 15600645 false) 
	#(93 2 #reduceActionForstab_expr3: 15600646 false) 
	#(131 2 #reduceActionForcall_args_no_parens_kw_expr1: 20539393 false) 
	#(131 2 #reduceActionForcall_args_no_parens_kw_expr1: 20539394 false) 
	#(98 1 #liftFirstValue: 16330753 false) 
	#(73 3 #reduceActionForaccess_expr9: 12725257 false) 
	#(73 3 #reduceActionForaccess_expr5: 12725253 false) 
	#(133 2 #reduceActionForlist_args3: 20812803 false) 
	#(129 2 #reduceActionForkw_base1: 20376577 false) 
	#(130 2 #reduceActionForkw2: 20497410 false) 
	#(134 3 #reduceActionForlist2: 20993026 false) 
	#(124 2 #reduceActionForcontainer_args2: 19267586 false) 
	#(103 1 #liftFirstValue: 16493569 false) 
	#(136 3 #reduceActionForbit_string2: 21280770 false) 
	#(105 1 #liftFirstValue: 16541697 false) 
	#(135 3 #reduceActionFortuple2: 21136386 false) 
	#(65 3 #reduceActionForblock_expr5: 8742917 false) 
	#(65 3 #reduceActionForblock_expr5: 8742916 false) 
	#(88 2 #reduceActionFordo_eoe2: 15126530 false) 
	#(85 2 #reduceActionFordo_block1: 14825473 false) 
	#(90 1 #reduceActionForblock_eoe1: 15250433 false) 
	#(95 1 #reduceActionForblock_item2: 16133122 false) 
	#(92 1 #reduceActionForstab_eoe1: 15433729 false) 
	#(96 1 #reduceActionForblock_list1: 16216065 false) 
	#(127 2 #reduceActionForcall_args_parens1: 19630081 false) 
	#(125 1 #liftFirstValue: 19411969 false) 
	#(125 1 #liftFirstValue: 19411970 false) 
	#(125 1 #liftFirstValue: 19411971 false) 
	#(126 1 #reduceActionForcall_args_parens_base1: 19495937 false) 
	#(65 3 #reduceActionForblock_expr5: 8742913 false) 
	#(79 3 #reduceActionForparens_call2: 13922306 false) 
	#(137 1 #liftFirstValue: 21419009 false) 
	#(144 2 #reduceActionFormap_close1: 22294529 false) 
	#(145 3 #reduceActionFormap_args3: 22464515 false) 
	#(145 3 #reduceActionFormap_args3: 22464518 false) 
	#(142 2 #reduceActionForassoc2: 22192130 false) 
	#(144 2 #reduceActionFormap_close2: 22294530 false) 
	#(108 4 #reduceActionFordot_alias3: 16794627 false) 
	#(82 3 #reduceActionForbracket_arg2: 14263298 false) 
	#(82 3 #reduceActionForbracket_arg3: 14263299 false) 
	#(114 1 #liftFirstValue: 17842177 false) 
	#(114 1 #liftFirstValue: 17842178 false) 
	#(115 3 #reduceActionForcall_args_no_parens_comma_expr1: 17909761 false) 
	#(119 3 #reduceActionForcall_args_no_parens_many1: 18349057 false) 
	#(89 2 #reduceActionForend_eoe2: 15185922 false) 
	#(91 3 #reduceActionForstab2: 15356930 false) 
	#(121 3 #reduceActionForstab_parens_many2: 18850818 false) 
	#(121 3 #reduceActionForstab_parens_many2: 18850817 false) 
	#(115 3 #reduceActionForcall_args_no_parens_comma_expr2: 17909762 false) 
	#(119 3 #reduceActionForcall_args_no_parens_many1: 18349059 false) 
	#(132 3 #reduceActionForcall_args_no_parens_kw2: 20657154 false) 
	#(73 4 #reduceActionForaccess_expr8: 12725256 false) 
	#(73 4 #reduceActionForaccess_expr6: 12725254 false) 
	#(123 3 #reduceActionForcontainer_args_base2: 19138562 false) 
	#(133 3 #reduceActionForlist_args4: 20812804 false) 
	#(124 3 #reduceActionForcontainer_args3: 19267587 false) 
	#(120 3 #reduceActionForcall_args_no_parens_many_strict3: 18598915 false) 
	#(120 3 #reduceActionForcall_args_no_parens_many_strict3: 18598914 false) 
	#(90 2 #reduceActionForblock_eoe2: 15250434 false) 
	#(95 2 #reduceActionForblock_item1: 16133121 false) 
	#(92 2 #reduceActionForstab_eoe2: 15433730 false) 
	#(85 3 #reduceActionFordo_block2: 14825474 false) 
	#(96 2 #reduceActionForblock_list2: 16216066 false) 
	#(85 3 #reduceActionFordo_block3: 14825475 false) 
	#(127 3 #reduceActionForcall_args_parens2: 19630082 false) 
	#(127 3 #reduceActionForcall_args_parens2: 19630085 false) 
	#(127 3 #reduceActionForcall_args_parens3: 19630083 false) 
	#(65 4 #reduceActionForblock_expr2: 8742914 false) 
	#(140 3 #reduceActionForassoc_update_kw1: 21956609 false) 
	#(139 3 #reduceActionForassoc_update1: 21784577 false) 
	#(138 3 #reduceActionForassoc_expr1: 21456897 false) 
	#(138 3 #reduceActionForassoc_expr1: 21456899 false) 
	#(140 3 #reduceActionForassoc_update_kw1: 21956610 false) 
	#(139 3 #reduceActionForassoc_update2: 21784578 false) 
	#(138 3 #reduceActionForassoc_expr1: 21456900 false) 
	#(138 3 #reduceActionForassoc_expr1: 21456898 false) 
	#(145 4 #reduceActionFormap_args4: 22464516 false) 
	#(145 4 #reduceActionFormap_args4: 22464517 false) 
	#(141 3 #reduceActionForassoc_base2: 22099970 false) 
	#(108 5 #reduceActionFordot_alias4: 16794628 false) 
	#(81 3 #reduceActionForbracket_values2: 14149634 false) 
	#(82 4 #reduceActionForbracket_arg4: 14263300 false) 
	#(93 4 #reduceActionForstab_expr4: 15600644 false) 
	#(93 4 #reduceActionForstab_expr4: 15600647 false) 
	#(73 5 #reduceActionForaccess_expr7: 12725255 false) 
	#(129 4 #reduceActionForkw_base2: 20376578 false) 
	#(85 4 #reduceActionFordo_block4: 14825476 false) 
	#(126 3 #reduceActionForcall_args_parens_base2: 19495938 false) 
	#(127 4 #reduceActionForcall_args_parens4: 19630084 false) 
	#(144 4 #reduceActionFormap_close3: 22294531 false) 
	#(127 5 #reduceActionForcall_args_parens6: 19630086 false) 
	#(127 6 #reduceActionForcall_args_parens7: 19630087 false)
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
	^ #('"("' '")"' '","' '";"' '"<<"' '">>"' '"["' '"]"' '"do"' '"end"' '"false"' '"fn"' '"nil"' '"true"' '"{"' '"}"' '<int>' '<atom>' '<string>' '<string_heredoc>' '<charlist>' '<charlist_heredoc>' '<whitespace>' '<comment>' '<eol>' '<struct_op>' '<map_op>' '<stab_op>' '<comp_op>' '<when_op>' '<type_op>' '<pipe_op>' '<assoc_op>' '<capture_op>' '<match_op>' '<or_op>' '<and_op>' '<rel_op>' '<arrow_op>' '<in_op>' '<three_op>' '<two_op>' '<dual_op>' '<mult_op>' '<unary_op>' '<at_op>' '<flt>' '<char>' '<in_match_op>' '<dot_op>' '<sigil>' '<identifier>' '<kw_identifier>' '<alias>' '<semicolon>' '<block_identifier>' '<dot_call_op>' 'B e g i n' 'grammar' 'expr_list' 'expr' 'matched_expr' 'unmatched_expr' 'no_parens_expr' 'block_expr' 'matched_op_expr' 'unmatched_op_expr' 'no_parens_op_expr' 'no_parens_one_ambig_expr' 'no_parens_many_expr' 'no_parens_one_expr' 'no_parens_zero_expr' 'access_expr' 'bin_string' 'list_string' 'bin_heredoc' 'list_heredoc' 'number' 'parens_call' 'bracket_value' 'bracket_values' 'bracket_arg' 'bracket_expr' 'bracket_at_expr' 'do_block' 'eoe' 'fn_eoe' 'do_eoe' 'end_eoe' 'block_eoe' 'stab' 'stab_eoe' 'stab_expr' 'stab_op_eol_and_expr' 'block_item' 'block_list' 'open_paren' 'close_paren' 'empty_paren' 'open_bracket' 'close_bracket' 'open_bit' 'close_bit' 'open_curly' 'close_curly' 'unary_op_eol' 'dot_identifier' 'dot_alias' 'dot_op_identifier' 'dot_do_identifier' 'dot_bracket_identifier' 'dot_paren_identifier' 'dot_call_identifier' 'call_args_no_parens_expr' 'call_args_no_parens_comma_expr' 'call_args_no_parens_all' 'call_args_no_parens_one' 'call_args_no_parens_ambig' 'call_args_no_parens_many' 'call_args_no_parens_many_strict' 'stab_parens_many' 'container_expr' 'container_args_base' 'container_args' 'call_args_parens_expr' 'call_args_parens_base' 'call_args_parens' 'kw_eol' 'kw_base' 'kw' 'call_args_no_parens_kw_expr' 'call_args_no_parens_kw' 'list_args' 'list' 'tuple' 'bit_string' 'assoc_op_eol' 'assoc_expr' 'assoc_update' 'assoc_update_kw' 'assoc_base' 'assoc' 'map_op' 'map_close' 'map_args' 'struct_expr' 'map' '<bracket_identifier>' '<do_identifier>' '<op_identifier>' '<paren_identifier>' 'E O F' 'error')
]

{ #category : #generated }
ElixirParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirGrammarNode #ElixirGrammarNode #ElixirExprListNode #ElixirProgramNode #ElixirMatchedExprNode #ElixirUnmatchedExprNode #ElixirNoParensExprNode #ElixirBlockExprNode #ElixirMatchedOpExprNode #ElixirUnmatchedOpExprNode #ElixirNoParensOpExprNode #ElixirNoParensOneAmbigExprNode #ElixirNoParensManyExprNode #ElixirNoParensOneExprNode #ElixirProgramNode #ElixirProgramNode #ElixirBinStringNode #ElixirListStringNode #ElixirBinHeredocNode #ElixirListHeredocNode #ElixirNumberNode #ElixirParensCallNode #ElixirProgramNode #ElixirBracketValuesNode #ElixirBracketArgNode #ElixirBracketExprNode #ElixirBracketAtExprNode #ElixirDoBlockNode #SmaCCToken #ElixirFnEoeNode #ElixirDoEoeNode #ElixirEndEoeNode #ElixirBlockEoeNode #ElixirStabNode #ElixirStabEoeNode #ElixirStabExprNode #ElixirStabOpEolAndExprNode #ElixirBlockItemNode #ElixirBlockListNode #SmaCCToken #SmaCCToken #ElixirEmptyParenNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirDotIdentifierNode #ElixirDotAliasNode #ElixirDotOpIdentifierNode #ElixirDotDoIdentifierNode #ElixirDotBracketIdentifierNode #ElixirDotParenIdentifierNode #ElixirDotCallIdentifierNode #ElixirProgramNode #ElixirCallArgsNoParensCommaExprNode #ElixirProgramNode #ElixirProgramNode #ElixirNoParensExprNode #ElixirCallArgsNoParensManyNode #ElixirCallArgsNoParensManyStrictNode #ElixirStabParensManyNode #ElixirProgramNode #ElixirContainerArgsBaseNode #ElixirContainerArgsNode #ElixirProgramNode #ElixirCallArgsParensBaseNode #ElixirCallArgsParensNode #SmaCCToken #ElixirKwBaseNode #ElixirKwNode #ElixirCallArgsNoParensKwExprNode #ElixirCallArgsNoParensKwNode #ElixirListArgsNode #ElixirListNode #ElixirTupleNode #ElixirBitStringNode #SmaCCToken #ElixirAssocExprNode #ElixirAssocUpdateNode #ElixirAssocUpdateKwNode #ElixirAssocBaseNode #ElixirProgramNode #SmaCCToken #ElixirMapCloseNode #ElixirMapArgsNode #ElixirStructExprNode #ElixirMapNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
ElixirParser class >> transitionTable [
^#(
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 197 0 25 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 197 0 55 0 117 0 59 0 121 0 60 0 125 0 61 0 129 0 62 0 133 0 63 0 125 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 197 0 86 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151 0 6 0 152] 
#[0 0 10 0 1 0 2 0 4 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 148 0 149 0 150 0 151] 
#[0 0 14 0 1 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 148 0 149 0 150 0 151] 
#[0 0 18 0 1 0 3 0 5 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 148 0 149 0 150 0 151] 
#[0 0 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 26 0 1 0 26 0 5 0 26 0 7 0 26 0 11 0 26 0 12 0 26 0 13 0 26 0 14 0 26 0 15 0 26 0 17 0 26 0 18 0 26 0 19 0 26 0 20 0 26 0 21 0 26 0 22 1 37 0 25 0 26 0 26 0 26 0 27 0 26 0 28 0 26 0 34 0 26 0 43 0 26 0 45 0 26 0 46 0 26 0 47 0 26 0 48 0 26 0 51 0 26 0 52 0 26 0 53 0 26 0 54 1 37 0 55 1 37 0 86 0 26 0 148 0 26 0 149 0 26 0 150 0 26 0 151] 
#[0 0 30 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 34 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 38 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 148 0 149 0 150 0 151] 
#[0 0 42 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 46 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 50 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 58 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 62 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 66 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 148 0 149 0 150 0 151 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 1 61 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 1 65 0 43 1 65 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 53 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 1 57 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 1 61 0 104 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 1 89 0 145 1 93 0 146 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 0 70 0 15] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 101 0 61 1 105 0 62 0 133 0 63 1 109 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 0 74 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 148 0 149 0 150 0 151] 
#[0 0 78 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 148 0 149 0 150 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 113 0 61 1 117 0 62 0 133 0 63 1 121 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 78 1 125 0 79 1 125 0 83 1 125 0 84 0 201 0 87 0 205 0 97 1 125 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 1 125 0 108 0 237 0 109 0 241 0 110 1 129 0 111 0 249 0 112 0 253 0 113 1 125 0 134 1 125 0 135 1 125 0 136 1 13 0 143 1 125 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 0 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 148 0 149 0 150 0 151 0 152] 
#[0 0 98 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 102 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 148 0 149 0 150 0 151 0 152] 
#[0 0 0 0 152] 
#[1 1 133 0 25 1 133 0 55 1 133 0 86 0 106 0 152] 
#[0 0 110 0 25 0 55 0 152] 
#[1 0 114 0 2 0 114 0 4 0 114 0 10 0 114 0 25 0 114 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 0 114 0 55 0 114 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 0 114 0 152] 
#[1 0 118 0 2 0 118 0 3 0 118 0 4 0 118 0 6 0 118 0 8 0 118 0 10 0 118 0 16 0 118 0 25 0 118 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 0 118 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 0 118 0 55 0 118 0 56 1 217 0 66 1 221 0 67 1 225 0 68 0 118 0 152] 
#[0 0 122 0 2 0 3 0 4 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[0 0 126 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[0 0 130 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 0 134 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 0 138 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 0 142 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 6 1 237 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 16 0 146 0 25 0 146 0 28 0 146 0 29 0 146 0 30 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 44 0 146 0 49 0 146 0 50 1 229 0 53 0 146 0 55 0 146 0 56 0 146 0 57 1 233 0 82 1 237 0 100 0 146 0 152] 
#[0 0 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 158 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 241 0 60 0 125 0 61 0 129 0 62 0 133 0 63 0 125 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151 0 182 0 152] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 61 2 1 0 62 0 133 0 63 2 5 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 2 9 0 91 2 13 0 93 2 17 0 94 2 21 0 97 2 25 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 29 0 115 2 33 0 116 2 33 0 117 2 33 0 118 2 33 0 119 2 49 0 121 2 53 0 128 2 57 0 131 2 33 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 2 21 0 1 2 65 0 2 2 69 0 4 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 61 2 1 0 62 0 133 0 63 2 5 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 2 73 0 91 2 13 0 93 2 17 0 94 2 21 0 97 2 25 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 29 0 115 2 33 0 116 2 33 0 117 2 33 0 118 2 33 0 119 2 49 0 121 2 53 0 128 2 57 0 131 2 33 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 0 186 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 2 77 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 62 2 85 0 63 2 93 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 93 0 122 2 97 0 123 2 101 0 128 2 105 0 129 2 109 0 130 2 113 0 133 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 2 117 0 6 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 62 2 85 0 63 2 93 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 93 0 122 2 121 0 123 2 125 0 124 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 2 129 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 62 2 85 0 63 2 93 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 93 0 122 2 121 0 123 2 133 0 124 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 137 0 61 2 141 0 62 0 133 0 63 2 145 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 2 165 0 1 0 190 0 2 0 190 0 3 0 190 0 4 0 217 0 5 0 190 0 6 0 213 0 7 0 190 0 8 0 190 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 190 0 25 0 69 0 26 1 13 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 2 169 0 43 0 190 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 190 0 55 0 190 0 56 0 190 0 57 2 157 0 62 2 189 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 2 165 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 2 29 0 115 2 181 0 116 2 185 0 117 2 189 0 118 2 193 0 119 2 197 0 120 2 53 0 128 2 57 0 131 2 185 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151 0 190 0 152] 
#[0 0 194 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 2 165 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 62 2 209 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 2 165 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 2 29 0 115 2 201 0 116 2 205 0 117 2 209 0 118 2 193 0 119 2 213 0 120 2 53 0 128 2 57 0 131 2 205 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 6 0 198 0 8 2 217 0 9 0 198 0 10 0 198 0 16 0 198 0 25 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 0 198 0 44 0 198 0 49 0 198 0 50 0 198 0 55 0 198 0 56 0 198 0 57 2 221 0 85 2 225 0 88 0 198 0 152] 
#[1 1 237 0 7 2 229 0 82 1 237 0 100] 
#[0 0 202 0 1] 
#[1 2 233 0 1 2 233 0 97 2 237 0 127] 
#[0 0 206 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 210 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 214 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 2 241 0 15 2 241 0 104 2 245 0 145] 
#[0 0 218 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 222 0 7] 
#[0 0 226 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 0 230 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 148 0 149 0 150 0 151] 
#[0 0 234 0 1] 
#[0 0 238 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 148 0 149 0 150 0 151] 
#[1 0 46 0 7 0 242 0 15 0 46 0 29 0 46 0 30 0 46 0 31 0 46 0 32 0 46 0 35 0 46 0 36 0 46 0 37 0 46 0 38 0 46 0 39 0 46 0 40 0 46 0 41 0 46 0 42 0 46 0 43 0 46 0 44 0 46 0 49 0 46 0 50 0 46 0 53 0 46 0 57] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 253 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 1 65 0 43 1 65 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 9 0 62 0 153 0 71 0 157 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 78 1 57 0 79 1 125 0 83 1 125 0 84 0 201 0 87 0 205 0 97 1 125 0 99 0 213 0 100 0 217 0 102 0 221 0 104 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 157 0 110 1 129 0 111 0 249 0 112 1 85 0 113 1 125 0 134 1 125 0 135 1 125 0 136 1 13 0 143 3 13 0 146 1 125 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 0 170 0 7 0 246 0 15 0 170 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 44 0 170 0 49 0 170 0 50 0 170 0 53 0 170 0 57] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 3 77 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 3 81 0 62 3 85 0 63 2 93 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 3 89 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 3 93 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 93 0 122 2 121 0 123 2 133 0 124 2 101 0 128 2 105 0 129 3 97 0 130 0 161 0 134 0 161 0 135 0 161 0 136 3 101 0 138 3 105 0 139 3 109 0 140 3 113 0 141 3 117 0 142 1 13 0 143 3 121 0 144 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 1 65 0 43 1 65 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 125 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 1 57 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 3 129 0 146 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 7 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 1 45 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 3 1 0 43 0 190 0 44 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 190 0 57 3 133 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 3 137 0 117 2 53 0 128 2 57 0 131 3 137 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 194 0 7 0 254 0 15 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 49 0 194 0 50 0 194 0 53 0 194 0 57] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 3 133 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 3 141 0 117 2 53 0 128 2 57 0 131 3 141 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 0 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 233 0 1 2 233 0 97 3 145 0 127] 
#[0 1 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 2 241 0 15 2 241 0 104 3 149 0 145] 
#[0 0 11 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 1 10 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[1 0 15 0 2 0 15 0 3 0 15 0 4 0 15 0 6 0 15 0 8 0 15 0 10 0 15 0 16 0 15 0 25 0 15 0 28 0 19 0 29 0 23 0 30 0 27 0 31 0 31 0 32 0 15 0 33 0 35 0 35 0 39 0 36 0 43 0 37 0 47 0 38 0 51 0 39 0 55 0 40 0 59 0 41 0 63 0 42 0 67 0 43 0 71 0 44 0 75 0 49 1 197 0 50 0 15 0 55 0 15 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 0 15 0 152] 
#[0 0 79 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[0 1 22 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[1 0 83 0 2 0 83 0 3 0 83 0 4 0 83 0 6 0 83 0 8 0 83 0 10 0 83 0 16 0 83 0 25 0 83 0 28 0 87 0 29 0 91 0 30 0 95 0 31 0 99 0 32 0 83 0 33 0 103 0 35 0 107 0 36 0 111 0 37 0 115 0 38 0 119 0 39 0 123 0 40 0 127 0 41 0 131 0 42 0 135 0 43 0 139 0 44 0 143 0 49 1 26 0 50 0 83 0 55 0 83 0 56 1 26 0 57 1 205 0 66 1 209 0 67 1 213 0 68 0 83 0 152] 
#[0 0 147 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 6 1 237 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 16 0 146 0 25 0 146 0 28 0 146 0 29 0 146 0 30 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 44 0 146 0 49 0 146 0 50 1 229 0 53 0 146 0 55 0 146 0 56 0 146 0 57 3 153 0 82 1 237 0 100 0 146 0 152] 
#[1 1 237 0 7 3 157 0 82 1 237 0 100] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 161 0 61 0 129 0 62 0 133 0 63 3 161 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151 1 34 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 165 0 62 3 169 0 63 3 173 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 3 177 0 62 3 181 0 63 3 185 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 53 0 128 2 57 0 131 3 189 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 193 0 62 3 197 0 63 3 201 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 205 0 62 3 209 0 63 3 213 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 217 0 62 3 221 0 63 3 225 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 229 0 62 3 233 0 63 3 237 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 241 0 62 3 245 0 63 3 249 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 253 0 62 4 1 0 63 4 5 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 9 0 62 4 13 0 63 4 17 0 64 0 141 0 65 4 21 0 69 4 25 0 70 4 29 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 33 0 62 4 37 0 63 4 41 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 45 0 62 4 49 0 63 4 53 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 57 0 62 4 61 0 63 4 65 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 69 0 62 4 73 0 63 4 77 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 81 0 62 4 85 0 63 4 89 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 93 0 62 4 97 0 63 4 101 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 4 113 0 15 4 105 0 52 4 109 0 54 4 113 0 104 4 117 0 148 4 121 0 149 4 125 0 150 4 129 0 151] 
#[0 1 38 0 1] 
#[0 1 42 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 1 46 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[0 1 50 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 1 54 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[0 1 58 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[0 1 62 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[0 1 66 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 1 70 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 4 133 0 3 0 217 0 5 0 213 0 7 4 149 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 62 2 85 0 63 4 141 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 4 141 0 80 4 145 0 81 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 4 149 0 101 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 4 141 0 122 2 101 0 128 4 157 0 129 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 4 161 0 25 4 161 0 55 4 161 0 86 1 74 0 152] 
#[1 0 205 0 1 1 78 0 2 1 78 0 4 0 217 0 5 0 213 0 7 1 78 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 1 78 0 25 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 78 0 55 1 78 0 56 4 165 0 61 0 129 0 62 0 133 0 63 4 165 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 1 82 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 148 0 149 0 150 0 151] 
#[0 1 86 0 2 0 4 0 10 0 25 0 55 0 56] 
#[1 0 114 0 2 4 169 0 3 0 114 0 4 0 114 0 10 0 114 0 25 1 90 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 0 114 0 55 0 114 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68] 
#[1 0 122 0 2 0 122 0 4 0 122 0 10 0 122 0 25 1 94 0 28 0 122 0 55 0 122 0 56] 
#[1 4 173 0 10 4 177 0 25 4 177 0 55 4 177 0 86 4 181 0 89] 
#[0 1 98 0 2 0 4 0 10 0 25 0 55 0 56] 
#[0 1 102 0 2 0 4 0 10 0 25 0 55 0 56] 
#[1 2 21 0 1 2 65 0 2 2 69 0 4 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 61 2 1 0 62 0 133 0 63 2 5 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 2 73 0 91 2 13 0 93 2 17 0 94 2 21 0 97 2 25 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 29 0 115 2 33 0 116 2 33 0 117 2 33 0 118 4 185 0 119 2 49 0 121 2 53 0 128 2 57 0 131 4 189 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 186 0 2 0 186 0 3 0 186 0 4 0 186 0 7 0 186 0 10 0 186 0 25 1 245 0 28 0 186 0 29 4 193 0 30 0 186 0 31 0 186 0 32 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 42 0 186 0 43 0 186 0 44 0 186 0 49 0 186 0 50 0 186 0 53 0 186 0 55 0 186 0 56 0 186 0 57 4 197 0 94] 
#[1 1 106 0 2 4 201 0 3 1 106 0 4 1 106 0 6 1 106 0 8 1 106 0 9 1 106 0 10 1 106 0 16 1 106 0 25 1 106 0 28 1 106 0 29 1 106 0 30 1 106 0 31 1 106 0 32 1 106 0 33 1 106 0 35 1 106 0 36 1 106 0 37 1 106 0 38 1 106 0 39 1 106 0 40 1 106 0 41 1 106 0 42 1 106 0 43 1 106 0 44 1 106 0 49 1 106 0 50 1 106 0 55 1 106 0 56 1 106 0 57 1 106 0 152] 
#[1 1 245 0 28 4 205 0 94] 
#[0 1 110 0 28] 
#[0 1 114 0 9 0 28] 
#[0 1 118 0 9 0 28] 
#[1 1 245 0 28 4 209 0 30 4 213 0 94] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 217 0 62 4 221 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 1 122 0 2 4 225 0 3 1 122 0 4 1 122 0 6 1 122 0 8 1 122 0 9 1 122 0 10 1 122 0 16 1 122 0 25 1 122 0 28 1 122 0 29 1 122 0 30 1 122 0 31 1 122 0 32 1 122 0 33 1 122 0 35 1 122 0 36 1 122 0 37 1 122 0 38 1 122 0 39 1 122 0 40 1 122 0 41 1 122 0 42 1 122 0 43 1 122 0 44 1 122 0 49 1 122 0 50 1 122 0 55 1 122 0 56 1 122 0 57 1 122 0 152] 
#[0 1 126 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 1 130 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 2 21 0 1 4 237 0 2 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 61 2 1 0 62 0 133 0 63 2 5 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 4 233 0 91 2 13 0 93 2 17 0 94 2 21 0 97 4 237 0 98 2 25 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 29 0 115 2 33 0 116 2 33 0 117 2 33 0 118 2 33 0 119 2 49 0 121 2 53 0 128 2 57 0 131 2 33 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 4 249 0 2 4 241 0 4 4 245 0 25 4 245 0 55 4 245 0 86 4 249 0 98] 
#[0 1 134 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 1 138 0 2 1 138 0 3 1 138 0 6 1 138 0 8 1 138 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68] 
#[1 1 142 0 2 1 142 0 3 1 142 0 6 1 142 0 8 1 142 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 66 1 221 0 67 1 225 0 68] 
#[0 1 146 0 2 0 3 0 6 0 8 0 16] 
#[0 1 150 0 3 0 6 0 8 0 16] 
#[1 4 253 0 3 1 154 0 8] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 62 2 85 0 63 5 1 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 5 1 0 122 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 5 5 0 3 1 158 0 6 1 158 0 8 1 158 0 16] 
#[0 1 162 0 8] 
#[0 5 9 0 8 0 101] 
#[0 1 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 5 13 0 3 1 170 0 6 1 170 0 16] 
#[0 5 21 0 6 0 103] 
#[0 1 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 5 29 0 16 0 105] 
#[0 1 178 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[1 0 151 0 2 0 151 0 3 0 151 0 4 0 151 0 6 0 151 0 8 0 151 0 10 0 151 0 16 0 151 0 25 0 151 0 28 0 155 0 29 0 159 0 30 0 163 0 31 0 167 0 32 0 151 0 33 0 171 0 35 0 175 0 36 0 179 0 37 0 183 0 38 0 187 0 39 0 191 0 40 0 195 0 41 0 199 0 42 0 203 0 43 0 207 0 44 0 211 0 49 1 197 0 50 0 151 0 55 0 151 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 0 151 0 152] 
#[0 0 215 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 33 0 62 5 37 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 41 0 62 5 45 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 78 1 125 0 79 1 125 0 83 1 125 0 84 0 201 0 87 0 205 0 97 1 125 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 1 125 0 108 2 177 0 109 0 157 0 110 1 129 0 111 0 249 0 112 1 85 0 113 1 125 0 134 1 125 0 135 1 125 0 136 1 13 0 143 1 125 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 1 90 0 2 4 169 0 3 1 90 0 4 1 90 0 6 1 90 0 8 1 90 0 9 1 90 0 10 1 90 0 16 1 90 0 25 1 90 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 1 90 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 1 90 0 55 1 90 0 56 1 201 0 57 1 205 0 66 1 213 0 68 1 90 0 152] 
#[0 1 94 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 21 0 1 2 65 0 2 2 69 0 4 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 61 2 1 0 62 0 133 0 63 2 5 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 2 73 0 91 2 13 0 93 2 17 0 94 2 21 0 97 2 25 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 29 0 115 2 33 0 116 2 33 0 117 2 33 0 118 5 109 0 119 2 49 0 121 2 53 0 128 2 57 0 131 5 113 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 117 0 62 5 121 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 2 165 0 1 0 190 0 2 0 190 0 3 0 190 0 4 0 217 0 5 0 190 0 6 0 213 0 7 0 190 0 8 0 190 0 9 0 190 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 190 0 25 0 69 0 26 1 13 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 2 169 0 43 0 190 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 190 0 55 0 190 0 56 0 190 0 57 2 157 0 62 5 125 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 2 165 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 2 29 0 115 3 137 0 117 5 125 0 118 5 129 0 119 2 197 0 120 2 53 0 128 2 57 0 131 3 137 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151 0 190 0 152] 
#[1 2 165 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 62 5 133 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 2 165 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 2 29 0 115 3 141 0 117 5 133 0 118 5 129 0 119 2 213 0 120 2 53 0 128 2 57 0 131 3 141 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 2 217 0 9 5 137 0 85 2 225 0 88] 
#[1 1 190 0 2 1 190 0 3 1 190 0 4 1 190 0 6 1 190 0 8 1 110 0 9 1 190 0 10 1 190 0 16 1 190 0 25 1 190 0 28 1 190 0 29 1 190 0 30 1 190 0 31 1 190 0 32 1 190 0 33 1 190 0 35 1 190 0 36 1 190 0 37 1 190 0 38 1 190 0 39 1 190 0 40 1 190 0 41 1 190 0 42 1 190 0 43 1 190 0 44 1 190 0 49 1 190 0 50 1 190 0 55 1 190 0 56 1 190 0 57 1 190 0 152] 
#[1 1 194 0 2 1 194 0 3 1 194 0 4 1 194 0 6 1 194 0 8 1 114 0 9 1 194 0 10 1 194 0 16 1 194 0 25 1 194 0 28 1 194 0 29 1 194 0 30 1 194 0 31 1 194 0 32 1 194 0 33 1 194 0 35 1 194 0 36 1 194 0 37 1 194 0 38 1 194 0 39 1 194 0 40 1 194 0 41 1 194 0 42 1 194 0 43 1 194 0 44 1 194 0 49 1 194 0 55 1 194 0 56 1 194 0 152] 
#[1 1 198 0 2 1 198 0 3 1 198 0 4 1 198 0 6 1 198 0 8 1 118 0 9 1 198 0 10 1 198 0 16 1 198 0 25 1 198 0 28 1 198 0 29 1 198 0 30 1 198 0 31 1 198 0 32 1 198 0 33 1 198 0 35 1 198 0 36 1 198 0 37 1 198 0 38 1 198 0 39 1 198 0 40 1 198 0 41 1 198 0 42 1 198 0 43 1 198 0 44 1 198 0 49 1 198 0 55 1 198 0 56 1 198 0 152] 
#[0 1 202 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 217 0 9 5 141 0 85 2 225 0 88] 
#[1 1 206 0 2 1 206 0 3 1 206 0 4 1 206 0 6 1 206 0 8 1 110 0 9 1 206 0 10 1 206 0 16 1 206 0 25 1 206 0 28 1 206 0 29 1 206 0 30 1 206 0 31 1 206 0 32 1 206 0 33 1 206 0 35 1 206 0 36 1 206 0 37 1 206 0 38 1 206 0 39 1 206 0 40 1 206 0 41 1 206 0 42 1 206 0 43 1 206 0 44 1 206 0 49 1 206 0 50 1 206 0 55 1 206 0 56 1 206 0 57 1 206 0 152] 
#[1 1 210 0 2 1 210 0 3 1 210 0 4 1 210 0 6 1 210 0 8 1 114 0 9 1 210 0 10 1 210 0 16 1 210 0 25 1 210 0 28 1 210 0 29 1 210 0 30 1 210 0 31 1 210 0 32 1 210 0 33 1 210 0 35 1 210 0 36 1 210 0 37 1 210 0 38 1 210 0 39 1 210 0 40 1 210 0 41 1 210 0 42 1 210 0 43 1 210 0 44 1 210 0 49 1 210 0 55 1 210 0 56 1 210 0 152] 
#[0 1 214 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 1 218 0 1 1 218 0 5 1 218 0 7 1 218 0 10 1 218 0 11 1 218 0 12 1 218 0 13 1 218 0 14 1 218 0 15 1 218 0 17 1 218 0 18 1 218 0 19 1 218 0 20 1 218 0 21 1 218 0 22 5 145 0 25 1 218 0 26 1 218 0 27 1 218 0 28 1 218 0 34 1 218 0 43 1 218 0 45 1 218 0 46 1 218 0 47 1 218 0 48 1 218 0 51 1 218 0 52 1 218 0 53 1 218 0 54 5 145 0 55 1 218 0 56 5 145 0 86 1 218 0 148 1 218 0 149 1 218 0 150 1 218 0 151] 
#[0 1 222 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 5 149 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 5 153 0 56 1 253 0 61 2 1 0 62 0 133 0 63 2 5 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 5 157 0 90 5 161 0 91 5 165 0 92 2 13 0 93 2 17 0 94 5 169 0 95 5 173 0 96 2 21 0 97 2 25 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 29 0 115 2 33 0 116 2 33 0 117 2 33 0 118 2 33 0 119 2 49 0 121 2 53 0 128 2 57 0 131 2 33 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 1 226 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 5 177 0 2 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 5 181 0 62 5 185 0 63 5 189 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 5 193 0 125 5 197 0 126 2 101 0 128 5 201 0 129 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 2 233 0 1 1 230 0 2 1 230 0 3 1 230 0 4 1 230 0 6 1 230 0 7 1 230 0 8 2 217 0 9 1 230 0 10 1 230 0 16 1 230 0 25 1 230 0 28 1 230 0 29 1 230 0 30 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 40 1 230 0 41 1 230 0 42 1 230 0 43 1 230 0 44 1 230 0 49 1 230 0 50 1 230 0 53 1 230 0 55 1 230 0 56 1 230 0 57 5 205 0 85 2 225 0 88 2 233 0 97 5 209 0 127 1 230 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 5 213 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 5 225 0 62 5 229 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 3 89 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 5 237 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 101 0 128 2 105 0 129 3 97 0 130 0 161 0 134 0 161 0 135 0 161 0 136 3 101 0 138 3 105 0 139 3 109 0 140 3 113 0 141 3 117 0 142 1 13 0 143 3 121 0 144 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 1 234 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 9 0 62 0 153 0 71 0 157 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 78 1 125 0 79 1 125 0 83 1 125 0 84 0 201 0 87 0 205 0 97 1 125 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 1 125 0 108 1 77 0 109 0 157 0 110 1 129 0 111 0 249 0 112 1 85 0 113 1 125 0 134 1 125 0 135 1 125 0 136 1 13 0 143 1 125 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 3 17 0 29 1 14 0 30 1 14 0 31 1 14 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 1 14 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 125 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 1 45 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 3 1 0 43 0 190 0 44 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 190 0 57 3 133 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 3 137 0 117 2 53 0 128 2 57 0 131 3 137 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 1 26 0 29 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 35 1 26 0 36 1 26 0 37 1 26 0 38 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 44 1 26 0 49 1 26 0 50 1 26 0 57 1 205 0 66] 
#[0 1 238 0 15] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 245 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 249 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 253 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 1 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 5 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 9 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 13 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 17 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 21 0 62 4 29 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 25 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 29 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 33 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 37 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 41 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 45 0 62 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 3 1 0 106 3 5 0 107 0 161 0 108 1 77 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 1 242 0 2 1 242 0 3 1 242 0 4 1 242 0 6 0 219 0 7 1 242 0 8 1 242 0 9 1 242 0 10 1 242 0 16 1 242 0 25 1 242 0 28 0 219 0 29 0 219 0 30 0 219 0 31 0 219 0 32 1 242 0 33 0 219 0 35 0 219 0 36 0 219 0 37 0 219 0 38 0 219 0 39 0 219 0 40 0 219 0 41 0 219 0 42 0 219 0 43 0 219 0 44 0 219 0 49 0 219 0 50 0 219 0 53 1 242 0 55 1 242 0 56 0 219 0 57 1 242 0 152] 
#[1 1 138 0 3 1 138 0 16 1 137 0 29 1 141 0 30 1 145 0 31 6 49 0 32 6 57 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 6 57 0 137] 
#[1 1 142 0 3 1 142 0 16 1 137 0 29 1 141 0 30 1 145 0 31 6 61 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 66 1 221 0 67 1 225 0 68 6 65 0 137] 
#[1 0 223 0 3 0 170 0 7 0 223 0 16 0 170 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 33 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 44 0 170 0 49 0 170 0 50 0 170 0 53 0 170 0 57] 
#[1 2 165 0 1 0 227 0 3 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 227 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 2 169 0 43 0 190 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 190 0 57 2 157 0 62 2 189 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 2 165 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 2 29 0 115 2 181 0 116 2 185 0 117 2 189 0 118 2 193 0 119 2 197 0 120 2 53 0 128 2 57 0 131 2 185 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 6 69 0 16 0 105] 
#[0 1 254 0 3 0 16] 
#[1 6 73 0 3 6 77 0 16 6 77 0 105] 
#[0 6 81 0 16 0 105] 
#[1 6 85 0 3 2 2 0 16] 
#[0 6 89 0 16 0 105] 
#[0 2 6 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[0 2 10 0 15] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[0 1 190 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 1 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 233 0 1 1 230 0 2 1 230 0 3 1 230 0 4 1 230 0 6 1 230 0 7 1 230 0 8 1 230 0 9 1 230 0 10 1 230 0 15 1 230 0 16 1 230 0 25 1 230 0 28 1 230 0 29 1 230 0 30 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 40 1 230 0 41 1 230 0 42 1 230 0 43 1 230 0 44 1 230 0 49 1 230 0 50 1 230 0 53 1 230 0 55 1 230 0 56 1 230 0 57 2 233 0 97 6 93 0 127 1 230 0 152] 
#[0 2 14 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 231 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 0 235 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 2 26 0 25 0 55 0 152] 
#[1 2 30 0 2 2 30 0 3 2 30 0 4 2 30 0 6 2 30 0 8 2 30 0 10 2 30 0 16 2 30 0 25 2 30 0 28 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 30 0 49 1 197 0 50 2 30 0 55 2 30 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 30 0 152] 
#[1 2 34 0 2 2 34 0 3 2 34 0 4 2 34 0 6 2 34 0 8 2 34 0 10 2 34 0 16 2 34 0 25 2 34 0 28 2 34 0 29 2 34 0 30 2 34 0 31 2 34 0 32 2 34 0 33 2 34 0 35 2 34 0 36 2 34 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 34 0 49 2 34 0 55 2 34 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 34 0 152] 
#[0 2 38 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 42 0 2 2 42 0 3 2 42 0 4 2 42 0 6 2 42 0 8 2 42 0 10 2 42 0 16 2 42 0 25 2 42 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 42 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 42 0 49 1 197 0 50 2 42 0 55 2 42 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 42 0 152] 
#[1 2 46 0 2 2 46 0 3 2 46 0 4 2 46 0 6 2 46 0 8 2 46 0 10 2 46 0 16 2 46 0 25 2 46 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 46 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 46 0 49 2 46 0 55 2 46 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 46 0 152] 
#[0 2 50 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 2 54 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 58 0 2 2 58 0 3 2 58 0 4 2 58 0 6 2 58 0 8 2 58 0 10 2 58 0 16 2 58 0 25 2 58 0 28 1 137 0 29 2 58 0 30 1 145 0 31 1 149 0 32 2 58 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 58 0 49 1 197 0 50 2 58 0 55 2 58 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 58 0 152] 
#[1 2 62 0 2 2 62 0 3 2 62 0 4 2 62 0 6 2 62 0 8 2 62 0 10 2 62 0 16 2 62 0 25 2 62 0 28 1 137 0 29 2 62 0 30 1 145 0 31 1 149 0 32 2 62 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 62 0 49 2 62 0 55 2 62 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 62 0 152] 
#[0 2 66 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 70 0 2 2 70 0 3 2 70 0 4 2 70 0 6 2 70 0 8 2 70 0 10 2 70 0 16 2 70 0 25 2 70 0 28 1 137 0 29 2 70 0 30 2 70 0 31 1 149 0 32 2 70 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 70 0 49 1 197 0 50 2 70 0 55 2 70 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 70 0 152] 
#[1 2 74 0 2 2 74 0 3 2 74 0 4 2 74 0 6 2 74 0 8 2 74 0 10 2 74 0 16 2 74 0 25 2 74 0 28 1 137 0 29 2 74 0 30 2 74 0 31 1 149 0 32 2 74 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 74 0 49 2 74 0 55 2 74 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 74 0 152] 
#[0 2 78 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 82 0 2 2 82 0 3 2 82 0 4 2 82 0 6 2 82 0 8 2 82 0 10 2 82 0 16 2 82 0 25 2 82 0 28 1 137 0 29 2 82 0 30 2 82 0 31 2 82 0 32 2 82 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 82 0 49 1 197 0 50 2 82 0 55 2 82 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 82 0 152] 
#[1 2 86 0 2 2 86 0 3 2 86 0 4 2 86 0 6 2 86 0 8 2 86 0 10 2 86 0 16 2 86 0 25 2 86 0 28 1 137 0 29 2 86 0 30 2 86 0 31 2 86 0 32 2 86 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 86 0 49 2 86 0 55 2 86 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 86 0 152] 
#[0 2 90 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 6 2 94 0 8 2 94 0 10 2 94 0 16 2 94 0 25 2 94 0 28 1 137 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 94 0 49 1 197 0 50 2 94 0 55 2 94 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 94 0 152] 
#[1 2 98 0 2 2 98 0 3 2 98 0 4 2 98 0 6 2 98 0 8 2 98 0 10 2 98 0 16 2 98 0 25 2 98 0 28 1 137 0 29 2 98 0 30 2 98 0 31 2 98 0 32 2 98 0 33 2 98 0 35 2 98 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 98 0 49 2 98 0 55 2 98 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 98 0 152] 
#[0 2 102 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 6 2 106 0 8 2 106 0 10 2 106 0 16 2 106 0 25 2 106 0 28 1 137 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 35 2 106 0 36 2 106 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 106 0 49 1 197 0 50 2 106 0 55 2 106 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 106 0 152] 
#[1 2 110 0 2 2 110 0 3 2 110 0 4 2 110 0 6 2 110 0 8 2 110 0 10 2 110 0 16 2 110 0 25 2 110 0 28 1 137 0 29 2 110 0 30 2 110 0 31 2 110 0 32 2 110 0 33 2 110 0 35 2 110 0 36 2 110 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 110 0 49 2 110 0 55 2 110 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 110 0 152] 
#[0 2 114 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 118 0 2 2 118 0 3 2 118 0 4 2 118 0 6 2 118 0 8 2 118 0 10 2 118 0 16 2 118 0 25 2 118 0 28 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 118 0 49 1 197 0 50 2 118 0 55 2 118 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 118 0 152] 
#[1 2 122 0 2 2 122 0 3 2 122 0 4 2 122 0 6 2 122 0 8 2 122 0 10 2 122 0 16 2 122 0 25 2 122 0 28 2 122 0 29 2 122 0 30 2 122 0 31 2 122 0 32 2 122 0 33 2 122 0 35 2 122 0 36 2 122 0 37 2 122 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 122 0 49 2 122 0 55 2 122 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 122 0 152] 
#[0 2 126 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 130 0 2 2 130 0 3 2 130 0 4 2 130 0 6 2 130 0 8 2 130 0 10 2 130 0 16 2 130 0 25 2 130 0 28 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 130 0 49 1 197 0 50 2 130 0 55 2 130 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 130 0 152] 
#[1 2 134 0 2 2 134 0 3 2 134 0 4 2 134 0 6 2 134 0 8 2 134 0 10 2 134 0 16 2 134 0 25 2 134 0 28 2 134 0 29 2 134 0 30 2 134 0 31 2 134 0 32 2 134 0 33 2 134 0 35 2 134 0 36 2 134 0 37 2 134 0 38 2 134 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 134 0 49 2 134 0 55 2 134 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 134 0 152] 
#[0 2 138 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 0 239 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 0 243 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 0 247 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 154 0 2 2 154 0 3 2 154 0 4 2 154 0 6 2 154 0 8 2 154 0 10 2 154 0 16 2 154 0 25 2 154 0 28 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 154 0 49 1 197 0 50 2 154 0 55 2 154 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 154 0 152] 
#[1 2 158 0 2 2 158 0 3 2 158 0 4 2 158 0 6 2 158 0 8 2 158 0 10 2 158 0 16 2 158 0 25 2 158 0 28 2 158 0 29 2 158 0 30 2 158 0 31 2 158 0 32 2 158 0 33 2 158 0 35 2 158 0 36 2 158 0 37 2 158 0 38 2 158 0 39 2 158 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 158 0 49 2 158 0 55 2 158 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 158 0 152] 
#[0 2 162 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 166 0 2 2 166 0 3 2 166 0 4 2 166 0 6 2 166 0 8 2 166 0 10 2 166 0 16 2 166 0 25 2 166 0 28 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 166 0 49 1 197 0 50 2 166 0 55 2 166 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 166 0 152] 
#[1 2 170 0 2 2 170 0 3 2 170 0 4 2 170 0 6 2 170 0 8 2 170 0 10 2 170 0 16 2 170 0 25 2 170 0 28 2 170 0 29 2 170 0 30 2 170 0 31 2 170 0 32 2 170 0 33 2 170 0 35 2 170 0 36 2 170 0 37 2 170 0 38 2 170 0 39 2 170 0 40 2 170 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 170 0 49 2 170 0 55 2 170 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 170 0 152] 
#[0 2 174 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 178 0 2 2 178 0 3 2 178 0 4 2 178 0 6 2 178 0 8 2 178 0 10 2 178 0 16 2 178 0 25 2 178 0 28 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 178 0 49 1 197 0 50 2 178 0 55 2 178 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 178 0 152] 
#[1 2 182 0 2 2 182 0 3 2 182 0 4 2 182 0 6 2 182 0 8 2 182 0 10 2 182 0 16 2 182 0 25 2 182 0 28 2 182 0 29 2 182 0 30 2 182 0 31 2 182 0 32 2 182 0 33 2 182 0 35 2 182 0 36 2 182 0 37 2 182 0 38 2 182 0 39 2 182 0 40 2 182 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 182 0 49 2 182 0 55 2 182 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 182 0 152] 
#[0 2 186 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 190 0 2 2 190 0 3 2 190 0 4 2 190 0 6 2 190 0 8 2 190 0 10 2 190 0 16 2 190 0 25 2 190 0 28 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 1 189 0 44 2 190 0 49 1 197 0 50 2 190 0 55 2 190 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 190 0 152] 
#[1 2 194 0 2 2 194 0 3 2 194 0 4 2 194 0 6 2 194 0 8 2 194 0 10 2 194 0 16 2 194 0 25 2 194 0 28 2 194 0 29 2 194 0 30 2 194 0 31 2 194 0 32 2 194 0 33 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 38 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 42 2 194 0 43 1 189 0 44 2 194 0 49 2 194 0 55 2 194 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 194 0 152] 
#[0 2 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 202 0 2 2 202 0 3 2 202 0 4 2 202 0 6 2 202 0 8 2 202 0 10 2 202 0 16 2 202 0 25 2 202 0 28 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 2 202 0 55 2 202 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 202 0 152] 
#[1 2 206 0 2 2 206 0 3 2 206 0 4 2 206 0 6 2 206 0 8 2 206 0 10 2 206 0 16 2 206 0 25 2 206 0 28 2 206 0 29 2 206 0 30 2 206 0 31 2 206 0 32 2 206 0 33 2 206 0 35 2 206 0 36 2 206 0 37 2 206 0 38 2 206 0 39 2 206 0 40 2 206 0 41 2 206 0 42 2 206 0 43 2 206 0 44 2 206 0 49 2 206 0 55 2 206 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 206 0 152] 
#[0 2 210 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 214 0 2 2 214 0 3 2 214 0 4 2 214 0 6 2 214 0 8 2 214 0 10 2 214 0 16 2 214 0 25 2 214 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 214 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 214 0 49 1 197 0 50 2 214 0 55 2 214 0 56 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 2 214 0 152] 
#[1 2 218 0 2 2 218 0 3 2 218 0 4 2 218 0 6 2 218 0 8 2 218 0 10 2 218 0 16 2 218 0 25 2 218 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 218 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 218 0 49 2 218 0 55 2 218 0 56 1 217 0 66 1 221 0 67 1 225 0 68 2 218 0 152] 
#[0 2 222 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 2 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 148 0 149 0 150 0 151 0 152] 
#[0 2 230 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 6 97 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 62 2 85 0 63 2 93 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 93 0 122 2 121 0 123 6 101 0 124 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 2 234 0 7] 
#[0 2 238 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 2 242 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 148 0 149 0 150 0 151] 
#[0 2 246 0 1] 
#[0 6 105 0 8 0 101] 
#[0 2 250 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 2 254 0 3 0 8] 
#[1 6 109 0 3 6 113 0 8 6 113 0 101] 
#[0 3 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 3 6 0 3 0 8] 
#[1 6 117 0 3 3 10 0 8] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 161 0 61 0 129 0 62 0 133 0 63 3 161 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151 3 14 0 152] 
#[0 3 18 0 2 0 4 0 10 0 25 0 55 0 56] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 6 121 0 62 6 129 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 6 129 0 114 2 53 0 128 2 57 0 131 6 133 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 6 137 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 61 2 1 0 62 0 133 0 63 2 5 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 6 141 0 93 2 17 0 94 2 21 0 97 2 25 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 29 0 115 2 33 0 116 2 33 0 117 2 33 0 118 2 33 0 119 2 49 0 121 2 53 0 128 2 57 0 131 2 33 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 26 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 6 145 0 2 1 118 0 28 6 145 0 98] 
#[1 6 149 0 2 1 126 0 28 6 149 0 98] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 153 0 61 0 129 0 62 0 133 0 63 6 153 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 30 0 2 0 4 0 10 0 25 0 55 0 56] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 6 121 0 62 6 157 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 6 157 0 114 2 53 0 128 2 57 0 131 6 161 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 34 0 2 0 4 0 10 0 25 0 55 0 56] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 165 0 61 0 129 0 62 0 133 0 63 6 165 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 38 0 2 0 4 0 10 0 25 0 55 0 56] 
#[1 3 42 0 2 3 42 0 3 3 42 0 4 3 42 0 6 3 42 0 8 3 42 0 9 3 42 0 10 3 42 0 16 3 42 0 25 3 42 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 3 42 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 3 42 0 55 3 42 0 56 1 201 0 57 1 205 0 66 1 213 0 68 3 42 0 152] 
#[0 3 46 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 2 53 0 53 2 53 0 128 2 57 0 131 6 169 0 132] 
#[0 3 50 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 6 177 0 2 6 173 0 4 4 245 0 25 4 245 0 55 4 245 0 86 6 177 0 98] 
#[0 3 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 6 181 0 2 0 98] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 61 2 1 0 62 0 133 0 63 2 5 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 6 141 0 93 2 17 0 94 2 21 0 97 2 25 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 29 0 115 2 33 0 116 2 33 0 117 2 33 0 118 2 33 0 119 2 49 0 121 2 53 0 128 2 57 0 131 2 33 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 58 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 3 62 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 62 2 85 0 63 6 185 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 6 185 0 122 2 101 0 128 2 105 0 129 6 189 0 130 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 66 0 2 0 3 0 6 0 8 0 16] 
#[1 3 70 0 6 3 70 0 8 3 70 0 16 6 193 0 53 6 193 0 128] 
#[0 3 74 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 0 217 0 5 3 78 0 6 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 3 78 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 62 2 85 0 63 6 185 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 6 185 0 122 2 101 0 128 2 105 0 129 6 197 0 130 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 3 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 3 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 3 94 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 1 14 0 2 1 14 0 3 1 14 0 4 1 14 0 6 1 14 0 8 1 14 0 9 1 14 0 10 1 14 0 16 1 14 0 25 1 14 0 28 5 49 0 29 1 14 0 30 1 14 0 31 1 14 0 32 1 14 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 1 14 0 49 1 197 0 50 1 14 0 55 1 14 0 56 1 201 0 57 1 205 0 66 1 213 0 68 1 14 0 152] 
#[0 1 18 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 1 26 0 2 1 26 0 3 1 26 0 4 1 26 0 6 1 26 0 8 1 26 0 9 1 26 0 10 1 26 0 16 1 26 0 25 1 26 0 28 1 26 0 29 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 33 1 26 0 35 1 26 0 36 1 26 0 37 1 26 0 38 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 44 1 26 0 49 1 26 0 50 1 26 0 55 1 26 0 56 1 26 0 57 1 205 0 66 1 213 0 68 1 26 0 152] 
#[0 1 30 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 201 0 62 3 173 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 6 205 0 62 3 185 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 2 53 0 128 2 57 0 131 3 189 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 209 0 62 3 201 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 213 0 62 3 213 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 217 0 62 3 225 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 221 0 62 3 237 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 225 0 62 3 249 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 229 0 62 4 5 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 233 0 62 4 17 0 64 4 21 0 69 4 25 0 70 4 29 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 237 0 62 4 41 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 241 0 62 4 53 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 245 0 62 4 65 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 249 0 62 4 77 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 253 0 62 4 89 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 1 0 62 4 101 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 7 5 0 2 1 118 0 28 7 5 0 98] 
#[1 7 9 0 2 1 126 0 28 7 9 0 98] 
#[1 1 182 0 2 1 182 0 3 1 182 0 4 1 182 0 6 1 182 0 8 1 182 0 9 1 182 0 10 1 182 0 16 1 182 0 25 1 182 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 1 182 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 1 182 0 55 1 182 0 56 1 201 0 57 1 205 0 66 1 213 0 68 1 182 0 152] 
#[0 1 186 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 1 194 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 1 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 1 210 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 3 98 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[0 3 102 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[0 3 106 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 148 0 149 0 150 0 151] 
#[0 3 110 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[1 3 114 0 1 3 114 0 5 3 114 0 7 3 114 0 10 3 114 0 11 3 114 0 12 3 114 0 13 3 114 0 14 3 114 0 15 3 114 0 17 3 114 0 18 3 114 0 19 3 114 0 20 3 114 0 21 3 114 0 22 7 13 0 25 3 114 0 26 3 114 0 27 3 114 0 28 3 114 0 34 3 114 0 43 3 114 0 45 3 114 0 46 3 114 0 47 3 114 0 48 3 114 0 51 3 114 0 52 3 114 0 53 3 114 0 54 7 13 0 55 3 114 0 56 7 13 0 86 3 114 0 148 3 114 0 149 3 114 0 150 3 114 0 151] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 3 118 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 3 118 0 56 1 253 0 61 2 1 0 62 0 133 0 63 2 5 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 7 17 0 91 7 21 0 92 2 13 0 93 2 17 0 94 2 21 0 97 2 25 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 29 0 115 2 33 0 116 2 33 0 117 2 33 0 118 2 33 0 119 2 49 0 121 2 53 0 128 2 57 0 131 2 33 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 4 173 0 10 7 25 0 25 7 25 0 55 3 122 0 56 7 25 0 86 7 29 0 89] 
#[1 5 153 0 56 5 157 0 90 5 169 0 95 7 33 0 96] 
#[1 3 126 0 10 5 153 0 56 5 157 0 90 5 169 0 95 7 37 0 96] 
#[0 7 41 0 10] 
#[0 3 130 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 3 134 0 2 3 134 0 3 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68] 
#[1 3 138 0 2 3 138 0 3 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 66 1 221 0 67 1 225 0 68] 
#[1 0 251 0 2 3 142 0 3 7 45 0 98] 
#[0 3 146 0 2 0 3] 
#[1 7 53 0 2 7 49 0 3 7 53 0 98] 
#[1 7 61 0 2 7 57 0 3 7 61 0 98] 
#[0 3 150 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[1 3 154 0 2 3 154 0 3 3 154 0 4 3 154 0 6 3 154 0 7 3 154 0 8 2 217 0 9 3 154 0 10 3 154 0 16 3 154 0 25 3 154 0 28 3 154 0 29 3 154 0 30 3 154 0 31 3 154 0 32 3 154 0 33 3 154 0 35 3 154 0 36 3 154 0 37 3 154 0 38 3 154 0 39 3 154 0 40 3 154 0 41 3 154 0 42 3 154 0 43 3 154 0 44 3 154 0 49 3 154 0 50 3 154 0 53 3 154 0 55 3 154 0 56 3 154 0 57 7 65 0 85 2 225 0 88 3 154 0 152] 
#[0 1 242 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 101 0 61 1 105 0 62 0 133 0 63 1 101 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 113 0 61 1 117 0 62 0 133 0 63 1 113 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 78 1 125 0 79 1 125 0 83 1 125 0 84 0 201 0 87 0 205 0 97 1 125 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 1 125 0 108 0 237 0 109 0 241 0 110 1 129 0 111 0 249 0 112 0 253 0 113 1 125 0 134 1 125 0 135 1 125 0 136 1 13 0 143 1 125 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 7 69 0 29 7 73 0 30 7 77 0 31 7 81 0 32 6 57 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67 6 57 0 137] 
#[1 1 137 0 29 1 141 0 30 1 145 0 31 6 61 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 66 1 221 0 67 1 225 0 68 6 65 0 137] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 137 0 61 2 141 0 62 0 133 0 63 2 137 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 1 250 0 3 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 250 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 2 169 0 43 0 190 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 190 0 57 2 157 0 62 2 181 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 2 29 0 115 2 181 0 116 2 185 0 117 2 181 0 118 2 181 0 119 2 53 0 128 2 57 0 131 2 185 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 62 2 201 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 2 29 0 115 2 201 0 116 2 205 0 117 2 201 0 118 2 201 0 119 2 53 0 128 2 57 0 131 2 205 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 35 2 30 0 36 2 30 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 30 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 42 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 3 17 0 29 2 58 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 58 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 3 17 0 29 2 70 0 30 2 70 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 70 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 3 17 0 29 2 82 0 30 2 82 0 31 2 82 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 82 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 3 17 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 35 2 94 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 94 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 3 17 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 35 2 106 0 36 2 106 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 106 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 118 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 130 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 154 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 166 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 178 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 3 69 0 44 2 190 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 214 0 49 1 197 0 50 1 201 0 57 1 205 0 66] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 7 129 0 62 7 133 0 63 3 213 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 3 89 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 3 93 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 101 0 128 2 105 0 129 7 137 0 130 0 161 0 134 0 161 0 135 0 161 0 136 7 141 0 138 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 158 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 148 0 149 0 150 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 145 0 62 7 149 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 7 129 0 62 7 133 0 63 3 213 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 3 89 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 3 93 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 101 0 128 2 105 0 129 7 157 0 130 0 161 0 134 0 161 0 135 0 161 0 136 7 161 0 138 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 165 0 62 7 169 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 7 181 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 7 173 0 62 7 177 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 3 89 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 7 181 0 105 5 233 0 106 5 237 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 101 0 128 2 105 0 129 3 97 0 130 0 161 0 134 0 161 0 135 0 161 0 136 3 101 0 138 3 113 0 141 3 117 0 142 1 13 0 143 7 185 0 144 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 3 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 3 174 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 7 173 0 62 7 177 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 3 89 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 5 237 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 101 0 128 2 105 0 129 7 189 0 130 0 161 0 134 0 161 0 135 0 161 0 136 7 193 0 138 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 3 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 3 182 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 7 197 0 16 0 105] 
#[0 3 186 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 7 205 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 62 2 85 0 63 7 201 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 7 201 0 80 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 7 205 0 101 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 7 201 0 122 2 101 0 128 4 157 0 129 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 190 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 6 193 0 53 0 128] 
#[1 3 194 0 2 3 194 0 3 3 194 0 4 3 194 0 6 3 194 0 8 3 194 0 9 3 194 0 10 3 194 0 16 3 194 0 25 3 194 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 3 194 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 3 194 0 55 3 194 0 56 1 201 0 57 1 205 0 66 1 213 0 68 3 194 0 152] 
#[0 3 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 3 202 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 3 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 3 210 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 3 214 0 2 0 4 0 10 0 25 0 55 0 56] 
#[0 3 218 0 28 0 30] 
#[0 3 222 0 28 0 30] 
#[1 1 245 0 28 7 209 0 94] 
#[0 3 226 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 3 230 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[1 1 245 0 28 7 213 0 94] 
#[0 3 234 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 7 217 0 2 0 98] 
#[0 3 238 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 3 242 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 3 246 0 3 0 6 0 8 0 16] 
#[0 3 250 0 8] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 62 2 85 0 63 7 221 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 7 221 0 122 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 3 254 0 6 0 16] 
#[1 2 30 0 2 2 30 0 3 2 30 0 4 2 30 0 6 2 30 0 8 2 30 0 9 2 30 0 10 2 30 0 16 2 30 0 25 2 30 0 28 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 30 0 49 1 197 0 50 2 30 0 55 2 30 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 30 0 152] 
#[1 2 42 0 2 2 42 0 3 2 42 0 4 2 42 0 6 2 42 0 8 2 42 0 9 2 42 0 10 2 42 0 16 2 42 0 25 2 42 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 2 42 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 42 0 49 1 197 0 50 2 42 0 55 2 42 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 42 0 152] 
#[1 2 58 0 2 2 58 0 3 2 58 0 4 2 58 0 6 2 58 0 8 2 58 0 9 2 58 0 10 2 58 0 16 2 58 0 25 2 58 0 28 5 49 0 29 2 58 0 30 5 57 0 31 5 61 0 32 2 58 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 58 0 49 1 197 0 50 2 58 0 55 2 58 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 58 0 152] 
#[1 2 70 0 2 2 70 0 3 2 70 0 4 2 70 0 6 2 70 0 8 2 70 0 9 2 70 0 10 2 70 0 16 2 70 0 25 2 70 0 28 5 49 0 29 2 70 0 30 2 70 0 31 5 61 0 32 2 70 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 70 0 49 1 197 0 50 2 70 0 55 2 70 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 70 0 152] 
#[1 2 82 0 2 2 82 0 3 2 82 0 4 2 82 0 6 2 82 0 8 2 82 0 9 2 82 0 10 2 82 0 16 2 82 0 25 2 82 0 28 5 49 0 29 2 82 0 30 2 82 0 31 2 82 0 32 2 82 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 82 0 49 1 197 0 50 2 82 0 55 2 82 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 82 0 152] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 6 2 94 0 8 2 94 0 9 2 94 0 10 2 94 0 16 2 94 0 25 2 94 0 28 5 49 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 94 0 49 1 197 0 50 2 94 0 55 2 94 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 94 0 152] 
#[1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 6 2 106 0 8 2 106 0 9 2 106 0 10 2 106 0 16 2 106 0 25 2 106 0 28 5 49 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 35 2 106 0 36 2 106 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 106 0 49 1 197 0 50 2 106 0 55 2 106 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 106 0 152] 
#[1 2 118 0 2 2 118 0 3 2 118 0 4 2 118 0 6 2 118 0 8 2 118 0 9 2 118 0 10 2 118 0 16 2 118 0 25 2 118 0 28 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 118 0 49 1 197 0 50 2 118 0 55 2 118 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 118 0 152] 
#[1 2 130 0 2 2 130 0 3 2 130 0 4 2 130 0 6 2 130 0 8 2 130 0 9 2 130 0 10 2 130 0 16 2 130 0 25 2 130 0 28 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 130 0 49 1 197 0 50 2 130 0 55 2 130 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 130 0 152] 
#[1 2 154 0 2 2 154 0 3 2 154 0 4 2 154 0 6 2 154 0 8 2 154 0 9 2 154 0 10 2 154 0 16 2 154 0 25 2 154 0 28 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 154 0 49 1 197 0 50 2 154 0 55 2 154 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 154 0 152] 
#[1 2 166 0 2 2 166 0 3 2 166 0 4 2 166 0 6 2 166 0 8 2 166 0 9 2 166 0 10 2 166 0 16 2 166 0 25 2 166 0 28 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 166 0 49 1 197 0 50 2 166 0 55 2 166 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 166 0 152] 
#[1 2 178 0 2 2 178 0 3 2 178 0 4 2 178 0 6 2 178 0 8 2 178 0 9 2 178 0 10 2 178 0 16 2 178 0 25 2 178 0 28 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 178 0 49 1 197 0 50 2 178 0 55 2 178 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 178 0 152] 
#[1 2 190 0 2 2 190 0 3 2 190 0 4 2 190 0 6 2 190 0 8 2 190 0 9 2 190 0 10 2 190 0 16 2 190 0 25 2 190 0 28 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 5 101 0 44 2 190 0 49 1 197 0 50 2 190 0 55 2 190 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 190 0 152] 
#[1 2 202 0 2 2 202 0 3 2 202 0 4 2 202 0 6 2 202 0 8 2 202 0 9 2 202 0 10 2 202 0 16 2 202 0 25 2 202 0 28 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 2 202 0 55 2 202 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 202 0 152] 
#[1 2 214 0 2 2 214 0 3 2 214 0 4 2 214 0 6 2 214 0 8 2 214 0 9 2 214 0 10 2 214 0 16 2 214 0 25 2 214 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 2 214 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 214 0 49 1 197 0 50 2 214 0 55 2 214 0 56 1 201 0 57 1 205 0 66 1 213 0 68 2 214 0 152] 
#[0 4 2 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 4 6 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 56 0 57 0 152] 
#[0 4 10 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 148 0 149 0 150 0 151] 
#[1 3 122 0 10 7 225 0 25 7 225 0 55 3 122 0 56 7 225 0 86] 
#[0 4 14 0 10 0 56] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 6 137 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 4 18 0 56 1 253 0 61 2 1 0 62 0 133 0 63 2 5 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 6 141 0 93 2 17 0 94 2 21 0 97 2 25 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 29 0 115 2 33 0 116 2 33 0 117 2 33 0 118 2 33 0 119 2 49 0 121 2 53 0 128 2 57 0 131 2 33 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 4 22 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[0 7 229 0 10] 
#[0 4 26 0 10] 
#[0 4 30 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[0 4 34 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 5 181 0 62 5 185 0 63 7 237 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 7 237 0 125 2 101 0 128 7 241 0 129 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 4 38 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 7 245 0 2 6 193 0 53 7 245 0 98 6 193 0 128] 
#[0 4 42 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 4 46 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 249 0 62 3 169 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 253 0 62 3 181 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 1 0 62 3 197 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 8 5 0 62 7 133 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 3 89 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 5 237 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 101 0 128 2 105 0 129 7 137 0 130 0 161 0 134 0 161 0 135 0 161 0 136 7 141 0 138 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 9 0 62 3 221 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 13 0 62 3 233 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 17 0 62 3 245 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 21 0 62 4 1 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 25 0 62 4 13 0 63 0 141 0 65 4 29 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 29 0 62 4 37 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 33 0 62 4 49 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 37 0 62 4 61 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 41 0 62 4 73 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 45 0 62 4 85 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 49 0 62 4 97 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[1 2 70 0 3 2 70 0 16 1 137 0 29 2 70 0 30 2 70 0 31 1 149 0 32 6 57 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 70 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67 1 213 0 68 6 57 0 137] 
#[1 2 74 0 3 2 74 0 16 1 137 0 29 2 74 0 30 2 74 0 31 1 149 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 74 0 49 1 217 0 66 1 221 0 67 1 225 0 68 6 65 0 137] 
#[0 4 50 0 16] 
#[0 4 54 0 3 0 16] 
#[1 4 58 0 3 4 58 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 4 62 0 3 4 62 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 66 1 221 0 67 1 225 0 68] 
#[1 0 205 0 1 0 190 0 3 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 2 169 0 43 0 190 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 190 0 57 2 157 0 62 2 181 0 64 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 2 169 0 106 2 173 0 107 0 161 0 108 2 177 0 109 0 157 0 110 0 245 0 111 0 249 0 112 1 85 0 113 2 29 0 115 2 181 0 116 2 185 0 117 2 181 0 118 2 181 0 119 2 53 0 128 2 57 0 131 2 185 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 4 66 0 16] 
#[0 4 70 0 3 0 16] 
#[1 4 74 0 3 4 74 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 4 78 0 3 4 78 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 66 1 221 0 67 1 225 0 68] 
#[1 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 6 57 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67 6 57 0 137] 
#[1 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 66 1 221 0 67 1 225 0 68 6 65 0 137] 
#[0 4 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 4 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 8 57 0 16 0 105] 
#[0 4 90 0 3 0 16] 
#[0 4 94 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 4 98 0 3 0 8] 
#[0 4 102 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 4 106 0 2 0 4 0 10 0 25 0 55 0 56] 
#[0 4 110 0 2 0 4 0 10 0 25 0 55 0 56] 
#[0 4 114 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[0 4 118 0 2 0 3 0 6 0 8 0 16] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 4 18 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 4 18 0 56 1 253 0 61 2 1 0 62 0 133 0 63 2 5 0 64 0 141 0 65 0 145 0 69 0 149 0 70 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 6 141 0 93 2 17 0 94 2 21 0 97 2 25 0 99 0 213 0 100 0 217 0 102 0 221 0 104 0 225 0 106 0 229 0 107 0 161 0 108 0 237 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 2 29 0 115 2 33 0 116 2 33 0 117 2 33 0 118 2 33 0 119 2 49 0 121 2 53 0 128 2 57 0 131 2 33 0 132 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 4 122 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 56 0 152] 
#[0 3 142 0 2 0 3] 
#[0 4 126 0 2 0 3] 
#[1 8 65 0 2 8 61 0 3 8 65 0 98] 
#[0 4 130 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 2 30 0 3 2 30 0 16 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 30 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 2 42 0 3 2 42 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 2 42 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 42 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 2 58 0 3 2 58 0 16 7 69 0 29 2 58 0 30 7 77 0 31 8 53 0 32 2 58 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 58 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 7 69 0 29 2 70 0 30 2 70 0 31 8 53 0 32 6 57 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 70 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67 6 57 0 137] 
#[1 2 82 0 3 2 82 0 16 7 69 0 29 2 82 0 30 2 82 0 31 2 82 0 32 2 82 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 82 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 2 94 0 3 2 94 0 16 7 69 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 94 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 2 106 0 3 2 106 0 16 7 69 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 35 2 106 0 36 2 106 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 106 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 2 118 0 3 2 118 0 16 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 118 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 2 130 0 3 2 130 0 16 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 130 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 2 154 0 3 2 154 0 16 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 154 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 2 166 0 3 2 166 0 16 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 166 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 2 178 0 3 2 178 0 16 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 178 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 2 190 0 3 2 190 0 16 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 7 121 0 44 2 190 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 2 202 0 3 2 202 0 16 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 2 214 0 3 2 214 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 2 214 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 214 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 69 0 62 3 209 0 63 0 141 0 65 0 153 0 71 0 157 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 78 0 161 0 79 0 161 0 83 0 161 0 84 0 201 0 87 0 205 0 97 0 161 0 99 0 213 0 100 0 217 0 102 0 221 0 104 5 233 0 106 7 153 0 107 0 161 0 108 5 241 0 109 0 241 0 110 0 245 0 111 0 249 0 112 0 253 0 113 0 161 0 134 0 161 0 135 0 161 0 136 1 13 0 143 0 161 0 147 1 21 0 148 1 25 0 149 1 29 0 150 1 33 0 151] 
#[0 4 134 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 8 73 0 2 6 193 0 53 8 73 0 98 6 193 0 128] 
#[0 4 138 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152] 
#[1 2 70 0 3 2 70 0 16 7 69 0 29 2 70 0 30 2 70 0 31 8 53 0 32 2 70 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 70 0 49 1 197 0 50 1 201 0 57 1 205 0 66 1 209 0 67] 
#[0 4 142 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 56 0 57 0 152]
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
	result addToken: (nodes at: 3) to: result semis.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr7: nodes [

	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result addToken: (nodes at: 2) to: result semis.
	result stab: (nodes at: 3).
	result addToken: (nodes at: 4) to: result semis.
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr8: nodes [

	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result addToken: (nodes at: 2) to: result semis.
	result stab: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr9: nodes [

	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result addToken: (nodes at: 2) to: result semis.
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
ElixirParser >> reduceActionForbracket_values1: nodes [

	| result |
	result := ElixirBracketValuesNode new.
	result addNode: (nodes at: 1) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_values2: nodes [

	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result values.
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
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_op_identifier2: nodes [

	| result |
	result := ElixirDotOpIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
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
ElixirParser >> reduceActionForkw1: nodes [

	| result |
	result := ElixirKwNode new.
	result kw: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForkw2: nodes [

	| result |
	result := ElixirKwNode new.
	result kw: (nodes at: 1).
	result com: (nodes at: 2).
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
ElixirParser >> reduceActionForstab_eoe2: nodes [

	| result |
	result := ElixirStabEoeNode new.
	result stab: (nodes at: 1).
	result eoe: (nodes at: 2).
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
	result when: (nodes at: 2).
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
	result rightParen: (nodes at: 3).
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
