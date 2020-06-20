Class {
	#name : #SmaCCDefinitionParser,
	#superclass : #SmaCCGLRParser,
	#instVars : [
		'acceptSyntaxErrors'
	],
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #'generated-accessing' }
SmaCCDefinitionParser class >> cacheId [
	^'2020-06-20T11:41:21.16777-05:00'
]

{ #category : #generated }
SmaCCDefinitionParser class >> definitionComment [
"%scopes default scanner directives parser;

directives <scopes>
	: scopes
	| states 
	;
directives <excludes> 
	: excludes 
	;
directives <root> 
	: root 
	;
directives <hierarchy> 
	: hierarchy 
	;
directives <attributes>
	: attributes
	;
directives <prefix> 
	: prefix 
	;
directives <suffix> 
	: suffix 
	;
directives <left> 
	: left 
	;
directives <right> 
	: right 
	;
directives <nonassoc> 
	: nonassoc 
	;
directives <id> 
	: id 
	;
directives <start> 
	: start 
	;
directives <glr>
	: glr
	;
directives <ignorecase>
	: ignorecase
	;
directives <ignorevariables>
	: ignore_variables
	;
directives <ignorevariablewarning>
	: ignore_variable_warning
	;
directives <annotate_tokens>
	: annotate_tokens
	;
directives <lr1>
	: lr1
	;
directives <unicode>
	: unicode
	;
directives <byte>
	: byte
	;
<name> 
	: (<isLetter> | _) (<isLetter> | _ | <isDigit>)*
	;
<directive> 
	: \%
	;
<whitespace>
	: \s+ 
	;
<tokenname>
	: \< <name> \>
	;
default directives parser <symbolname>
	: <name>
	;
directives parser <keyword>
	: (\"" [^\""]* \"") + 
	;
<comment>
	: (\# [^\r\n]*) 
	| (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
	;
parser <code>
	: \{ 
	;
parser <immediateCode>
	: \[
	;
parser <variablename>
	: \' <name> \' 
	;
<production>
	: \: (\: \=)? 
	;
<directive>
	: % 
	;
<semicolon>
	: \; 
	;
scanner <backslashcharacter>
	: \\ [^cx] 
	| \\ c [A-Z] 
	| \\ x [0-9A-Fa-f]{1,4}
	;
scanner <characterblock>
	: \[ ([^\]\\] | <backslashcharacter> )+ \] 
	;
scanner <repeat>
	: \{ [0-9]* \, [0-9]* \}
	;
scanner <character>
	: [^\ \t\v\\\r\n\{\(\[\.]
	; 
scanner <anycharacter>
	: \.
	;
parser <error>
	: error
	;
parser <classLeft> 
	: \{\{ 
	;
parser <classRight> 
	: \}\} 
	;
default parser <patternToken>
	: ` [^`]* `
	;

%glr;
%id <code> <immediateCode> <keyword> <symbolname> <tokenname> <variablename> <semicolon>
	<directive> <production> <classLeft> <classRight>;
%left	""|"";
%left ""("" <character> <backslashcharacter> <characterblock> <anycharacter> <tokenname> <symbolname> <directive>;
%left ""*"" ""+"" ""?"" <repeat> ;

%start ProductionRule RegexRule DirectiveLine File;

%hierarchy Directive (
		ScopeDirective
		NodeNameDirective 
		SuperclassDirective
		AttributeDirective
		AssociativeDirective
		IdDirective
		StartDirective
		FlagDirective
		IgnoreVariableDirective
		IgnoreVariableWarningDirective
	);
%hierarchy Symbol (
		KeywordSymbol
		TokenSymbol
		ProductionSymbol
		ErrorSymbol
	);
%hierarchy ProductionExpression (
		CodeProductionExpression
		ClassProductionExpression
	);
%hierarchy Regex (
		CharacterRegex
		CharacterBlockRegex
		AlternationRegex
		ConcatenationRegex
		TokenRegex
		RepeatRegex
	);
%prefix SmaCC;
%suffix Node;
%root Definition;

File
	: Rules {{GrammarDefinition}}
	;
Rules
	: Rule 'rule'
	| Rules Rule 'rule'
	;
Rule 
	: ProductionRule 
	| DirectiveLine
	| RegexRule 
	| Error
	;
Error
	: error 'smaccError' <semicolon> 'semicolon' {{DefinitionError}}
	| error 'smaccError' {{DefinitionError}}
	;
# Directives
DirectiveLine 
	: StartDirective <directive> 'directiveStartToken' Directive EndDirective <semicolon> 'semicolon' {{Directive}}
	;
Directive 
	: ExcludeScopesLine 
	| ScopesLine
	| RootClassLine
	| SuperclassLine
	| AttributesLine
	| PrefixLine
	| SuffixLine
	| LeftLine 
	| RightLine 
	| NonAssociativeLine
	| IdMethodLine
	| StartLine 
	| GLR
	| IgnoreCase
	| IgnoredVariables
	| IgnoreVariableWarning
	| AnnotateTokens
	| LR1
	| Unicode
	| Byte
	;
StartDirective 
	: {self scope: #directives. nil}
	;
EndDirective 
	: {self scope: #default. nil}
	;
ScopesLine 
	: <scopes> 'typeToken' Scopes {{ScopeDirective}}
	;
Scopes 
	: 
	| Scopes Symbol 'name'
	;
ExcludeScopesLine 
	: <excludes> 'typeToken' Scopes {{ScopeDirective}}
	;
RootClassLine 
	: <root> 'typeToken' <symbolname> 'name' {{NodeNameDirective}}
	;
SuperclassLine
	: <hierarchy> 'hierarchyToken' <symbolname> 'superclass' ""("" 'leftParen' ClassList "")"" 'rightParen' {{SuperclassDirective}}
	;
AttributesLine
	: <attributes> 'attributesToken' <symbolname> 'classname' ""("" 'leftParen' IvarList "")"" 'rightParen' {{AttributeDirective}}
	;
IvarList	
	:
	| IvarList <symbolname> 'name'
	;
ClassList 
	:
	| ClassList <symbolname> 'name'
	;
PrefixLine
	: <prefix> 'typeToken' <symbolname> 'name' {{NodeNameDirective}}
	;
SuffixLine
	: <suffix> 'typeToken' <symbolname> 'name' {{NodeNameDirective}}
	;
LeftLine
	: <left> 'typeToken' TokenList {{AssociativeDirective}}
	;
RightLine
	: <right> 'typeToken' TokenList {{AssociativeDirective}}
	;
NonAssociativeLine
	: <nonassoc> 'typeToken' TokenList {{AssociativeDirective}}
	;
TokenList
	: Term 'symbol'
	| TokenList Term 'symbol'
	;
IdMethodLine
	: <id> 'idToken' IdTokens {{IdDirective}}
	;
IdTokens
	: <tokenname> 'name'
	| IdTokens <tokenname> 'name'
	;
StartLine
	: <start> 'startToken' StartingTokens {{StartDirective}}
	;
StartingTokens
	: <symbolname> 'symbol'
	| StartingTokens <symbolname> 'symbol' 
	;
GLR
	: <glr> 'typeToken' {{FlagDirective}}
	;
IgnoredVariables
	: EndDirective <ignorevariables> 'ignoreVariablesToken' IgnoredVariableList {{IgnoreVariableDirective}}
	;
IgnoredVariableList
	: <symbolname> 'name'
	| IgnoredVariableList <symbolname> 'name'
	;
IgnoreVariableWarning
	: EndDirective <ignorevariablewarning> 'ignoreVariableWarningToken' TokenList {{IgnoreVariableWarningDirective}}
	;
IgnoreCase
	: <ignorecase> 'typeToken' {{FlagDirective}}
	;
AnnotateTokens
	: <annotate_tokens> 'typeToken' {{FlagDirective}}
	;
LR1
	: <lr1> 'typeToken' {{FlagDirective}}
	;
Unicode
	: <unicode> 'typeToken' {{FlagDirective}}
	;
Byte
	: <byte> 'typeToken' {{FlagDirective}}
	;
# Scanner
RegexRule 
	: StartRegex <tokenname> 'name' <production> 'colon' Regex 'regex' EndRegex <semicolon> 'semicolon' {{TokenRule}}
	| Symbol 'state' RegexRule {{TokenRule}}
	;
StartRegex
	: {self scope: #scanner. nil}
	;
EndRegex
	: {self scope: #default. nil}
	;
Symbol 
	: <symbolname> 
	;
Regex
	: ConcatenationRegex
	| ConcatenationRegex 'item'  (""|"" 'barToken' ConcatenationRegex 'item')+ {{AlternationRegex}}
	;
ConcatenationRegex
	: RegexTerm
	| RegexTerm 'item' RegexTerm 'item' + {{ConcatenationRegex}}
	;
RegexTerm
	: <character> 'char' {{CharacterRegex}}
	| <directive> 'char' {{CharacterRegex}}
	| <anycharacter> 'char' {{CharacterRegex}}
	| <backslashcharacter> 'char' {{CharacterRegex}}
	| ""("" 'leftParen' Regex "")"" 'rightParen' {{Regex}}
	| <characterblock> 'block' {{CharacterBlockRegex}}
	| <tokenname> 'name' {{TokenRegex}}
	| RegexTerm 'regex' ""*"" 'count' {{RepeatRegex}}	
	| RegexTerm 'regex' ""+"" 'count' {{RepeatRegex}}
	| RegexTerm 'regex' ""?"" 'count' {{RepeatRegex}}
	| RegexTerm 'regex' <repeat> 'count' {{RepeatRegex}}
	;
# Parser 
ProductionRule
	: <symbolname> 'name' StartProduction <production> 'colon' ParserRules EndProduction <semicolon> 'semicolon' {{ProductionRule}}
	;
StartProduction
	: {self scope: #parser. nil}
	;
EndProduction
	: {self scope: #default. nil}
	;
ParserRules
	: ParserRules ""|"" 'barToken' ParserRule 'expression'
	| ParserRule 'expression'
	;
ParserRule 
	: Terms {{ProductionExpression}}
	| Terms <code> 'code' {{CodeProductionExpression}}
	| Terms <immediateCode> 'code' {{CodeProductionExpression}}
	| Terms <classLeft> 'left' <symbolname> 'classname' <classRight> 'right' {{ClassProductionExpression}}
	| Terms <classLeft> 'left' <classRight> 'right' {{ClassProductionExpression}}
	;
Terms 
	:
	| Terms SpecialTerm 'term'
	;
SpecialTerm
	: NamedTerm
	| SpecialTerm 'term' ""?"" 'operator' {{PostfixTerm}}
	| SpecialTerm 'term' ""+"" 'operator' {{PostfixTerm}}
	| SpecialTerm 'term' ""*"" 'operator' {{PostfixTerm}}
	| ""("" 'leftParen' ParserRules "")"" 'rightParen' {{GroupTerm}}
	;
NamedTerm
	: Term
	| Term <variablename> 'variableNameToken' {{Symbol}}
	;
Term
	: <keyword> 'name' {{KeywordSymbol}}
	| <tokenname> 'name' {{TokenSymbol}}
	| <symbolname> 'name' {{ProductionSymbol}}
	| <error> 'name' {{ErrorSymbol}}
	;"
]

{ #category : #generated }
SmaCCDefinitionParser class >> reduceTable [
^#(
	#(84 0 #reduceActionForStartRegex1: 5857281 false ) 
	#(54 0 #reduceActionForStartDirective1: 3481601 false ) 
	#(86 1 #liftFirstValue: 5947393 false ) 
	#(94 0 #reduceActionForStartProduction1: 6909953 false ) 
	#(48 1 #reduceActionForFile1: 2731009 false ) 
	#(49 1 #reduceActionForRules1: 2770945 false ) 
	#(50 1 #liftFirstValue: 2817028 false ) 
	#(50 1 #liftFirstValue: 2817026 false ) 
	#(50 1 #liftFirstValue: 2817027 false ) 
	#(50 1 #liftFirstValue: 2817025 false ) 
	#(51 1 #reduceActionForError2: 2886658 false ) 
	#(49 2 #reduceActionForRules2: 2770946 false ) 
	#(55 0 #reduceActionForEndDirective1: 3535873 false ) 
	#(83 2 #reduceActionForRegexRule2: 5682178 false ) 
	#(51 2 #reduceActionForError1: 2886657 false ) 
	#(98 0 #reduceActionForTerms1: 7460865 false ) 
	#(57 0 #reduceActionForTerms1: 3651585 false ) 
	#(74 1 #reduceActionForGLR1: 4979713 false ) 
	#(78 1 #reduceActionForGLR1: 5388289 false ) 
	#(79 1 #reduceActionForGLR1: 5449729 false ) 
	#(80 1 #reduceActionForGLR1: 5520385 false ) 
	#(81 1 #reduceActionForGLR1: 5567489 false ) 
	#(82 1 #reduceActionForGLR1: 5622785 false ) 
	#(53 1 #liftFirstValue: 3153922 false ) 
	#(53 1 #liftFirstValue: 3153921 false ) 
	#(53 1 #liftFirstValue: 3153923 false ) 
	#(53 1 #liftFirstValue: 3153924 false ) 
	#(53 1 #liftFirstValue: 3153925 false ) 
	#(53 1 #liftFirstValue: 3153926 false ) 
	#(53 1 #liftFirstValue: 3153927 false ) 
	#(53 1 #liftFirstValue: 3153928 false ) 
	#(53 1 #liftFirstValue: 3153929 false ) 
	#(53 1 #liftFirstValue: 3153930 false ) 
	#(53 1 #liftFirstValue: 3153931 false ) 
	#(53 1 #liftFirstValue: 3153932 false ) 
	#(53 1 #liftFirstValue: 3153933 false ) 
	#(53 1 #liftFirstValue: 3153935 false ) 
	#(53 1 #liftFirstValue: 3153936 false ) 
	#(53 1 #liftFirstValue: 3153934 false ) 
	#(53 1 #liftFirstValue: 3153937 false ) 
	#(53 1 #liftFirstValue: 3153938 false ) 
	#(53 1 #liftFirstValue: 3153939 false ) 
	#(53 1 #liftFirstValue: 3153940 false ) 
	#(95 0 #reduceActionForEndDirective1: 6960129 false ) 
	#(96 1 #reduceActionForParserRules2: 7009282 false ) 
	#(97 1 #reduceActionForParserRule1: 7107585 false ) 
	#(56 2 #reduceActionForScopesLine1: 3585025 false ) 
	#(58 2 #reduceActionForScopesLine1: 3691521 false ) 
	#(59 2 #reduceActionForRootClassLine1: 3767297 false ) 
	#(64 2 #reduceActionForRootClassLine1: 4243457 false ) 
	#(65 2 #reduceActionForRootClassLine1: 4325377 false ) 
	#(101 1 #reduceActionForTerm2: 7834626 false ) 
	#(101 1 #reduceActionForTerm3: 7834627 false ) 
	#(101 1 #reduceActionForTerm1: 7834625 false ) 
	#(101 1 #reduceActionForTerm4: 7834628 false ) 
	#(66 2 #reduceActionForLeftLine1: 4407297 false ) 
	#(69 1 #reduceActionForRules1: 4635649 false ) 
	#(67 2 #reduceActionForLeftLine1: 4477953 false ) 
	#(68 2 #reduceActionForLeftLine1: 4550657 false ) 
	#(71 1 #reduceActionForRules1: 4754433 false ) 
	#(70 2 #reduceActionForIdMethodLine1: 4694017 false ) 
	#(73 1 #reduceActionForRules1: 4893697 false ) 
	#(72 2 #reduceActionForStartLine1: 4820993 false ) 
	#(92 1 #reduceActionForRegexTerm7: 6204423 false ) 
	#(92 1 #reduceActionForRegexTerm2: 6204418 false ) 
	#(92 1 #reduceActionForRegexTerm2: 6204420 false ) 
	#(92 1 #reduceActionForRegexTerm6: 6204422 false ) 
	#(92 1 #reduceActionForRegexTerm2: 6204417 false ) 
	#(92 1 #reduceActionForRegexTerm2: 6204419 false ) 
	#(85 0 #reduceActionForEndDirective1: 5903361 false ) 
	#(87 1 #liftFirstValue: 5976065 false ) 
	#(90 1 #liftFirstValue: 6105089 false ) 
	#(97 2 #reduceActionForParserRule2: 7107586 false ) 
	#(97 2 #reduceActionForParserRule2: 7107587 false ) 
	#(98 2 #reduceActionForRules2: 7460866 false ) 
	#(99 1 #liftFirstValue: 7502849 false ) 
	#(100 1 #liftFirstValue: 7757825 false ) 
	#(57 2 #reduceActionForRules2: 3651586 false ) 
	#(63 0 #reduceActionForTerms1: 4192257 false ) 
	#(62 0 #reduceActionForTerms1: 4143105 false ) 
	#(69 2 #reduceActionForRules2: 4635650 false ) 
	#(71 2 #reduceActionForRules2: 4754434 false ) 
	#(73 2 #reduceActionForRules2: 4893698 false ) 
	#(52 5 #reduceActionForDirectiveLine1: 3019777 false ) 
	#(76 1 #reduceActionForRules1: 5154817 false ) 
	#(75 3 #reduceActionForIgnoredVariables1: 5026817 false ) 
	#(77 3 #reduceActionForIgnoreVariableWarning1: 5245953 false ) 
	#(89 1 #reduceActionFor______barToken__ConcatenationRegex__item___1: 6035457 false ) 
	#(87 2 #reduceActionForRegex2: 5976066 false ) 
	#(92 2 #reduceActionForRegexTerm8: 6204424 false ) 
	#(92 2 #reduceActionForRegexTerm8: 6204425 false ) 
	#(92 2 #reduceActionForRegexTerm8: 6204426 false ) 
	#(92 2 #reduceActionForRegexTerm8: 6204427 false ) 
	#(90 2 #reduceActionForConcatenationRegex2: 6105090 false ) 
	#(91 1 #reduceActionForRules1: 6158337 false ) 
	#(96 3 #reduceActionForParserRules1: 7009281 false ) 
	#(93 6 #reduceActionForProductionRule1: 6759425 false ) 
	#(97 3 #reduceActionForParserRule5: 7107589 false ) 
	#(99 2 #reduceActionForSpecialTerm4: 7502852 false ) 
	#(99 2 #reduceActionForSpecialTerm4: 7502851 false ) 
	#(99 2 #reduceActionForSpecialTerm4: 7502850 false ) 
	#(100 2 #reduceActionForNamedTerm2: 7757826 false ) 
	#(76 2 #reduceActionForRules2: 5154818 false ) 
	#(92 3 #reduceActionForRegexTerm5: 6204421 false ) 
	#(83 6 #reduceActionForRegexRule1: 5682177 false ) 
	#(88 2 #reduceActionFor______barToken__ConcatenationRegex__item__1: 6035457 false ) 
	#(89 2 #reduceActionFor______barToken__ConcatenationRegex__item___2: 6035458 false ) 
	#(91 2 #reduceActionForRules2: 6158338 false ) 
	#(99 3 #reduceActionForSpecialTerm5: 7502853 false ) 
	#(97 4 #reduceActionForParserRule4: 7107588 false ) 
	#(60 5 #reduceActionForSuperclassLine1: 3851265 false ) 
	#(63 2 #reduceActionForRules2: 4192258 false ) 
	#(61 5 #reduceActionForAttributesLine1: 3997697 false ) 
	#(62 2 #reduceActionForRules2: 4143106 false )
	).
]

{ #category : #'generated-accessing' }
SmaCCDefinitionParser class >> scannerClass [
	^SmaCCDefinitionScanner
]

{ #category : #generated }
SmaCCDefinitionParser class >> startingStateForDirectiveLine [
	^ 4
]

{ #category : #generated }
SmaCCDefinitionParser class >> startingStateForFile [
	^ 1
]

{ #category : #generated }
SmaCCDefinitionParser class >> startingStateForProductionRule [
	^ 2
]

{ #category : #generated }
SmaCCDefinitionParser class >> startingStateForRegexRule [
	^ 3
]

{ #category : #generated }
SmaCCDefinitionParser class >> symbolNames [
	^ #('"("' '")"' '"*"' '"+"' '"?"' '"|"' '<scopes>' '<excludes>' '<root>' '<hierarchy>' '<attributes>' '<prefix>' '<suffix>' '<left>' '<right>' '<nonassoc>' '<id>' '<start>' '<glr>' '<ignorecase>' '<ignorevariables>' '<ignorevariablewarning>' '<annotate_tokens>' '<lr1>' '<unicode>' '<byte>' '<whitespace>' '<tokenname>' '<symbolname>' '<keyword>' '<comment>' '<code>' '<immediateCode>' '<variablename>' '<production>' '<directive>' '<semicolon>' '<backslashcharacter>' '<characterblock>' '<repeat>' '<character>' '<anycharacter>' '<error>' '<classLeft>' '<classRight>' '<patternToken>' 'B e g i n' 'File' 'Rules' 'Rule' 'Error' 'DirectiveLine' 'Directive' 'StartDirective' 'EndDirective' 'ScopesLine' 'Scopes' 'ExcludeScopesLine' 'RootClassLine' 'SuperclassLine' 'AttributesLine' 'IvarList' 'ClassList' 'PrefixLine' 'SuffixLine' 'LeftLine' 'RightLine' 'NonAssociativeLine' 'TokenList' 'IdMethodLine' 'IdTokens' 'StartLine' 'StartingTokens' 'GLR' 'IgnoredVariables' 'IgnoredVariableList' 'IgnoreVariableWarning' 'IgnoreCase' 'AnnotateTokens' 'LR1' 'Unicode' 'Byte' 'RegexRule' 'StartRegex' 'EndRegex' 'Symbol' 'Regex' '("|" ''barToken'' ConcatenationRegex ''item'')' '("|" ''barToken'' ConcatenationRegex ''item'')+' 'ConcatenationRegex' 'RegexTerm ''item'' +' 'RegexTerm' 'ProductionRule' 'StartProduction' 'EndProduction' 'ParserRules' 'ParserRule' 'Terms' 'SpecialTerm' 'NamedTerm' 'Term' 'E O F' 'error')
]

{ #category : #generated }
SmaCCDefinitionParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCGrammarDefinitionNode #SmaCCGrammarDefinitionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCDefinitionErrorNode #SmaCCDirectiveNode #SmaCCDirectiveNode nil nil #SmaCCScopeDirectiveNode #OrderedCollection #SmaCCScopeDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCSuperclassDirectiveNode #SmaCCAttributeDirectiveNode #OrderedCollection #OrderedCollection #SmaCCNodeNameDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #OrderedCollection #SmaCCIdDirectiveNode #OrderedCollection #SmaCCStartDirectiveNode #OrderedCollection #SmaCCFlagDirectiveNode #SmaCCIgnoreVariableDirectiveNode #OrderedCollection #SmaCCIgnoreVariableWarningDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCTokenRuleNode nil nil #SmaCCToken #SmaCCRegexNode #OrderedCollection #OrderedCollection #SmaCCRegexNode #OrderedCollection #SmaCCRegexNode #SmaCCProductionRuleNode nil nil #OrderedCollection #SmaCCProductionExpressionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCSymbolNode #SmaCCSymbolNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
SmaCCDefinitionParser class >> transitionTable [
^#(
#[1 0 6 0 28 0 21 0 29 0 10 0 36 0 25 0 48 0 29 0 49 0 33 0 50 0 33 0 51 0 33 0 52 0 45 0 54 0 33 0 83 0 53 0 84 0 57 0 86 0 33 0 93 0 65 0 103] 
#[1 0 69 0 29 0 73 0 93] 
#[1 0 6 0 28 0 57 0 29 0 81 0 83 0 53 0 84 0 57 0 86] 
#[1 0 10 0 36 0 85 0 52 0 45 0 54] 
#[1 0 14 0 28 0 14 0 29 0 18 0 35 0 89 0 94] 
#[0 0 0 0 102] 
#[1 0 6 0 28 0 21 0 29 0 10 0 36 0 93 0 50 0 93 0 51 0 93 0 52 0 45 0 54 0 93 0 83 0 53 0 84 0 57 0 86 0 93 0 93 0 22 0 102 0 65 0 103] 
#[0 0 26 0 28 0 29 0 36 0 102 0 103] 
#[0 0 30 0 28 0 29 0 36 0 102 0 103] 
#[0 0 34 0 28 0 29 0 36 0 102 0 103] 
#[0 0 97 0 36] 
#[0 0 38 0 28 0 29 0 36 0 102 0 103] 
#[0 0 101 0 28] 
#[1 0 6 0 28 0 57 0 29 0 105 0 83 0 53 0 84 0 57 0 86] 
#[0 0 42 0 28 0 29 0 36 0 102 0 103] 
#[1 0 46 0 28 0 46 0 29 0 46 0 36 0 109 0 37 0 46 0 102 0 46 0 103] 
#[1 0 18 0 35 0 89 0 94] 
#[0 0 0 0 102] 
#[0 0 14 0 28 0 29 0 37] 
#[0 0 0 0 102] 
#[0 0 0 0 102] 
#[0 0 113 0 35] 
#[0 0 50 0 28 0 29 0 36 0 102 0 103] 
#[1 0 117 0 7 0 121 0 8 0 125 0 9 0 129 0 10 0 133 0 11 0 137 0 12 0 141 0 13 0 145 0 14 0 149 0 15 0 153 0 16 0 157 0 17 0 161 0 18 0 165 0 19 0 169 0 20 0 54 0 21 0 54 0 22 0 173 0 23 0 177 0 24 0 181 0 25 0 185 0 26 0 189 0 53 0 193 0 55 0 189 0 56 0 189 0 58 0 189 0 59 0 189 0 60 0 189 0 61 0 189 0 64 0 189 0 65 0 189 0 66 0 189 0 67 0 189 0 68 0 189 0 70 0 189 0 72 0 189 0 74 0 189 0 75 0 189 0 77 0 189 0 78 0 189 0 79 0 189 0 80 0 189 0 81 0 189 0 82] 
#[0 1 21 0 35] 
#[0 0 58 0 28 0 29 0 36 0 102 0 103] 
#[0 0 62 0 28 0 29 0 36 0 102 0 103] 
#[1 0 66 0 1 0 66 0 6 0 66 0 28 0 66 0 29 0 66 0 30 0 66 0 32 0 66 0 33 0 66 0 37 0 66 0 43 0 66 0 44 1 25 0 96 1 29 0 97 1 33 0 98] 
#[1 0 70 0 29 0 70 0 37 1 37 0 57] 
#[1 0 70 0 29 0 70 0 37 1 41 0 57] 
#[0 1 45 0 29] 
#[0 1 49 0 29] 
#[0 1 53 0 29] 
#[0 1 57 0 29] 
#[0 1 61 0 29] 
#[1 1 65 0 28 1 69 0 29 1 73 0 30 1 77 0 43 1 81 0 69 1 85 0 101] 
#[1 1 65 0 28 1 69 0 29 1 73 0 30 1 77 0 43 1 89 0 69 1 85 0 101] 
#[1 1 65 0 28 1 69 0 29 1 73 0 30 1 77 0 43 1 93 0 69 1 85 0 101] 
#[1 1 97 0 28 1 101 0 71] 
#[1 1 105 0 29 1 109 0 73] 
#[0 0 74 0 37] 
#[0 0 78 0 37] 
#[0 0 82 0 37] 
#[0 0 86 0 37] 
#[0 0 90 0 37] 
#[0 0 94 0 37] 
#[1 0 54 0 37 1 113 0 55] 
#[1 1 117 0 21 1 121 0 22] 
#[0 0 98 0 37] 
#[0 0 102 0 37] 
#[0 0 106 0 37] 
#[0 0 110 0 37] 
#[0 0 114 0 37] 
#[0 0 118 0 37] 
#[0 0 122 0 37] 
#[0 0 126 0 37] 
#[0 0 130 0 37] 
#[0 0 134 0 37] 
#[0 0 138 0 37] 
#[0 0 142 0 37] 
#[0 0 146 0 37] 
#[0 0 150 0 37] 
#[0 0 154 0 37] 
#[0 0 158 0 37] 
#[0 0 162 0 37] 
#[0 0 166 0 37] 
#[0 0 170 0 37] 
#[0 0 174 0 37] 
#[1 1 125 0 1 1 129 0 28 1 133 0 36 1 137 0 38 1 141 0 39 1 145 0 41 1 149 0 42 1 153 0 87 1 157 0 90 1 161 0 92] 
#[1 1 165 0 6 0 178 0 37 1 169 0 95] 
#[0 0 182 0 2 0 6 0 37] 
#[1 1 173 0 1 0 186 0 2 0 186 0 6 1 65 0 28 1 69 0 29 1 73 0 30 1 177 0 32 1 181 0 33 0 186 0 37 1 77 0 43 1 185 0 44 1 189 0 99 1 189 0 100 1 197 0 101] 
#[1 1 201 0 29 0 190 0 37 1 201 0 86] 
#[1 1 201 0 29 0 194 0 37 1 201 0 86] 
#[0 0 198 0 37] 
#[0 1 205 0 1] 
#[0 1 209 0 1] 
#[0 0 202 0 37] 
#[0 0 206 0 37] 
#[0 0 210 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 32 0 33 0 34 0 37 0 43 0 44] 
#[0 0 214 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 32 0 33 0 34 0 37 0 43 0 44] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 32 0 33 0 34 0 37 0 43 0 44] 
#[0 0 222 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 32 0 33 0 34 0 37 0 43 0 44] 
#[1 1 65 0 28 1 69 0 29 1 73 0 30 0 226 0 37 1 77 0 43 1 213 0 101] 
#[0 0 230 0 28 0 29 0 30 0 37 0 43] 
#[1 1 65 0 28 1 69 0 29 1 73 0 30 0 234 0 37 1 77 0 43 1 213 0 101] 
#[1 1 65 0 28 1 69 0 29 1 73 0 30 0 238 0 37 1 77 0 43 1 213 0 101] 
#[0 0 242 0 28 0 37] 
#[1 1 217 0 28 0 246 0 37] 
#[0 0 250 0 29 0 37] 
#[1 1 221 0 29 0 254 0 37] 
#[0 1 225 0 37] 
#[1 1 229 0 29 1 233 0 76] 
#[1 1 65 0 28 1 69 0 29 1 73 0 30 1 77 0 43 1 237 0 69 1 85 0 101] 
#[1 1 125 0 1 1 129 0 28 1 133 0 36 1 137 0 38 1 141 0 39 1 145 0 41 1 149 0 42 1 241 0 87 1 157 0 90 1 161 0 92] 
#[0 1 2 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42] 
#[0 1 6 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42] 
#[0 1 10 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42] 
#[0 1 14 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42] 
#[0 1 18 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42] 
#[0 1 22 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42] 
#[1 1 26 0 37 1 245 0 85] 
#[1 1 30 0 2 1 249 0 6 1 30 0 37 1 253 0 88 2 1 0 89] 
#[1 1 125 0 1 1 34 0 2 2 5 0 3 2 9 0 4 2 13 0 5 1 34 0 6 1 129 0 28 1 133 0 36 1 34 0 37 1 137 0 38 1 141 0 39 2 17 0 40 1 145 0 41 1 149 0 42 2 21 0 91 2 25 0 92] 
#[1 0 66 0 1 0 66 0 2 0 66 0 6 0 66 0 28 0 66 0 29 0 66 0 30 0 66 0 32 0 66 0 33 0 66 0 37 0 66 0 43 0 66 0 44 2 29 0 97 1 33 0 98] 
#[0 2 33 0 37] 
#[1 0 66 0 1 0 66 0 2 0 66 0 6 0 66 0 28 0 66 0 29 0 66 0 30 0 66 0 32 0 66 0 33 0 66 0 43 0 66 0 44 2 37 0 96 1 29 0 97 1 33 0 98] 
#[0 1 38 0 2 0 6 0 37] 
#[0 1 42 0 2 0 6 0 37] 
#[1 2 41 0 29 2 45 0 45] 
#[1 1 46 0 1 1 46 0 2 2 49 0 3 2 53 0 4 2 57 0 5 1 46 0 6 1 46 0 28 1 46 0 29 1 46 0 30 1 46 0 32 1 46 0 33 1 46 0 37 1 46 0 43 1 46 0 44] 
#[0 1 50 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 32 0 33 0 37 0 43 0 44] 
#[1 1 54 0 1 1 54 0 2 1 54 0 3 1 54 0 4 1 54 0 5 1 54 0 6 1 54 0 28 1 54 0 29 1 54 0 30 1 54 0 32 1 54 0 33 2 61 0 34 1 54 0 37 1 54 0 43 1 54 0 44] 
#[0 1 58 0 29 0 37] 
#[1 1 62 0 2 1 62 0 29 2 65 0 63] 
#[1 1 66 0 2 1 66 0 29 2 69 0 62] 
#[0 1 70 0 28 0 29 0 30 0 37 0 43] 
#[0 1 74 0 28 0 37] 
#[0 1 78 0 29 0 37] 
#[0 1 82 0 28 0 29 0 36 0 102 0 103] 
#[0 1 86 0 29 0 37] 
#[1 2 73 0 29 1 90 0 37] 
#[1 1 65 0 28 1 69 0 29 1 73 0 30 1 94 0 37 1 77 0 43 1 213 0 101] 
#[0 2 77 0 2] 
#[0 2 81 0 37] 
#[1 1 125 0 1 1 129 0 28 1 133 0 36 1 137 0 38 1 141 0 39 1 145 0 41 1 149 0 42 2 85 0 90 1 161 0 92] 
#[0 1 98 0 2 0 6 0 37] 
#[1 1 102 0 2 1 249 0 6 1 102 0 37 2 89 0 88] 
#[0 1 106 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42] 
#[0 1 110 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42] 
#[0 1 114 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42] 
#[0 1 118 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42] 
#[1 1 125 0 1 1 122 0 2 1 122 0 6 1 129 0 28 1 133 0 36 1 122 0 37 1 137 0 38 1 141 0 39 1 145 0 41 1 149 0 42 2 93 0 92] 
#[1 1 126 0 1 1 126 0 2 2 5 0 3 2 9 0 4 2 13 0 5 1 126 0 6 1 126 0 28 1 126 0 36 1 126 0 37 1 126 0 38 1 126 0 39 2 17 0 40 1 126 0 41 1 126 0 42] 
#[0 1 130 0 2 0 6 0 37] 
#[0 1 134 0 28 0 29 0 36 0 102 0 103] 
#[1 2 97 0 2 1 165 0 6] 
#[0 2 101 0 45] 
#[0 1 138 0 2 0 6 0 37] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 32 0 33 0 37 0 43 0 44] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 32 0 33 0 37 0 43 0 44] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 32 0 33 0 37 0 43 0 44] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 32 0 33 0 37 0 43 0 44] 
#[1 2 105 0 2 2 109 0 29] 
#[1 2 113 0 2 2 117 0 29] 
#[0 1 158 0 29 0 37] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 36 0 37 0 38 0 39 0 40 0 41 0 42] 
#[0 1 166 0 28 0 29 0 36 0 102 0 103] 
#[0 1 170 0 2 0 6 0 37] 
#[0 1 174 0 2 0 6 0 37] 
#[1 1 178 0 1 1 178 0 2 2 5 0 3 2 9 0 4 2 13 0 5 1 178 0 6 1 178 0 28 1 178 0 36 1 178 0 37 1 178 0 38 1 178 0 39 2 17 0 40 1 178 0 41 1 178 0 42] 
#[0 1 182 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 32 0 33 0 37 0 43 0 44] 
#[0 1 186 0 2 0 6 0 37] 
#[0 1 190 0 37] 
#[0 1 194 0 2 0 29] 
#[0 1 198 0 37] 
#[0 1 202 0 2 0 29]
	).
]

{ #category : #private }
SmaCCDefinitionParser >> dismissErrorToken [
	self scope: #default.
	^ super dismissErrorToken
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForAttributesLine1: nodes [
	| result |
	result := SmaCCAttributeDirectiveNode new.
	result attributesToken: (nodes at: 1).
	result classname: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addTokens: (nodes at: 4) to: result names.
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForConcatenationRegex2: nodes [
	| result |
	result := SmaCCConcatenationRegexNode new.
	result addNode: (nodes at: 1) to: result items.
	result addNodes: (nodes at: 2) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForDirectiveLine1: nodes [
	| result |
	result := nodes at: 3.
	result directiveStartToken: (nodes at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForEndDirective1: nodes [
	self scope: #default.
	^ nil
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForError1: nodes [
	| result |
	result := SmaCCDefinitionErrorNode new.
	result smaccError: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForError2: nodes [
	| result |
	result := SmaCCDefinitionErrorNode new.
	result smaccError: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForFile1: nodes [
	| result |
	result := SmaCCGrammarDefinitionNode new.
	result addNodes: (nodes at: 1) to: result rules.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForGLR1: nodes [
	| result |
	result := SmaCCFlagDirectiveNode new.
	result typeToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIdMethodLine1: nodes [
	| result |
	result := SmaCCIdDirectiveNode new.
	result idToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIgnoreVariableWarning1: nodes [
	| result |
	result := SmaCCIgnoreVariableWarningDirectiveNode new.
	result ignoreVariableWarningToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result symbols.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIgnoredVariables1: nodes [
	| result |
	result := SmaCCIgnoreVariableDirectiveNode new.
	result ignoreVariablesToken: (nodes at: 2).
	result addTokens: (nodes at: 3) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForLeftLine1: nodes [
	| result |
	result := SmaCCAssociativeDirectiveNode new.
	result typeToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result symbols.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForNamedTerm2: nodes [
	| result |
	result := nodes at: 1.
	result variableNameToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule1: nodes [
	| result |
	result := SmaCCProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule2: nodes [
	| result |
	result := SmaCCCodeProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	result code: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule4: nodes [
	| result |
	result := SmaCCClassProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	result left: (nodes at: 2).
	result classname: (nodes at: 3).
	result right: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule5: nodes [
	| result |
	result := SmaCCClassProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	result left: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRules1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRules2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForProductionRule1: nodes [
	| result |
	result := SmaCCProductionRuleNode new.
	result name: (nodes at: 1).
	result colon: (nodes at: 3).
	result addTokens: ((nodes at: 4) at: 1) to: result barTokens.
	result addNodes: ((nodes at: 4) at: 2) to: result expressions.
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegex2: nodes [
	| result |
	result := SmaCCAlternationRegexNode new.
	result addNode: (nodes at: 1) to: result items.
	result addTokens: ((nodes at: 2) at: 1) to: result barTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexRule1: nodes [
	| result |
	result := SmaCCTokenRuleNode new.
	result name: (nodes at: 2).
	result colon: (nodes at: 3).
	result regex: (nodes at: 4).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexRule2: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result states.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm2: nodes [
	| result |
	result := SmaCCCharacterRegexNode new.
	result char: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm5: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm6: nodes [
	| result |
	result := SmaCCCharacterBlockRegexNode new.
	result block: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm7: nodes [
	| result |
	result := SmaCCTokenRegexNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm8: nodes [
	| result |
	result := SmaCCRepeatRegexNode new.
	result regex: (nodes at: 1).
	result count: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRootClassLine1: nodes [
	| result |
	result := SmaCCNodeNameDirectiveNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRules1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRules2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForScopesLine1: nodes [
	| result |
	result := SmaCCScopeDirectiveNode new.
	result typeToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForSpecialTerm4: nodes [
	| result |
	result := SmaCCPostfixTermNode new.
	result term: (nodes at: 1).
	result operator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForSpecialTerm5: nodes [
	| result |
	result := SmaCCGroupTermNode new.
	result leftParen: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result barTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result expressions.
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartDirective1: nodes [
	self scope: #directives.
	^ nil
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartLine1: nodes [
	| result |
	result := SmaCCStartDirectiveNode new.
	result startToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result symbols.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartProduction1: nodes [
	self scope: #parser.
	^ nil
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartRegex1: nodes [
	self scope: #scanner.
	^ nil
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForSuperclassLine1: nodes [
	| result |
	result := SmaCCSuperclassDirectiveNode new.
	result hierarchyToken: (nodes at: 1).
	result superclass: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addTokens: (nodes at: 4) to: result names.
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm1: nodes [
	| result |
	result := SmaCCKeywordSymbolNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm2: nodes [
	| result |
	result := SmaCCTokenSymbolNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm3: nodes [
	| result |
	result := SmaCCProductionSymbolNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm4: nodes [
	| result |
	result := SmaCCErrorSymbolNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerms1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionFor______barToken__ConcatenationRegex__item__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionFor______barToken__ConcatenationRegex__item___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionFor______barToken__ConcatenationRegex__item___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #testing }
SmaCCDefinitionParser >> tryAllTokens [
	^ true
]

{ #category : #testing }
SmaCCDefinitionParser >> useAllTokenIds [
	^ false
]
