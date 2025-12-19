Class {
	#name : 'CSSParser',
	#superclass : 'SmaCCGLRParser',
	#category : 'SmaCC_CSS',
	#package : 'SmaCC_CSS'
}

{ #category : 'generated' }
CSSParser class >> ambiguousTransitions [
^#(
#[ 0 42 0 138]
	).
]

{ #category : 'generated-accessing' }
CSSParser class >> cacheId [
	^'2025-12-19T11:52:30.750549-06:00'
]

{ #category : 'generated' }
CSSParser class >> definitionComment [
"%glr;
%ignorecase;
%unicode;
%hierarchy Value (Dimension Number Percentage String UnicodeRange URI);
%hierarchy Name (At Hash Identifier);
%prefix CSS;
%suffix Node;
%root Program;

#<A>: a | A | \\ 0{0,4} (41 | 61) (\r\n|[ \t\r\n\f])?;
#<B>: b | B | \\ 0{0,4} (42 | 62) (\r\n|[ \t\r\n\f])?;
#<C>: c | C | \\ 0{0,4} (43 | 63) (\r\n|[ \t\r\n\f])?;
#<D>: d | D | \\ 0{0,4} (44 | 64) (\r\n|[ \t\r\n\f])?;
#<E>: e | E | \\ 0{0,4} (45 | 65) (\r\n|[ \t\r\n\f])?;
#<F>: f | F | \\ 0{0,4} (46 | 66) (\r\n|[ \t\r\n\f])?;
#<G>: g | G | \\ 0{0,4} (47 | 67) (\r\n|[ \t\r\n\f])? | \\g | \\G;
#<H>: h | H | \\ 0{0,4} (48 | 68) (\r\n|[ \t\r\n\f])? | \\h | \\H;
#<I>: i | I | \\ 0{0,4} (49 | 69) (\r\n|[ \t\r\n\f])? | \\i | \\I;
#<K>: k | K | \\ 0{0,4} (4b | 6b) (\r\n|[ \t\r\n\f])? | \\k | \\K;
<L>: l | L | \\ 0{0,4} (4c | 6c) (\r\n|[ \t\r\n\f])? | \\l | \\L;
#<M>: m | M | \\ 0{0,4} (4d | 6d) (\r\n|[ \t\r\n\f])? | \\m | \\M;
#<N>: n | N | \\ 0{0,4} (4e | 6e) (\r\n|[ \t\r\n\f])? | \\n | \\N;
#<O>: o | O | \\ 0{0,4} (4f | 6f) (\r\n|[ \t\r\n\f])? | \\o | \\O;
#<P>: p | P | \\ 0{0,4} (50 | 70) (\r\n|[ \t\r\n\f])? | \\p | \\P;
#<Q>: q | Q | \\ 0{0,4} (51 | 71) (\r\n|[ \t\r\n\f])? | \\q | \\Q;
<R>: r | R | \\ 0{0,4} (52 | 72) (\r\n|[ \t\r\n\f])? | \\r | \\R;
#<S>: s | S | \\ 0{0,4} (53 | 73) (\r\n|[ \t\r\n\f])? | \\s | \\S;
#<T>: t | T | \\ 0{0,4} (54 | 74) (\r\n|[ \t\r\n\f])? | \\t | \\T;
<U>: u | U | \\ 0{0,4} (55 | 75) (\r\n|[ \t\r\n\f])? | \\u | \\U;
#<V>: v | V | \\ 0{0,4} (56 | 76) (\r\n|[ \t\r\n\f])? | \\v | \\V;
#<W>: w | W | \\ 0{0,4} (57 | 77) (\r\n|[ \t\r\n\f])? | \\w | \\W;
#<X>: x | X | \\ 0{0,4} (58 | 78) (\r\n|[ \t\r\n\f])? | \\x | \\X;
#<Y>: y | Y | \\ 0{0,4} (59 | 79) (\r\n|[ \t\r\n\f])? | \\y | \\Y;
#<Z>: z | Z | \\ 0{0,4} (5a | 7a) (\r\n|[ \t\r\n\f])? | \\z | \\Z;

<escape> : <unicode>|\\[^\r\n\f0-9a-f];
<hex> : [0-9a-f];
<name> : <nmchar>+;
<nl> : \n|\r\n|\r|\f;
<nmchar> : [0-9\-] | <nmstart>;
<nmstart> : [_a-z]|<nonascii>|<escape>;
<nonascii> : [^\x0-\x7F];
<num> : [\-\+]?[0-9]+|[\-\+]?[0-9]*\.[0-9]+;
<unicode> : \\<hex>{1,6}(\r\n|[ \t\r\n\f])?;

#<ANGLE> : <num> (<D><E><G> | <G>?<R><A><D>);
<ATKEYWORD> : \@ <IDENT>;
<CDC> : \-\-\>;
<CDO> : \<\!\-\-;
#<CHARSET_SYM> : \@charset\ ;
#<COMMA> : \,;
<DASHMATCH> : \|\=;
<DIMENSION> : <num> <IDENT> ;
#<EMS> : <num> <E><M>;
#<EXS> : <num> <E><X>;
#<FREQ> : <num> <K>?<H><Z>;
<FUNCTION> : <IDENT>\(;
<HASH> : \# <name>;
<IDENT> : \-*/*?*/<nmstart><nmchar>*;
#<IMPORT_SYM> : \@ <I><M><P><O><R><T> ;
#<IMPORTANT_SYM> : \! (<ws>|<comment>)* <I><M><P><O><R><T><A><N><T>;
<INCLUDES> : \~\=;
#<LENGTH> : <num> (<P><X> | <C><M> | <M><M> | <I><N> | <P><T> | <P><C>);
#<MEDIA_SYM> : \@ <M><E><D><I><A>;
<NUMBER> : <num>;
#<PAGE_SYM> : \@ <P><A><G><E>;
<PERCENTAGE> : <num>\%;
<STRING> : (\""([^\n\r\f\\\""]|\\<nl>|<escape>)*\"") | (\'([^\n\r\f\\\']|\\<nl>|<escape>)*\');
#<TIME> : <num> <M>?<S>;
<UNICODERANGE> 
	: u\+\?{1,6}
	| u\+[0-9a-f]\?{0,5}
	| u\+[0-9a-f]{2,2}\?{0,4}
	| u\+[0-9a-f]{3,3}\?{0,3}
	| u\+[0-9a-f]{4,4}\?{0,2}
	| u\+[0-9a-f]{5,5}\?{0,1}
	| u\+[0-9a-f]{6,6}
	| u\+[0-9a-f]{1,6}\-[0-9a-f]{1,6}
	;
<URI> : <U><R><L>\(<ws>? <STRING><ws>?\);

<ws> : [\ \t\r\n\f]+;
<comment>: \/\* [^\*]* \*+ ( [^\/\*] [^\*]* \*+)* \/;
<DELIM> : .;	# anything that doesn't match above

stylesheet
  : /* ( <CHARSET_SYM> <STRING> "";"" )?
    (<ws>|<CDO>|<CDC>)* ( import ( <CDO> WS | <CDC> WS )* )*
    ( ( ruleset | media | page ) ( <CDO> WS | <CDC> WS )* )* */
    WS ( CDO 'item' | CDC 'item' | statement 'item' )* {{}}
  ;
CDO
	: <CDO> 'comment' WS {{CommentDelimiter}}
	;
CDC
	: <CDC> 'comment' WS {{CommentDelimiter}}
	;
statement
	: ruleset
	| atrule
	;
atrule
	: ATKEYWORD 'atKeyword' WS anyWithWS 'part'* ( block 'block' | "";"" 'semicolon' ) WS {{AtRule}}
	;
anyWithWS
	: any WS ['1']
	;
any
	: anyWithoutColon
	| "":"" 'value' {{Delimiter}} 
	;
unused
	: block WS ['1']
	| ATKEYWORD WS ['1'] 
	| "";"" 'value' WS {{Delimiter}}
	| CDO 
	| CDC
	;
block
	: ""{"" 'leftBrace' WS ( anyWithWS 'item' | block 'item' WS | ATKEYWORD 'item' WS | "";"" 'semicolon' WS )* ""}"" 'rightBrace' {{}}
	;
ruleset
	: /*selector ( "","" WS selector )*
	 ""{"" WS declaration? ( "";"" WS declaration? )* ""}"" WS */
	selector? ""{"" 'leftBrace' WS declaration_list ""}"" 'rightBrace' WS {{}}
  ;
selector
	: /* simple_selector ( combinator selector | <ws>+ ( combinator? selector )? )? */
	  anyWithWS 'selectorPart'+
	;
declaration_list
	: declaration 'item' ( "";"" 'semicolon' WS declaration_list )?
	| atrule 'item' declaration_list
	| rulesetWithoutColon 'item' declaration_list
	|
	;
rulesetWithoutColon
	: selectorWithoutColon? ""{"" 'leftBrace' WS declaration_list ""}"" 'rightBrace' WS {{Ruleset}}
  ;
selectorWithoutColon
	: anyWithoutColonWithWS 'selectorPart'+
	;
anyWithoutColonWithWS
	: anyWithoutColon WS ['1']
	;
anyWithoutColon
	: <IDENT> 'name' {{Identifier}} 
	| <NUMBER> 'value' {{Number}}
	| <PERCENTAGE> 'value' {{Percentage}}
	| <DIMENSION> 'value' {{Dimension}}
	| <STRING> 'value' {{String}}
	| <DELIM> 'value' {{Delimiter}}
	| <URI> 'value' {{URI}}
	| <HASH> 'name' {{Hash}}
	| <UNICODERANGE> 'value' {{UnicodeRange}}
	| <INCLUDES> 'value' {{Operator}}
	| <DASHMATCH> 'value' {{Operator}}
	| <FUNCTION> 'name' WS (anyWithWS 'item' | unused 'item')* "")"" 'rightParen' {{Function}}
	| ""("" 'leftParen' WS (anyWithWS 'item' | unused 'item')* "")"" 'rightParen' {{ParenthesizedExpression}}
	| ""["" 'leftBracket' WS (anyWithWS 'item' | unused 'item')* ""]"" 'rightBracket' {{BracketExpression}}
	;
declaration
	: /* property "":"" WS expr prio? */
	  property WS "":"" 'colon' WS value {{}}
	;
property
	: /* <IDENT> WS */
	  <IDENT> 'name'
	| ""*"" 'star' WS <IDENT> 'name'
	;
value
	: ( anyWithWS 'value' | block 'value' WS | ATKEYWORD 'value' WS )+
	;
ATKEYWORD
	: <ATKEYWORD> 'name' {{At}}
	;
WS
  : [nil]
  | WS <ws> [nil]
  ;
/*import
  : <IMPORT_SYM> WS
    (<STRING>|<URI>) WS media_list? "";"" WS
  ;
media
  : <MEDIA_SYM> WS media_list ""{"" WS ruleset* ""}"" WS
  ;
media_list
  : medium ( <COMMA> WS medium)*
  ;
medium
  : <IDENT> WS
  ;
page
  : <PAGE_SYM> WS pseudo_page?
    ""{"" WS declaration? ( "";"" WS declaration? )* ""}"" WS
  ;
pseudo_page
  : "":"" <IDENT> WS
  ;
operator
  : ""/"" WS | "","" WS
  | ""="" WS	# IE
  ;
combinator
  : ""+"" WS
  | "">"" WS
  ;*/
/*simple_selector
  : element_name ( <HASH> | class | attrib | pseudo )*
  | ( <HASH> | class | attrib | pseudo )+
  ;
class
  : ""."" <IDENT>
  ;
element_name
  : <IDENT> | ""*""
  ;
attrib
  : ""["" WS <IDENT> WS ( ( ""="" | <INCLUDES> | <DASHMATCH> ) WS
    ( <IDENT> | <STRING> ) WS )? ""]""
  ;
pseudo
  : "":"" "":""? ( <IDENT> | <FUNCTION> WS (<IDENT> WS)? "")"" )
  ;
prio
  : <IMPORTANT_SYM> WS
  ;
expr
  : term ( operator? term )*
  ;
term
  : ( <NUMBER> WS | <PERCENTAGE> WS | <DIMENSION> WS /*<LENGTH> WS | <EMS> WS | <EXS> WS | <ANGLE> WS |
      <TIME> WS | <FREQ> WS * / )
  | <STRING> WS | <IDENT> WS | <URI> WS | hexcolor | function
  ;
function
  : <FUNCTION> WS expr "")"" WS
  ;*/
/*
 * There is a constraint on the color that it must
 * have either 3 or 6 hex-digits (i.e., [0-9a-fA-F])
 * after the ""#""; e.g., ""#000"" is OK, but ""#abcd"" is not.
 */
/*hexcolor
  : <HASH> WS
  ;*/"
]

{ #category : 'accessing' }
CSSParser class >> fileExtension [
	^ '.css'
]

{ #category : 'generated' }
CSSParser class >> reduceTable [
^#(
	#(59 0 #nil 5857281 true) 
	#(30 0 #reduceActionFor__CDO__item____CDC__item____statement__item____1: 3507201 false) 
	#(59 2 #nil 5857282 true) 
	#(28 2 #reduceActionForstylesheet1: 3320833 false) 
	#(37 1 #reduceActionForany2: 3841026 false) 
	#(58 1 #reduceActionForATKEYWORD1: 5814273 false) 
	#(50 1 #reduceActionForanyWithoutColon11: 4857867 false) 
	#(50 1 #reduceActionForanyWithoutColon4: 4857860 false) 
	#(50 1 #reduceActionForanyWithoutColon8: 4857864 false) 
	#(50 1 #reduceActionForanyWithoutColon1: 4857857 false) 
	#(50 1 #reduceActionForanyWithoutColon11: 4857866 false) 
	#(50 1 #reduceActionForanyWithoutColon2: 4857858 false) 
	#(50 1 #reduceActionForanyWithoutColon3: 4857859 false) 
	#(50 1 #reduceActionForanyWithoutColon5: 4857861 false) 
	#(50 1 #reduceActionForanyWithoutColon9: 4857865 false) 
	#(50 1 #reduceActionForanyWithoutColon7: 4857863 false) 
	#(50 1 #reduceActionForany2: 4857862 false) 
	#(30 2 #reduceActionFor__CDO__item____CDC__item____statement__item____2: 3507202 false) 
	#(29 1 #liftFirstValue: 3507201 false) 
	#(29 1 #liftFirstValue: 3507202 false) 
	#(29 1 #liftFirstValue: 3507203 false) 
	#(33 1 #liftFirstValue: 3667970 false) 
	#(44 1 #reduceActionForanyWithWS__selectorPart__1: 4416513 false) 
	#(33 1 #liftFirstValue: 3667969 false) 
	#(43 1 #reduceActionForselector1: 4318209 false) 
	#(37 1 #liftFirstValue: 3841025 false) 
	#(52 0 #reduceActionFor__CDO__item____CDC__item____statement__item____1: 5277697 false) 
	#(45 0 #reduceActionFordeclaration_list5: 4446213 false) 
	#(32 2 #reduceActionForCDC1: 3616769 false) 
	#(31 2 #reduceActionForCDC1: 3565569 false) 
	#(36 2 #liftFirstValue: 3811329 true) 
	#(44 2 #reduceActionFor__CDO__item____CDC__item____statement__item____2: 4416514 false) 
	#(35 0 #reduceActionFor__CDO__item____CDC__item____statement__item____1: 3738625 false) 
	#(54 1 #reduceActionForproperty1: 5651457 false) 
	#(47 1 #reduceActionForselector1: 4737025 false) 
	#(48 1 #reduceActionForanyWithWS__selectorPart__1: 4761601 false) 
	#(45 1 #reduceActionFordeclaration_list1: 4446209 false) 
	#(50 4 #reduceActionForanyWithoutColon13: 4857869 false) 
	#(38 1 #liftFirstValue: 3898372 false) 
	#(38 1 #liftFirstValue: 3898373 false) 
	#(51 1 #liftFirstValue: 5277697 false) 
	#(51 1 #liftFirstValue: 5277698 false) 
	#(52 2 #reduceActionFor__CDO__item____CDC__item____statement__item____2: 5277698 false) 
	#(50 4 #reduceActionForanyWithoutColon14: 4857870 false) 
	#(45 2 #reduceActionFordeclaration_list3: 4446211 false) 
	#(45 2 #reduceActionFordeclaration_list3: 4446212 false) 
	#(48 2 #reduceActionFor__CDO__item____CDC__item____statement__item____2: 4761602 false) 
	#(49 2 #liftFirstValue: 4803585 true) 
	#(50 4 #reduceActionForanyWithoutColon12: 4857868 false) 
	#(35 2 #reduceActionFor__CDO__item____CDC__item____statement__item____2: 3738626 false) 
	#(38 2 #reduceActionForany2: 3898371 false) 
	#(41 0 #reduceActionFordeclaration_list5: 4027393 false) 
	#(38 2 #liftFirstValue: 3898369 true) 
	#(38 2 #liftFirstValue: 3898370 true) 
	#(54 3 #reduceActionForproperty2: 5651458 false) 
	#(42 5 #reduceActionForruleset1: 4137985 false) 
	#(34 5 #reduceActionForatrule2: 3702786 false) 
	#(34 5 #reduceActionForatrule1: 3702785 false) 
	#(45 4 #reduceActionFordeclaration_list2: 4446210 false) 
	#(42 6 #reduceActionForruleset2: 4137986 false) 
	#(39 4 #reduceActionForblock1: 3998721 false) 
	#(40 1 #reduceActionForproperty1: 4027393 false) 
	#(41 2 #reduceActionFor__anyWithWS__item____block__item__WS___ATKEYWORD__item__WS________semicolon__WS___2: 4027394 false) 
	#(46 5 #reduceActionForruleset1: 4617217 false) 
	#(56 1 #liftFirstValue: 5744641 false) 
	#(53 5 #reduceActionFordeclaration1: 5557249 false) 
	#(57 1 #reduceActionForanyWithWS__selectorPart__1: 5744641 false) 
	#(55 1 #reduceActionForselector1: 5735425 false) 
	#(40 2 #reduceActionFor__anyWithWS__item____block__item__WS___ATKEYWORD__item__WS________semicolon__WS__4: 4027396 false) 
	#(40 2 #reduceActionForproperty1: 4027394 false) 
	#(40 2 #reduceActionForproperty1: 4027395 false) 
	#(46 6 #reduceActionForruleset2: 4617218 false) 
	#(56 2 #liftFirstValue: 5744642 false) 
	#(57 2 #reduceActionFor__CDO__item____CDC__item____statement__item____2: 5744642 false) 
	#(56 2 #liftFirstValue: 5744643 false)
	).
]

{ #category : 'generated' }
CSSParser class >> scannerClass [
	^CSSScanner
]

{ #category : 'generated' }
CSSParser class >> startingStateForstylesheet [
	^ 1
]

{ #category : 'generated' }
CSSParser class >> symbolNames [
	^ #('"("' '")"' '"*"' '":"' '";"' '"["' '"]"' '"{"' '"}"' '<ATKEYWORD>' '<CDC>' '<CDO>' '<DASHMATCH>' '<DIMENSION>' '<FUNCTION>' '<HASH>' '<IDENT>' '<INCLUDES>' '<NUMBER>' '<PERCENTAGE>' '<STRING>' '<UNICODERANGE>' '<URI>' '<ws>' '<comment>' '<DELIM>' 'B e g i n' 'stylesheet' '( CDO ''item'' | CDC ''item'' | statement ''item'' )' '( CDO ''item'' | CDC ''item'' | statement ''item'' )*' 'CDO' 'CDC' 'statement' 'atrule' 'anyWithWS ''part''*' 'anyWithWS' 'any' 'unused' 'block' '( anyWithWS ''item'' | block ''item'' WS | ATKEYWORD ''item'' WS | ";" ''semicolon'' WS )' '( anyWithWS ''item'' | block ''item'' WS | ATKEYWORD ''item'' WS | ";" ''semicolon'' WS )*' 'ruleset' 'selector' 'anyWithWS ''selectorPart''+' 'declaration_list' 'rulesetWithoutColon' 'selectorWithoutColon' 'anyWithoutColonWithWS ''selectorPart''+' 'anyWithoutColonWithWS' 'anyWithoutColon' '(anyWithWS ''item'' | unused ''item'')' '(anyWithWS ''item'' | unused ''item'')*' 'declaration' 'property' 'value' '( anyWithWS ''value'' | block ''value'' WS | ATKEYWORD ''value'' WS )' '( anyWithWS ''value'' | block ''value'' WS | ATKEYWORD ''value'' WS )+' 'ATKEYWORD' 'WS' 'E O F' 'error')
]

{ #category : 'generated' }
CSSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CSSStylesheetNode #CSSStylesheetNode #CSSProgramNode #OrderedCollection #CSSCommentDelimiterNode #CSSCommentDelimiterNode #CSSProgramNode #CSSAtRuleNode #OrderedCollection #CSSProgramNode #CSSProgramNode #CSSProgramNode #CSSBlockNode #OrderedCollection #OrderedCollection #CSSRulesetNode #OrderedCollection #OrderedCollection #OrderedCollection #CSSRulesetNode #OrderedCollection #OrderedCollection #CSSProgramNode #CSSProgramNode #CSSProgramNode #OrderedCollection #CSSDeclarationNode #OrderedCollection #OrderedCollection #CSSProgramNode #OrderedCollection #CSSAtNode nil #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
CSSParser class >> transitionTable [
^#(
#[1 0 6 0 1 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 9 0 28 0 13 0 59 0 6 0 60] 
#[0 0 0 0 60] 
#[1 0 10 0 1 0 10 0 4 0 10 0 6 0 10 0 8 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 13 0 10 0 14 0 10 0 15 0 10 0 16 0 10 0 17 0 10 0 18 0 10 0 19 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 17 0 24 0 10 0 26 0 21 0 30 0 10 0 60] 
#[0 0 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26 0 60] 
#[1 0 25 0 1 0 29 0 4 0 33 0 6 0 37 0 8 0 41 0 10 0 45 0 11 0 49 0 12 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 0 101 0 29 0 101 0 31 0 101 0 32 0 101 0 33 0 101 0 34 0 121 0 36 0 125 0 37 0 101 0 42 0 133 0 43 0 137 0 44 0 125 0 50 0 145 0 58 0 18 0 60] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 149 0 59] 
#[0 0 22 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 153 0 59] 
#[1 0 6 0 1 0 6 0 3 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 157 0 59] 
#[0 0 26 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 161 0 59 0 6 0 60] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 165 0 59 0 6 0 60] 
#[0 0 30 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 34 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 169 0 59] 
#[0 0 38 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 42 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 46 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 50 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 54 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 58 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 62 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 66 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 70 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 74 0 1 0 4 0 6 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26 0 60] 
#[0 0 78 0 1 0 4 0 6 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26 0 60] 
#[0 0 82 0 1 0 4 0 6 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26 0 60] 
#[0 0 86 0 1 0 4 0 6 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26 0 60] 
#[0 0 90 0 1 0 4 0 6 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26 0 60] 
#[0 0 94 0 1 0 4 0 6 0 8 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 173 0 59] 
#[0 0 98 0 1 0 4 0 6 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26 0 60] 
#[0 0 177 0 8] 
#[1 0 25 0 1 0 29 0 4 0 33 0 6 0 102 0 8 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 0 181 0 36 0 125 0 37 0 125 0 50] 
#[0 0 106 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 185 0 59] 
#[1 0 110 0 1 0 110 0 2 0 110 0 4 0 110 0 5 0 110 0 6 0 110 0 8 0 110 0 10 0 110 0 11 0 110 0 12 0 110 0 13 0 110 0 14 0 110 0 15 0 110 0 16 0 110 0 17 0 110 0 18 0 110 0 19 0 110 0 20 0 110 0 21 0 110 0 22 0 110 0 23 0 17 0 24 0 110 0 26 0 189 0 52] 
#[1 0 110 0 1 0 110 0 4 0 110 0 5 0 110 0 6 0 110 0 7 0 110 0 8 0 110 0 10 0 110 0 11 0 110 0 12 0 110 0 13 0 110 0 14 0 110 0 15 0 110 0 16 0 110 0 17 0 110 0 18 0 110 0 19 0 110 0 20 0 110 0 21 0 110 0 22 0 110 0 23 0 17 0 24 0 110 0 26 0 193 0 52] 
#[1 0 25 0 1 0 197 0 3 0 33 0 6 0 201 0 8 0 114 0 9 0 41 0 10 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 205 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 17 0 24 0 97 0 26 0 209 0 34 0 213 0 45 0 217 0 46 0 221 0 47 0 225 0 48 0 229 0 49 0 233 0 50 0 237 0 53 0 241 0 54 0 145 0 58] 
#[1 0 118 0 1 0 118 0 2 0 118 0 4 0 118 0 5 0 118 0 6 0 118 0 7 0 118 0 8 0 118 0 10 0 118 0 11 0 118 0 12 0 118 0 13 0 118 0 14 0 118 0 15 0 118 0 16 0 118 0 17 0 118 0 18 0 118 0 19 0 118 0 20 0 118 0 21 0 118 0 22 0 118 0 23 0 17 0 24 0 118 0 26 0 118 0 60] 
#[1 0 122 0 1 0 122 0 2 0 122 0 4 0 122 0 5 0 122 0 6 0 122 0 7 0 122 0 8 0 122 0 10 0 122 0 11 0 122 0 12 0 122 0 13 0 122 0 14 0 122 0 15 0 122 0 16 0 122 0 17 0 122 0 18 0 122 0 19 0 122 0 20 0 122 0 21 0 122 0 22 0 122 0 23 0 17 0 24 0 122 0 26 0 122 0 60] 
#[1 0 110 0 1 0 110 0 2 0 110 0 4 0 110 0 5 0 110 0 6 0 110 0 8 0 110 0 10 0 110 0 11 0 110 0 12 0 110 0 13 0 110 0 14 0 110 0 15 0 110 0 16 0 110 0 17 0 110 0 18 0 110 0 19 0 110 0 20 0 110 0 21 0 110 0 22 0 110 0 23 0 17 0 24 0 110 0 26 0 245 0 52] 
#[1 0 126 0 1 0 126 0 2 0 126 0 4 0 126 0 5 0 126 0 6 0 126 0 7 0 126 0 8 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 126 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 17 0 24 0 126 0 26] 
#[1 0 6 0 1 0 6 0 3 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 249 0 59] 
#[0 0 130 0 1 0 4 0 6 0 8 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 134 0 1 0 134 0 4 0 134 0 5 0 134 0 6 0 134 0 8 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 17 0 134 0 18 0 134 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 17 0 24 0 134 0 26 0 253 0 35] 
#[1 0 25 0 1 1 1 0 2 0 29 0 4 1 5 0 5 0 33 0 6 1 9 0 8 0 41 0 10 0 45 0 11 0 49 0 12 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 1 33 0 31 1 33 0 32 1 33 0 36 0 125 0 37 1 33 0 38 1 29 0 39 0 125 0 50 1 33 0 51 1 37 0 58] 
#[1 0 25 0 1 0 29 0 4 1 5 0 5 0 33 0 6 1 41 0 7 1 9 0 8 0 41 0 10 0 45 0 11 0 49 0 12 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 1 33 0 31 1 33 0 32 1 33 0 36 0 125 0 37 1 33 0 38 1 29 0 39 0 125 0 50 1 33 0 51 1 37 0 58] 
#[1 0 6 0 17 0 6 0 24 1 45 0 59] 
#[1 0 6 0 1 0 6 0 3 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 49 0 59] 
#[1 0 42 0 1 0 138 0 4 0 42 0 6 0 42 0 8 0 42 0 13 0 42 0 14 0 42 0 15 0 42 0 16 0 42 0 17 0 42 0 18 0 42 0 19 0 42 0 20 0 42 0 21 0 42 0 22 0 42 0 23 0 7 0 24 0 42 0 26] 
#[1 0 25 0 1 0 197 0 3 0 33 0 6 0 201 0 8 0 114 0 9 0 41 0 10 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 205 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 0 209 0 34 1 53 0 45 0 217 0 46 0 221 0 47 0 225 0 48 0 229 0 49 0 233 0 50 0 237 0 53 0 241 0 54 0 145 0 58] 
#[0 1 57 0 9] 
#[1 0 25 0 1 0 197 0 3 0 33 0 6 0 201 0 8 0 114 0 9 0 41 0 10 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 205 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 0 209 0 34 1 61 0 45 0 217 0 46 0 221 0 47 0 225 0 48 0 229 0 49 0 233 0 50 0 237 0 53 0 241 0 54 0 145 0 58] 
#[0 1 65 0 8] 
#[1 0 25 0 1 0 33 0 6 0 142 0 8 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 1 69 0 49 0 233 0 50] 
#[0 0 146 0 1 0 6 0 8 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 6 0 6 0 8 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 73 0 59] 
#[1 1 77 0 5 0 150 0 9] 
#[1 0 6 0 4 0 6 0 24 1 81 0 59] 
#[1 0 25 0 1 1 85 0 2 0 29 0 4 1 5 0 5 0 33 0 6 1 9 0 8 0 41 0 10 0 45 0 11 0 49 0 12 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 1 33 0 31 1 33 0 32 1 33 0 36 0 125 0 37 1 33 0 38 1 29 0 39 0 125 0 50 1 33 0 51 1 37 0 58] 
#[1 0 25 0 1 0 197 0 3 0 33 0 6 0 201 0 8 0 114 0 9 0 41 0 10 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 205 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 17 0 24 0 97 0 26 0 209 0 34 1 89 0 45 0 217 0 46 0 221 0 47 0 225 0 48 0 229 0 49 0 233 0 50 0 237 0 53 0 241 0 54 0 145 0 58] 
#[1 0 25 0 1 0 29 0 4 1 93 0 5 0 33 0 6 1 9 0 8 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 1 97 0 36 0 125 0 37 1 101 0 39 0 125 0 50] 
#[0 0 154 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 105 0 59] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 109 0 59] 
#[0 0 158 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[0 0 162 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[0 0 166 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[0 0 170 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 113 0 59] 
#[0 0 174 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 117 0 59] 
#[0 0 178 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[1 1 121 0 17 0 17 0 24] 
#[1 0 25 0 1 0 197 0 3 0 33 0 6 0 201 0 8 0 114 0 9 0 41 0 10 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 205 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 17 0 24 0 97 0 26 0 209 0 34 1 125 0 45 0 217 0 46 0 221 0 47 0 225 0 48 0 229 0 49 0 233 0 50 0 237 0 53 0 241 0 54 0 145 0 58] 
#[0 0 182 0 9] 
#[1 0 6 0 1 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 129 0 59 0 6 0 60] 
#[0 0 186 0 9] 
#[1 0 6 0 1 0 6 0 3 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 133 0 59] 
#[0 0 190 0 1 0 6 0 8 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 194 0 1 0 194 0 6 0 194 0 8 0 194 0 13 0 194 0 14 0 194 0 15 0 194 0 16 0 194 0 17 0 194 0 18 0 194 0 19 0 194 0 20 0 194 0 21 0 194 0 22 0 194 0 23 0 17 0 24 0 194 0 26] 
#[1 0 6 0 1 0 6 0 3 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 137 0 59] 
#[1 1 141 0 4 0 17 0 24] 
#[0 0 198 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 1 145 0 9] 
#[1 0 6 0 1 0 6 0 3 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 149 0 59 0 6 0 60] 
#[0 0 202 0 1 0 4 0 5 0 6 0 8 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 3 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 153 0 59 0 6 0 60] 
#[1 0 206 0 1 0 206 0 2 0 206 0 4 0 206 0 5 0 206 0 6 0 206 0 7 0 206 0 8 0 206 0 10 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 15 0 206 0 16 0 206 0 17 0 206 0 18 0 206 0 19 0 206 0 20 0 206 0 21 0 206 0 22 0 206 0 23 0 17 0 24 0 206 0 26] 
#[1 0 210 0 1 0 210 0 4 0 210 0 5 0 210 0 6 0 210 0 8 0 210 0 9 0 210 0 10 0 210 0 13 0 210 0 14 0 210 0 15 0 210 0 16 0 210 0 17 0 210 0 18 0 210 0 19 0 210 0 20 0 210 0 21 0 210 0 22 0 210 0 23 0 17 0 24 0 210 0 26 1 157 0 41] 
#[1 0 214 0 1 0 214 0 2 0 214 0 4 0 214 0 5 0 214 0 6 0 214 0 7 0 214 0 8 0 214 0 10 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 0 214 0 15 0 214 0 16 0 214 0 17 0 214 0 18 0 214 0 19 0 214 0 20 0 214 0 21 0 214 0 22 0 214 0 23 0 17 0 24 0 214 0 26] 
#[1 0 218 0 1 0 218 0 2 0 218 0 4 0 218 0 5 0 218 0 6 0 218 0 7 0 218 0 8 0 218 0 10 0 218 0 11 0 218 0 12 0 218 0 13 0 218 0 14 0 218 0 15 0 218 0 16 0 218 0 17 0 218 0 18 0 218 0 19 0 218 0 20 0 218 0 21 0 218 0 22 0 218 0 23 0 17 0 24 0 218 0 26] 
#[0 0 222 0 4 0 24] 
#[0 1 161 0 9] 
#[1 0 226 0 1 0 226 0 4 0 226 0 6 0 226 0 8 0 226 0 10 0 226 0 11 0 226 0 12 0 226 0 13 0 226 0 14 0 226 0 15 0 226 0 16 0 226 0 17 0 226 0 18 0 226 0 19 0 226 0 20 0 226 0 21 0 226 0 22 0 226 0 23 0 17 0 24 0 226 0 26 0 226 0 60] 
#[1 0 25 0 1 0 197 0 3 0 33 0 6 0 201 0 8 0 114 0 9 0 41 0 10 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 205 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 17 0 24 0 97 0 26 0 209 0 34 1 165 0 45 0 217 0 46 0 221 0 47 0 225 0 48 0 229 0 49 0 233 0 50 0 237 0 53 0 241 0 54 0 145 0 58] 
#[1 0 25 0 1 0 197 0 3 0 33 0 6 0 201 0 8 0 114 0 9 0 41 0 10 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 205 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 17 0 24 0 97 0 26 0 209 0 34 1 169 0 45 0 217 0 46 0 221 0 47 0 225 0 48 0 229 0 49 0 233 0 50 0 237 0 53 0 241 0 54 0 145 0 58] 
#[1 0 6 0 1 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 173 0 59] 
#[1 0 6 0 1 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 177 0 59 0 6 0 60] 
#[1 0 230 0 1 0 230 0 3 0 230 0 4 0 230 0 6 0 230 0 8 0 230 0 9 0 230 0 10 0 230 0 11 0 230 0 12 0 230 0 13 0 230 0 14 0 230 0 15 0 230 0 16 0 230 0 17 0 230 0 18 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 22 0 230 0 23 0 17 0 24 0 230 0 26 0 230 0 60] 
#[1 0 234 0 1 0 234 0 3 0 234 0 4 0 234 0 6 0 234 0 8 0 234 0 9 0 234 0 10 0 234 0 11 0 234 0 12 0 234 0 13 0 234 0 14 0 234 0 15 0 234 0 16 0 234 0 17 0 234 0 18 0 234 0 19 0 234 0 20 0 234 0 21 0 234 0 22 0 234 0 23 0 17 0 24 0 234 0 26 0 234 0 60] 
#[1 0 25 0 1 0 29 0 4 1 181 0 5 0 33 0 6 1 9 0 8 1 185 0 9 0 41 0 10 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 1 189 0 36 0 125 0 37 1 193 0 39 1 197 0 40 0 125 0 50 1 201 0 58] 
#[1 0 6 0 1 0 6 0 3 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 205 0 59] 
#[0 1 209 0 9] 
#[0 0 238 0 9] 
#[1 0 25 0 1 0 29 0 4 0 33 0 6 1 9 0 8 0 41 0 10 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 17 0 24 0 97 0 26 1 225 0 36 0 125 0 37 1 217 0 39 0 125 0 50 1 221 0 55 1 225 0 56 1 229 0 57 1 233 0 58] 
#[1 0 242 0 1 0 242 0 4 0 242 0 6 0 242 0 8 0 242 0 10 0 242 0 11 0 242 0 12 0 242 0 13 0 242 0 14 0 242 0 15 0 242 0 16 0 242 0 17 0 242 0 18 0 242 0 19 0 242 0 20 0 242 0 21 0 242 0 22 0 242 0 23 0 17 0 24 0 242 0 26 0 242 0 60] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 237 0 59] 
#[0 0 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26 0 60] 
#[0 0 250 0 1 0 4 0 5 0 6 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 241 0 59] 
#[0 0 254 0 1 0 4 0 5 0 6 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 245 0 59] 
#[1 1 2 0 1 1 2 0 3 1 2 0 6 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 13 1 2 0 14 1 2 0 15 1 2 0 16 1 2 0 17 1 2 0 18 1 2 0 19 1 2 0 20 1 2 0 21 1 2 0 22 1 2 0 23 0 17 0 24 1 2 0 26] 
#[1 0 6 0 1 0 6 0 3 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 249 0 59] 
#[0 1 6 0 1 0 4 0 5 0 6 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 253 0 59] 
#[0 1 10 0 5 0 9] 
#[0 1 14 0 1 0 4 0 5 0 6 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 25 0 1 0 29 0 4 1 18 0 5 0 33 0 6 1 9 0 8 1 18 0 9 0 41 0 10 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 2 1 0 36 0 125 0 37 1 217 0 39 0 125 0 50 2 1 0 56 1 233 0 58] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 2 5 0 59] 
#[1 1 22 0 1 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 0 17 0 24 1 22 0 26] 
#[1 1 26 0 1 1 26 0 4 1 26 0 5 1 26 0 6 1 26 0 8 1 26 0 9 1 26 0 10 1 26 0 13 1 26 0 14 1 26 0 15 1 26 0 16 1 26 0 17 1 26 0 18 1 26 0 19 1 26 0 20 1 26 0 21 1 26 0 22 1 26 0 23 0 17 0 24 1 26 0 26] 
#[1 1 30 0 1 1 30 0 4 1 30 0 5 1 30 0 6 1 30 0 8 1 30 0 9 1 30 0 10 1 30 0 13 1 30 0 14 1 30 0 15 1 30 0 16 1 30 0 17 1 30 0 18 1 30 0 19 1 30 0 20 1 30 0 21 1 30 0 22 1 30 0 23 0 17 0 24 1 30 0 26] 
#[1 1 34 0 1 1 34 0 3 1 34 0 6 1 34 0 8 1 34 0 9 1 34 0 10 1 34 0 13 1 34 0 14 1 34 0 15 1 34 0 16 1 34 0 17 1 34 0 18 1 34 0 19 1 34 0 20 1 34 0 21 1 34 0 22 1 34 0 23 0 17 0 24 1 34 0 26] 
#[1 1 38 0 1 1 38 0 4 1 38 0 5 1 38 0 6 1 38 0 8 1 38 0 9 1 38 0 10 1 38 0 13 1 38 0 14 1 38 0 15 1 38 0 16 1 38 0 17 1 38 0 18 1 38 0 19 1 38 0 20 1 38 0 21 1 38 0 22 1 38 0 23 0 17 0 24 1 38 0 26] 
#[0 1 42 0 1 0 4 0 5 0 6 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 1 46 0 1 1 46 0 4 1 46 0 5 1 46 0 6 1 46 0 8 1 46 0 9 1 46 0 10 1 46 0 13 1 46 0 14 1 46 0 15 1 46 0 16 1 46 0 17 1 46 0 18 1 46 0 19 1 46 0 20 1 46 0 21 1 46 0 22 1 46 0 23 0 17 0 24 1 46 0 26]
	).
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForATKEYWORD1: nodes [
	| result |
	result := CSSAtNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForCDC1: nodes [
	| result |
	result := CSSCommentDelimiterNode new.
	result comment: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionFor__CDO__item____CDC__item____statement__item____1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionFor__CDO__item____CDC__item____statement__item____2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionFor__anyWithWS__item____block__item__WS___ATKEYWORD__item__WS________semicolon__WS__4: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionFor__anyWithWS__item____block__item__WS___ATKEYWORD__item__WS________semicolon__WS___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany2: nodes [
	| result |
	result := CSSDelimiterNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForanyWithWS__selectorPart__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForanyWithoutColon11: nodes [
	| result |
	result := CSSOperatorNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForanyWithoutColon12: nodes [
	| result |
	result := CSSFunctionNode new.
	result name: (nodes at: 1).
	result addNodes: (nodes at: 3) to: result items.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForanyWithoutColon13: nodes [
	| result |
	result := CSSParenthesizedExpressionNode new.
	result leftParen: (nodes at: 1).
	result addNodes: (nodes at: 3) to: result items.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForanyWithoutColon14: nodes [
	| result |
	result := CSSBracketExpressionNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: (nodes at: 3) to: result items.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForanyWithoutColon1: nodes [
	| result |
	result := CSSIdentifierNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForanyWithoutColon2: nodes [
	| result |
	result := CSSNumberNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForanyWithoutColon3: nodes [
	| result |
	result := CSSPercentageNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForanyWithoutColon4: nodes [
	| result |
	result := CSSDimensionNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForanyWithoutColon5: nodes [
	| result |
	result := CSSStringNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForanyWithoutColon7: nodes [
	| result |
	result := CSSURINode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForanyWithoutColon8: nodes [
	| result |
	result := CSSHashNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForanyWithoutColon9: nodes [
	| result |
	result := CSSUnicodeRangeNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForatrule1: nodes [
	| result |
	result := CSSAtRuleNode new.
	result atKeyword: (nodes at: 1).
	result addNodes: (nodes at: 3) to: result parts.
	result block: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForatrule2: nodes [
	| result |
	result := CSSAtRuleNode new.
	result atKeyword: (nodes at: 1).
	result addNodes: (nodes at: 3) to: result parts.
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForblock1: nodes [
	| result |
	result := CSSBlockNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 3) at: 1) to: result items.
	result addTokens: ((nodes at: 3) at: 2) to: result semicolons.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionFordeclaration1: nodes [
	| result |
	result := CSSDeclarationNode new.
	result name: ((nodes at: 1) at: 1).
	result star: ((nodes at: 1) at: 2).
	result colon: (nodes at: 3).
	result addNodes: (nodes at: 5) to: result values.
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionFordeclaration_list1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionFordeclaration_list2: nodes [
	| result |
	result := nodes at: 4.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionFordeclaration_list3: nodes [
	| result |
	result := nodes at: 2.
	self addFirst: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionFordeclaration_list5: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForproperty1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForproperty2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (nodes at: 1).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForruleset1: nodes [
	| result |
	result := CSSRulesetNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 3) at: 1) to: result items.
	result addTokens: ((nodes at: 3) at: 2) to: result semicolons.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForruleset2: nodes [
	| result |
	result := CSSRulesetNode new.
	result addNodes: (nodes at: 1) to: result selectorParts.
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 4) at: 1) to: result items.
	result addTokens: ((nodes at: 4) at: 2) to: result semicolons.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForselector1: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForstylesheet1: nodes [
	| result |
	result := CSSStylesheetNode new.
	result addNodes: (nodes at: 2) to: result items.
	^ result
]

{ #category : 'accessing' }
CSSParser >> tryAllTokens [
	^ true
]

{ #category : 'accessing' }
CSSParser >> useAllTokenIds [
	^ false
]
