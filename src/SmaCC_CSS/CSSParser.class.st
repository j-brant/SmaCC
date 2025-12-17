Class {
	#name : 'CSSParser',
	#superclass : 'SmaCCGLRParser',
	#category : 'SmaCC_CSS',
	#package : 'SmaCC_CSS'
}

{ #category : 'generated-accessing' }
CSSParser class >> cacheId [
	^'2024-07-03T06:19:36.441868-05:00'
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
	| "":"" 'value' {{Delimiter}} 
	| <FUNCTION> 'name' WS (anyWithWS 'item' | unused 'item')* "")"" 'rightParen' {{Function}}
	| ""("" 'leftParen' WS (anyWithWS 'item' | unused 'item')* "")"" 'rightParen' {{ParenthesizedExpression}}
	| ""["" 'leftBracket' WS (anyWithWS 'item' | unused 'item')* ""]"" 'rightBracket' {{BracketExpression}}
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
	|
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
	#(54 0 #nil 5529601 true) 
	#(30 0 #reduceActionFor__CDO__item____CDC__item____statement__item____1: 3507201 false) 
	#(54 2 #nil 5529602 true) 
	#(28 2 #reduceActionForstylesheet1: 3320833 false) 
	#(37 1 #reduceActionForany12: 3841036 false) 
	#(53 1 #reduceActionForATKEYWORD1: 5486593 false) 
	#(37 1 #reduceActionForany11: 3841035 false) 
	#(37 1 #reduceActionForany4: 3841028 false) 
	#(37 1 #reduceActionForany8: 3841032 false) 
	#(37 1 #reduceActionForany1: 3841025 false) 
	#(37 1 #reduceActionForany11: 3841034 false) 
	#(37 1 #reduceActionForany2: 3841026 false) 
	#(37 1 #reduceActionForany3: 3841027 false) 
	#(37 1 #reduceActionForany5: 3841029 false) 
	#(37 1 #reduceActionForany9: 3841033 false) 
	#(37 1 #reduceActionForany7: 3841031 false) 
	#(37 1 #reduceActionForany12: 3841030 false) 
	#(30 2 #reduceActionFor__CDO__item____CDC__item____statement__item____2: 3507202 false) 
	#(29 1 #liftFirstValue: 3507201 false) 
	#(29 1 #liftFirstValue: 3507202 false) 
	#(29 1 #liftFirstValue: 3507203 false) 
	#(33 1 #liftFirstValue: 3667970 false) 
	#(46 1 #reduceActionForanyWithWS__selectorPart__1: 5076993 false) 
	#(33 1 #liftFirstValue: 3667969 false) 
	#(45 1 #reduceActionForselector1: 4978689 false) 
	#(39 0 #reduceActionFor__CDO__item____CDC__item____statement__item____1: 4279297 false) 
	#(47 0 #reduceActionFordeclaration_list4: 5106692 false) 
	#(32 2 #reduceActionForCDC1: 3616769 false) 
	#(31 2 #reduceActionForCDC1: 3565569 false) 
	#(36 2 #liftFirstValue: 3811329 true) 
	#(46 2 #reduceActionFor__CDO__item____CDC__item____statement__item____2: 5076994 false) 
	#(35 0 #reduceActionFor__CDO__item____CDC__item____statement__item____1: 3738625 false) 
	#(49 1 #reduceActionForproperty1: 5323777 false) 
	#(47 1 #reduceActionFordeclaration_list1: 5106689 false) 
	#(37 4 #reduceActionForany14: 3841038 false) 
	#(40 1 #liftFirstValue: 4558852 false) 
	#(40 1 #liftFirstValue: 4558853 false) 
	#(38 1 #liftFirstValue: 4279297 false) 
	#(39 2 #reduceActionFor__CDO__item____CDC__item____statement__item____2: 4279298 false) 
	#(38 1 #liftFirstValue: 4279298 false) 
	#(37 4 #reduceActionForany15: 3841039 false) 
	#(47 2 #reduceActionFordeclaration_list3: 5106691 false) 
	#(37 4 #reduceActionForany13: 3841037 false) 
	#(35 2 #reduceActionFor__CDO__item____CDC__item____statement__item____2: 3738626 false) 
	#(40 2 #reduceActionForany12: 4558851 false) 
	#(43 0 #reduceActionFordeclaration_list4: 4687873 false) 
	#(40 2 #liftFirstValue: 4558849 true) 
	#(40 2 #liftFirstValue: 4558850 true) 
	#(49 3 #reduceActionForproperty2: 5323778 false) 
	#(44 5 #reduceActionForruleset1: 4798465 false) 
	#(34 5 #reduceActionForatrule2: 3702786 false) 
	#(34 5 #reduceActionForatrule1: 3702785 false) 
	#(47 4 #reduceActionFordeclaration_list2: 5106690 false) 
	#(44 6 #reduceActionForruleset2: 4798466 false) 
	#(41 4 #reduceActionForblock1: 4659201 false) 
	#(42 1 #reduceActionForproperty1: 4687873 false) 
	#(43 2 #reduceActionFor__anyWithWS__item____block__item__WS___ATKEYWORD__item__WS________semicolon__WS___2: 4687874 false) 
	#(51 1 #liftFirstValue: 5416961 false) 
	#(48 5 #reduceActionFordeclaration1: 5229569 false) 
	#(52 1 #reduceActionForanyWithWS__selectorPart__1: 5416961 false) 
	#(50 1 #reduceActionForselector1: 5407745 false) 
	#(42 2 #reduceActionFor__anyWithWS__item____block__item__WS___ATKEYWORD__item__WS________semicolon__WS__4: 4687876 false) 
	#(42 2 #reduceActionForproperty1: 4687874 false) 
	#(42 2 #reduceActionForproperty1: 4687875 false) 
	#(51 2 #liftFirstValue: 5416962 false) 
	#(52 2 #reduceActionFor__CDO__item____CDC__item____statement__item____2: 5416962 false) 
	#(51 2 #liftFirstValue: 5416963 false)
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
	^ #('"("' '")"' '"*"' '":"' '";"' '"["' '"]"' '"{"' '"}"' '<ATKEYWORD>' '<CDC>' '<CDO>' '<DASHMATCH>' '<DIMENSION>' '<FUNCTION>' '<HASH>' '<IDENT>' '<INCLUDES>' '<NUMBER>' '<PERCENTAGE>' '<STRING>' '<UNICODERANGE>' '<URI>' '<ws>' '<comment>' '<DELIM>' 'B e g i n' 'stylesheet' '( CDO ''item'' | CDC ''item'' | statement ''item'' )' '( CDO ''item'' | CDC ''item'' | statement ''item'' )*' 'CDO' 'CDC' 'statement' 'atrule' 'anyWithWS ''part''*' 'anyWithWS' 'any' '(anyWithWS ''item'' | unused ''item'')' '(anyWithWS ''item'' | unused ''item'')*' 'unused' 'block' '( anyWithWS ''item'' | block ''item'' WS | ATKEYWORD ''item'' WS | ";" ''semicolon'' WS )' '( anyWithWS ''item'' | block ''item'' WS | ATKEYWORD ''item'' WS | ";" ''semicolon'' WS )*' 'ruleset' 'selector' 'anyWithWS ''selectorPart''+' 'declaration_list' 'declaration' 'property' 'value' '( anyWithWS ''value'' | block ''value'' WS | ATKEYWORD ''value'' WS )' '( anyWithWS ''value'' | block ''value'' WS | ATKEYWORD ''value'' WS )+' 'ATKEYWORD' 'WS' 'E O F' 'error')
]

{ #category : 'generated' }
CSSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CSSStylesheetNode #CSSStylesheetNode #CSSProgramNode #OrderedCollection #CSSCommentDelimiterNode #CSSCommentDelimiterNode #CSSProgramNode #CSSAtRuleNode #OrderedCollection #CSSProgramNode #CSSProgramNode #CSSProgramNode #OrderedCollection #CSSProgramNode #CSSBlockNode #OrderedCollection #OrderedCollection #CSSRulesetNode #OrderedCollection #OrderedCollection #OrderedCollection #CSSDeclarationNode #OrderedCollection #OrderedCollection #CSSProgramNode #OrderedCollection #CSSAtNode nil #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
CSSParser class >> transitionTable [
^#(
#[1 0 6 0 1 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 9 0 28 0 13 0 54 0 6 0 55] 
#[0 0 0 0 55] 
#[1 0 10 0 1 0 10 0 4 0 10 0 6 0 10 0 8 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 13 0 10 0 14 0 10 0 15 0 10 0 16 0 10 0 17 0 10 0 18 0 10 0 19 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 17 0 24 0 10 0 26 0 21 0 30 0 10 0 55] 
#[0 0 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26 0 55] 
#[1 0 25 0 1 0 29 0 4 0 33 0 6 0 37 0 8 0 41 0 10 0 45 0 11 0 49 0 12 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 0 101 0 29 0 101 0 31 0 101 0 32 0 101 0 33 0 101 0 34 0 121 0 36 0 125 0 37 0 101 0 44 0 133 0 45 0 137 0 46 0 141 0 53 0 18 0 55] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 145 0 54] 
#[0 0 22 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 149 0 54] 
#[1 0 6 0 3 0 6 0 9 0 6 0 10 0 6 0 17 0 6 0 24 0 153 0 54] 
#[0 0 26 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 157 0 54 0 6 0 55] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 161 0 54 0 6 0 55] 
#[0 0 30 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 34 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 165 0 54] 
#[0 0 38 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 42 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 46 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 50 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 54 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 58 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 62 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 66 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 70 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 0 74 0 1 0 4 0 6 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26 0 55] 
#[0 0 78 0 1 0 4 0 6 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26 0 55] 
#[0 0 82 0 1 0 4 0 6 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26 0 55] 
#[0 0 86 0 1 0 4 0 6 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26 0 55] 
#[0 0 90 0 1 0 4 0 6 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26 0 55] 
#[0 0 94 0 1 0 4 0 6 0 8 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 169 0 54] 
#[0 0 98 0 1 0 4 0 6 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26 0 55] 
#[0 0 173 0 8] 
#[1 0 25 0 1 0 29 0 4 0 33 0 6 0 102 0 8 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 0 177 0 36 0 125 0 37] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 0 181 0 54] 
#[1 0 106 0 1 0 106 0 2 0 106 0 4 0 106 0 5 0 106 0 6 0 106 0 8 0 106 0 10 0 106 0 11 0 106 0 12 0 106 0 13 0 106 0 14 0 106 0 15 0 106 0 16 0 106 0 17 0 106 0 18 0 106 0 19 0 106 0 20 0 106 0 21 0 106 0 22 0 106 0 23 0 17 0 24 0 106 0 26 0 185 0 39] 
#[1 0 106 0 1 0 106 0 4 0 106 0 5 0 106 0 6 0 106 0 7 0 106 0 8 0 106 0 10 0 106 0 11 0 106 0 12 0 106 0 13 0 106 0 14 0 106 0 15 0 106 0 16 0 106 0 17 0 106 0 18 0 106 0 19 0 106 0 20 0 106 0 21 0 106 0 22 0 106 0 23 0 17 0 24 0 106 0 26 0 189 0 39] 
#[1 0 193 0 3 0 110 0 9 0 41 0 10 0 197 0 17 0 17 0 24 0 201 0 34 0 205 0 47 0 209 0 48 0 213 0 49 0 141 0 53] 
#[1 0 114 0 1 0 114 0 2 0 114 0 4 0 114 0 5 0 114 0 6 0 114 0 7 0 114 0 8 0 114 0 10 0 114 0 11 0 114 0 12 0 114 0 13 0 114 0 14 0 114 0 15 0 114 0 16 0 114 0 17 0 114 0 18 0 114 0 19 0 114 0 20 0 114 0 21 0 114 0 22 0 114 0 23 0 17 0 24 0 114 0 26 0 114 0 55] 
#[1 0 118 0 1 0 118 0 2 0 118 0 4 0 118 0 5 0 118 0 6 0 118 0 7 0 118 0 8 0 118 0 10 0 118 0 11 0 118 0 12 0 118 0 13 0 118 0 14 0 118 0 15 0 118 0 16 0 118 0 17 0 118 0 18 0 118 0 19 0 118 0 20 0 118 0 21 0 118 0 22 0 118 0 23 0 17 0 24 0 118 0 26 0 118 0 55] 
#[1 0 106 0 1 0 106 0 2 0 106 0 4 0 106 0 5 0 106 0 6 0 106 0 8 0 106 0 10 0 106 0 11 0 106 0 12 0 106 0 13 0 106 0 14 0 106 0 15 0 106 0 16 0 106 0 17 0 106 0 18 0 106 0 19 0 106 0 20 0 106 0 21 0 106 0 22 0 106 0 23 0 17 0 24 0 106 0 26 0 217 0 39] 
#[1 0 122 0 1 0 122 0 2 0 122 0 4 0 122 0 5 0 122 0 6 0 122 0 7 0 122 0 8 0 122 0 9 0 122 0 10 0 122 0 11 0 122 0 12 0 122 0 13 0 122 0 14 0 122 0 15 0 122 0 16 0 122 0 17 0 122 0 18 0 122 0 19 0 122 0 20 0 122 0 21 0 122 0 22 0 122 0 23 0 17 0 24 0 122 0 26] 
#[1 0 6 0 3 0 6 0 9 0 6 0 10 0 6 0 17 0 6 0 24 0 221 0 54] 
#[0 0 126 0 1 0 4 0 6 0 8 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 130 0 1 0 130 0 4 0 130 0 5 0 130 0 6 0 130 0 8 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 17 0 24 0 130 0 26 0 225 0 35] 
#[1 0 25 0 1 0 229 0 2 0 29 0 4 0 233 0 5 0 33 0 6 0 237 0 8 0 41 0 10 0 45 0 11 0 49 0 12 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 0 253 0 31 0 253 0 32 0 253 0 36 0 125 0 37 0 253 0 38 0 253 0 40 1 5 0 41 1 9 0 53] 
#[1 0 25 0 1 0 29 0 4 0 233 0 5 0 33 0 6 1 13 0 7 0 237 0 8 0 41 0 10 0 45 0 11 0 49 0 12 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 0 253 0 31 0 253 0 32 0 253 0 36 0 125 0 37 0 253 0 38 0 253 0 40 1 5 0 41 1 9 0 53] 
#[1 0 6 0 17 0 6 0 24 1 17 0 54] 
#[0 0 134 0 4 0 24] 
#[1 0 193 0 3 0 110 0 9 0 41 0 10 0 197 0 17 0 201 0 34 1 21 0 47 0 209 0 48 0 213 0 49 0 141 0 53] 
#[0 1 25 0 9] 
#[1 1 29 0 5 0 138 0 9] 
#[1 0 6 0 4 0 6 0 24 1 33 0 54] 
#[1 0 25 0 1 1 37 0 2 0 29 0 4 0 233 0 5 0 33 0 6 0 237 0 8 0 41 0 10 0 45 0 11 0 49 0 12 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 0 253 0 31 0 253 0 32 0 253 0 36 0 125 0 37 0 253 0 38 0 253 0 40 1 5 0 41 1 9 0 53] 
#[1 0 193 0 3 0 110 0 9 0 41 0 10 0 197 0 17 0 17 0 24 0 201 0 34 1 41 0 47 0 209 0 48 0 213 0 49 0 141 0 53] 
#[1 0 25 0 1 0 29 0 4 1 45 0 5 0 33 0 6 0 237 0 8 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 1 49 0 36 0 125 0 37 1 53 0 41] 
#[0 0 142 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 57 0 54] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 61 0 54] 
#[0 0 146 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[0 0 150 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[0 0 154 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[0 0 158 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[0 0 162 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 65 0 54] 
#[1 0 6 0 1 0 6 0 2 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 69 0 54] 
#[0 0 166 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[1 1 73 0 17 0 17 0 24] 
#[0 0 170 0 9] 
#[1 0 6 0 1 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 77 0 54 0 6 0 55] 
#[1 0 6 0 3 0 6 0 9 0 6 0 10 0 6 0 17 0 6 0 24 1 81 0 54] 
#[1 1 85 0 4 0 17 0 24] 
#[0 0 174 0 1 0 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26] 
#[0 1 89 0 9] 
#[1 0 6 0 1 0 6 0 3 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 93 0 54 0 6 0 55] 
#[0 0 178 0 1 0 4 0 5 0 6 0 8 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 3 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 97 0 54 0 6 0 55] 
#[1 0 182 0 1 0 182 0 2 0 182 0 4 0 182 0 5 0 182 0 6 0 182 0 7 0 182 0 8 0 182 0 10 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 15 0 182 0 16 0 182 0 17 0 182 0 18 0 182 0 19 0 182 0 20 0 182 0 21 0 182 0 22 0 182 0 23 0 17 0 24 0 182 0 26] 
#[1 0 186 0 1 0 186 0 4 0 186 0 5 0 186 0 6 0 186 0 8 0 186 0 9 0 186 0 10 0 186 0 13 0 186 0 14 0 186 0 15 0 186 0 16 0 186 0 17 0 186 0 18 0 186 0 19 0 186 0 20 0 186 0 21 0 186 0 22 0 186 0 23 0 17 0 24 0 186 0 26 1 101 0 43] 
#[1 0 190 0 1 0 190 0 2 0 190 0 4 0 190 0 5 0 190 0 6 0 190 0 7 0 190 0 8 0 190 0 10 0 190 0 11 0 190 0 12 0 190 0 13 0 190 0 14 0 190 0 15 0 190 0 16 0 190 0 17 0 190 0 18 0 190 0 19 0 190 0 20 0 190 0 21 0 190 0 22 0 190 0 23 0 17 0 24 0 190 0 26] 
#[1 0 194 0 1 0 194 0 2 0 194 0 4 0 194 0 5 0 194 0 6 0 194 0 7 0 194 0 8 0 194 0 10 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 15 0 194 0 16 0 194 0 17 0 194 0 18 0 194 0 19 0 194 0 20 0 194 0 21 0 194 0 22 0 194 0 23 0 17 0 24 0 194 0 26] 
#[0 0 198 0 4 0 24] 
#[1 0 202 0 1 0 202 0 4 0 202 0 6 0 202 0 8 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 15 0 202 0 16 0 202 0 17 0 202 0 18 0 202 0 19 0 202 0 20 0 202 0 21 0 202 0 22 0 202 0 23 0 17 0 24 0 202 0 26 0 202 0 55] 
#[1 0 193 0 3 0 110 0 9 0 41 0 10 0 197 0 17 0 17 0 24 0 201 0 34 1 105 0 47 0 209 0 48 0 213 0 49 0 141 0 53] 
#[1 0 6 0 1 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 109 0 54] 
#[1 0 6 0 1 0 6 0 4 0 6 0 6 0 6 0 8 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 113 0 54 0 6 0 55] 
#[1 0 206 0 1 0 206 0 3 0 206 0 4 0 206 0 6 0 206 0 8 0 206 0 9 0 206 0 10 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 15 0 206 0 16 0 206 0 17 0 206 0 18 0 206 0 19 0 206 0 20 0 206 0 21 0 206 0 22 0 206 0 23 0 17 0 24 0 206 0 26 0 206 0 55] 
#[1 0 210 0 1 0 210 0 3 0 210 0 4 0 210 0 6 0 210 0 8 0 210 0 9 0 210 0 10 0 210 0 11 0 210 0 12 0 210 0 13 0 210 0 14 0 210 0 15 0 210 0 16 0 210 0 17 0 210 0 18 0 210 0 19 0 210 0 20 0 210 0 21 0 210 0 22 0 210 0 23 0 17 0 24 0 210 0 26 0 210 0 55] 
#[1 0 25 0 1 0 29 0 4 1 117 0 5 0 33 0 6 0 237 0 8 1 121 0 9 0 41 0 10 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 1 125 0 36 0 125 0 37 1 129 0 41 1 133 0 42 1 137 0 53] 
#[0 0 214 0 9] 
#[1 0 25 0 1 0 29 0 4 0 33 0 6 0 237 0 8 0 41 0 10 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 17 0 24 0 97 0 26 1 153 0 36 0 125 0 37 1 145 0 41 1 149 0 50 1 153 0 51 1 157 0 52 1 161 0 53] 
#[1 0 218 0 1 0 218 0 4 0 218 0 6 0 218 0 8 0 218 0 10 0 218 0 11 0 218 0 12 0 218 0 13 0 218 0 14 0 218 0 15 0 218 0 16 0 218 0 17 0 218 0 18 0 218 0 19 0 218 0 20 0 218 0 21 0 218 0 22 0 218 0 23 0 17 0 24 0 218 0 26 0 218 0 55] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 165 0 54] 
#[0 0 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26 0 55] 
#[0 0 226 0 1 0 4 0 5 0 6 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 169 0 54] 
#[0 0 230 0 1 0 4 0 5 0 6 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 173 0 54] 
#[0 0 234 0 1 0 4 0 5 0 6 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 177 0 54] 
#[0 0 238 0 5 0 9] 
#[0 0 242 0 1 0 4 0 5 0 6 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 0 25 0 1 0 29 0 4 0 246 0 5 0 33 0 6 0 237 0 8 0 246 0 9 0 41 0 10 0 53 0 13 0 57 0 14 0 61 0 15 0 65 0 16 0 69 0 17 0 73 0 18 0 77 0 19 0 81 0 20 0 85 0 21 0 89 0 22 0 93 0 23 0 97 0 26 1 181 0 36 0 125 0 37 1 145 0 41 1 181 0 51 1 161 0 53] 
#[1 0 6 0 1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 26 1 185 0 54] 
#[1 0 250 0 1 0 250 0 4 0 250 0 5 0 250 0 6 0 250 0 8 0 250 0 9 0 250 0 10 0 250 0 13 0 250 0 14 0 250 0 15 0 250 0 16 0 250 0 17 0 250 0 18 0 250 0 19 0 250 0 20 0 250 0 21 0 250 0 22 0 250 0 23 0 17 0 24 0 250 0 26] 
#[1 0 254 0 1 0 254 0 4 0 254 0 5 0 254 0 6 0 254 0 8 0 254 0 9 0 254 0 10 0 254 0 13 0 254 0 14 0 254 0 15 0 254 0 16 0 254 0 17 0 254 0 18 0 254 0 19 0 254 0 20 0 254 0 21 0 254 0 22 0 254 0 23 0 17 0 24 0 254 0 26] 
#[1 1 2 0 1 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 13 1 2 0 14 1 2 0 15 1 2 0 16 1 2 0 17 1 2 0 18 1 2 0 19 1 2 0 20 1 2 0 21 1 2 0 22 1 2 0 23 0 17 0 24 1 2 0 26] 
#[1 1 6 0 1 1 6 0 4 1 6 0 5 1 6 0 6 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 13 1 6 0 14 1 6 0 15 1 6 0 16 1 6 0 17 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 21 1 6 0 22 1 6 0 23 0 17 0 24 1 6 0 26] 
#[0 1 10 0 1 0 4 0 5 0 6 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 26] 
#[1 1 14 0 1 1 14 0 4 1 14 0 5 1 14 0 6 1 14 0 8 1 14 0 9 1 14 0 10 1 14 0 13 1 14 0 14 1 14 0 15 1 14 0 16 1 14 0 17 1 14 0 18 1 14 0 19 1 14 0 20 1 14 0 21 1 14 0 22 1 14 0 23 0 17 0 24 1 14 0 26]
	).
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany11: nodes [
	| result |
	result := CSSOperatorNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany12: nodes [
	| result |
	result := CSSDelimiterNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany13: nodes [
	| result |
	result := CSSFunctionNode new.
	result name: (nodes at: 1).
	result addNodes: (nodes at: 3) to: result items.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany14: nodes [
	| result |
	result := CSSParenthesizedExpressionNode new.
	result leftParen: (nodes at: 1).
	result addNodes: (nodes at: 3) to: result items.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany15: nodes [
	| result |
	result := CSSBracketExpressionNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: (nodes at: 3) to: result items.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany1: nodes [
	| result |
	result := CSSIdentifierNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany2: nodes [
	| result |
	result := CSSNumberNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany3: nodes [
	| result |
	result := CSSPercentageNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany4: nodes [
	| result |
	result := CSSDimensionNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany5: nodes [
	| result |
	result := CSSStringNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany7: nodes [
	| result |
	result := CSSURINode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany8: nodes [
	| result |
	result := CSSHashNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSSParser >> reduceActionForany9: nodes [
	| result |
	result := CSSUnicodeRangeNode new.
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
CSSParser >> reduceActionForATKEYWORD1: nodes [
	| result |
	result := CSSAtNode new.
	result name: (nodes at: 1).
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
CSSParser >> reduceActionForCDC1: nodes [
	| result |
	result := CSSCommentDelimiterNode new.
	result comment: (nodes at: 1).
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
CSSParser >> reduceActionFordeclaration_list4: nodes [
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

{ #category : 'accessing' }
CSSParser >> tryAllTokens [
	^ true
]

{ #category : 'accessing' }
CSSParser >> useAllTokenIds [
	^ false
]
