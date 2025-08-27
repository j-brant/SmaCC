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
	^'2025-08-28T06:54:21.031771-05:00'
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
directives <nfa>
	: nfa
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
directives <scannerSelectors>
	:  scannerSelectors
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
	: \[ ([^\[\]\\] | <backslashcharacter> )+ \] 
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

%start ProductionRule RegexRule DirectiveLine File EmptyRule;

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
		ScannerSelectorsDirective
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
		ConditionRegex
		AlternationRegex
		ConcatenationRegex
		TokenRegex
		RepeatRegex
	);
%prefix SmaCC;
%suffix Node;
%root Definition;
scanner <conditionCode>
	: \[\[
	;

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
EmptyRule
	: {{GrammarDefinition}}
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
	| NFA
	| IgnoreCase
	| IgnoredVariables
	| IgnoreVariableWarning
	| AnnotateTokens
	| LR1
	| Unicode
	| Byte
	| ScannerSelectorsLine
	;
NFA
	: <nfa> 'typeToken' {{FlagDirective}}
	;
ScannerSelectorsLine
	: <scannerSelectors> 'scannerSelectorsToken' Symbol 'symbol'+ {{ScannerSelectorsDirective}}
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
	: CharacterRegexTerm
	| <conditionCode> 'code' {{ConditionRegex}}
	;
CharacterRegexTerm
	: <character> 'char' {{CharacterRegex}}
	| <directive> 'char' {{CharacterRegex}}
	| <anycharacter> 'char' {{CharacterRegex}}
	| <backslashcharacter> 'char' {{CharacterRegex}}
	| ""("" 'leftParen' Regex "")"" 'rightParen' {{Regex}}
	| <characterblock> 'block' {{CharacterBlockRegex}}
	| <tokenname> 'name' {{TokenRegex}}
	| CharacterRegexTerm 'regex' ""*"" 'count' {{RepeatRegex}}	
	| CharacterRegexTerm 'regex' ""+"" 'count' {{RepeatRegex}}
	| CharacterRegexTerm 'regex' ""?"" 'count' {{RepeatRegex}}
	| CharacterRegexTerm 'regex' <repeat> 'count' {{RepeatRegex}}
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
	#(91 0 #reduceActionForStartRegex1: 6272001 false) 
	#(61 0 #reduceActionForStartDirective1: 3896321 false) 
	#(54 0 #reduceActionForEmptyRule1: 3063809 false) 
	#(93 1 #liftFirstValue: 6362113 false) 
	#(102 0 #reduceActionForStartProduction1: 7452673 false) 
	#(51 1 #reduceActionForFile1: 2908161 false) 
	#(52 1 #reduceActionForRules1: 2948097 false) 
	#(53 1 #liftFirstValue: 2994180 false) 
	#(53 1 #liftFirstValue: 2994178 false) 
	#(53 1 #liftFirstValue: 2994179 false) 
	#(53 1 #liftFirstValue: 2994177 false) 
	#(55 1 #reduceActionForError2: 3102722 false) 
	#(52 2 #reduceActionForRules2: 2948098 false) 
	#(62 0 #reduceActionForEndDirective1: 3950593 false) 
	#(90 2 #reduceActionForRegexRule2: 6096898 false) 
	#(55 2 #reduceActionForError1: 3102721 false) 
	#(106 0 #reduceActionForTerms1: 8003585 false) 
	#(64 0 #reduceActionForTerms1: 4066305 false) 
	#(58 1 #reduceActionForNFA1: 3729409 false) 
	#(81 1 #reduceActionForNFA1: 5394433 false) 
	#(85 1 #reduceActionForNFA1: 5803009 false) 
	#(86 1 #reduceActionForNFA1: 5864449 false) 
	#(87 1 #reduceActionForNFA1: 5935105 false) 
	#(88 1 #reduceActionForNFA1: 5982209 false) 
	#(89 1 #reduceActionForNFA1: 6037505 false) 
	#(57 1 #liftFirstValue: 3369998 false) 
	#(57 1 #liftFirstValue: 3370006 false) 
	#(57 1 #liftFirstValue: 3369986 false) 
	#(57 1 #liftFirstValue: 3369985 false) 
	#(57 1 #liftFirstValue: 3369987 false) 
	#(57 1 #liftFirstValue: 3369988 false) 
	#(57 1 #liftFirstValue: 3369989 false) 
	#(57 1 #liftFirstValue: 3369990 false) 
	#(57 1 #liftFirstValue: 3369991 false) 
	#(57 1 #liftFirstValue: 3369992 false) 
	#(57 1 #liftFirstValue: 3369993 false) 
	#(57 1 #liftFirstValue: 3369994 false) 
	#(57 1 #liftFirstValue: 3369995 false) 
	#(57 1 #liftFirstValue: 3369996 false) 
	#(57 1 #liftFirstValue: 3369997 false) 
	#(57 1 #liftFirstValue: 3370000 false) 
	#(57 1 #liftFirstValue: 3370001 false) 
	#(57 1 #liftFirstValue: 3369999 false) 
	#(57 1 #liftFirstValue: 3370002 false) 
	#(57 1 #liftFirstValue: 3370003 false) 
	#(57 1 #liftFirstValue: 3370004 false) 
	#(57 1 #liftFirstValue: 3370005 false) 
	#(103 0 #reduceActionForEndDirective1: 7502849 false) 
	#(104 1 #reduceActionForParserRules2: 7552002 false) 
	#(105 1 #reduceActionForParserRule1: 7650305 false) 
	#(63 2 #reduceActionForScopesLine1: 3999745 false) 
	#(65 2 #reduceActionForScopesLine1: 4106241 false) 
	#(66 2 #reduceActionForRootClassLine1: 4182017 false) 
	#(71 2 #reduceActionForRootClassLine1: 4658177 false) 
	#(72 2 #reduceActionForRootClassLine1: 4740097 false) 
	#(109 1 #reduceActionForTerm2: 8377346 false) 
	#(109 1 #reduceActionForTerm3: 8377347 false) 
	#(109 1 #reduceActionForTerm1: 8377345 false) 
	#(109 1 #reduceActionForTerm4: 8377348 false) 
	#(73 2 #reduceActionForLeftLine1: 4822017 false) 
	#(76 1 #reduceActionForRules1: 5050369 false) 
	#(74 2 #reduceActionForLeftLine1: 4892673 false) 
	#(75 2 #reduceActionForLeftLine1: 4965377 false) 
	#(78 1 #reduceActionForRules1: 5169153 false) 
	#(77 2 #reduceActionForIdMethodLine1: 5108737 false) 
	#(80 1 #reduceActionForRules1: 5308417 false) 
	#(79 2 #reduceActionForStartLine1: 5235713 false) 
	#(59 2 #reduceActionForScannerSelectorsLine1: 3776513 false) 
	#(60 1 #reduceActionForRules1: 3845121 false) 
	#(100 1 #reduceActionForCharacterRegexTerm7: 6701063 false) 
	#(100 1 #reduceActionForCharacterRegexTerm2: 6701058 false) 
	#(100 1 #reduceActionForCharacterRegexTerm2: 6701060 false) 
	#(100 1 #reduceActionForCharacterRegexTerm6: 6701062 false) 
	#(100 1 #reduceActionForCharacterRegexTerm2: 6701057 false) 
	#(100 1 #reduceActionForCharacterRegexTerm2: 6701059 false) 
	#(99 1 #reduceActionForRegexTerm2: 6619138 false) 
	#(92 0 #reduceActionForEndDirective1: 6318081 false) 
	#(94 1 #liftFirstValue: 6390785 false) 
	#(97 1 #liftFirstValue: 6519809 false) 
	#(99 1 #liftFirstValue: 6619137 false) 
	#(105 2 #reduceActionForParserRule2: 7650306 false) 
	#(105 2 #reduceActionForParserRule2: 7650307 false) 
	#(106 2 #reduceActionForRules2: 8003586 false) 
	#(107 1 #liftFirstValue: 8045569 false) 
	#(108 1 #liftFirstValue: 8300545 false) 
	#(64 2 #reduceActionForRules2: 4066306 false) 
	#(70 0 #reduceActionForTerms1: 4606977 false) 
	#(69 0 #reduceActionForTerms1: 4557825 false) 
	#(76 2 #reduceActionForRules2: 5050370 false) 
	#(78 2 #reduceActionForRules2: 5169154 false) 
	#(80 2 #reduceActionForRules2: 5308418 false) 
	#(60 2 #reduceActionForRules2: 3845122 false) 
	#(56 5 #reduceActionForDirectiveLine1: 3235841 false) 
	#(83 1 #reduceActionForRules1: 5569537 false) 
	#(82 3 #reduceActionForIgnoredVariables1: 5441537 false) 
	#(84 3 #reduceActionForIgnoreVariableWarning1: 5660673 false) 
	#(96 1 #reduceActionFor______barToken__ConcatenationRegex__item___1: 6450177 false) 
	#(94 2 #reduceActionForRegex2: 6390786 false) 
	#(97 2 #reduceActionForConcatenationRegex2: 6519810 false) 
	#(98 1 #reduceActionForRules1: 6573057 false) 
	#(100 2 #reduceActionForCharacterRegexTerm8: 6701064 false) 
	#(100 2 #reduceActionForCharacterRegexTerm8: 6701065 false) 
	#(100 2 #reduceActionForCharacterRegexTerm8: 6701066 false) 
	#(100 2 #reduceActionForCharacterRegexTerm8: 6701067 false) 
	#(104 3 #reduceActionForParserRules1: 7552001 false) 
	#(101 6 #reduceActionForProductionRule1: 7302145 false) 
	#(105 3 #reduceActionForParserRule5: 7650309 false) 
	#(107 2 #reduceActionForSpecialTerm4: 8045572 false) 
	#(107 2 #reduceActionForSpecialTerm4: 8045571 false) 
	#(107 2 #reduceActionForSpecialTerm4: 8045570 false) 
	#(108 2 #reduceActionForNamedTerm2: 8300546 false) 
	#(83 2 #reduceActionForRules2: 5569538 false) 
	#(100 3 #reduceActionForCharacterRegexTerm5: 6701061 false) 
	#(90 6 #reduceActionForRegexRule1: 6096897 false) 
	#(95 2 #reduceActionFor______barToken__ConcatenationRegex__item__1: 6450177 false) 
	#(96 2 #reduceActionFor______barToken__ConcatenationRegex__item___2: 6450178 false) 
	#(98 2 #reduceActionForRules2: 6573058 false) 
	#(107 3 #reduceActionForSpecialTerm5: 8045573 false) 
	#(105 4 #reduceActionForParserRule4: 7650308 false) 
	#(67 5 #reduceActionForSuperclassLine1: 4265985 false) 
	#(70 2 #reduceActionForRules2: 4606978 false) 
	#(68 5 #reduceActionForAttributesLine1: 4412417 false) 
	#(69 2 #reduceActionForRules2: 4557826 false)
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
SmaCCDefinitionParser class >> startingStateForEmptyRule [
	^ 5
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
	^ #('"("' '")"' '"*"' '"+"' '"?"' '"|"' '<scopes>' '<excludes>' '<root>' '<hierarchy>' '<attributes>' '<prefix>' '<suffix>' '<left>' '<right>' '<nonassoc>' '<id>' '<start>' '<nfa>' '<glr>' '<ignorecase>' '<ignorevariables>' '<ignorevariablewarning>' '<annotate_tokens>' '<lr1>' '<unicode>' '<byte>' '<whitespace>' '<tokenname>' '<symbolname>' '<keyword>' '<scannerSelectors>' '<comment>' '<code>' '<immediateCode>' '<variablename>' '<production>' '<directive>' '<semicolon>' '<backslashcharacter>' '<characterblock>' '<repeat>' '<character>' '<anycharacter>' '<error>' '<classLeft>' '<classRight>' '<patternToken>' '<conditionCode>' 'B e g i n' 'File' 'Rules' 'Rule' 'EmptyRule' 'Error' 'DirectiveLine' 'Directive' 'NFA' 'ScannerSelectorsLine' 'Symbol ''symbol''+' 'StartDirective' 'EndDirective' 'ScopesLine' 'Scopes' 'ExcludeScopesLine' 'RootClassLine' 'SuperclassLine' 'AttributesLine' 'IvarList' 'ClassList' 'PrefixLine' 'SuffixLine' 'LeftLine' 'RightLine' 'NonAssociativeLine' 'TokenList' 'IdMethodLine' 'IdTokens' 'StartLine' 'StartingTokens' 'GLR' 'IgnoredVariables' 'IgnoredVariableList' 'IgnoreVariableWarning' 'IgnoreCase' 'AnnotateTokens' 'LR1' 'Unicode' 'Byte' 'RegexRule' 'StartRegex' 'EndRegex' 'Symbol' 'Regex' '("|" ''barToken'' ConcatenationRegex ''item'')' '("|" ''barToken'' ConcatenationRegex ''item'')+' 'ConcatenationRegex' 'RegexTerm ''item'' +' 'RegexTerm' 'CharacterRegexTerm' 'ProductionRule' 'StartProduction' 'EndProduction' 'ParserRules' 'ParserRule' 'Terms' 'SpecialTerm' 'NamedTerm' 'Term' 'E O F' 'error')
]

{ #category : #generated }
SmaCCDefinitionParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCGrammarDefinitionNode #SmaCCGrammarDefinitionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCGrammarDefinitionNode #SmaCCDefinitionErrorNode #SmaCCDirectiveNode #SmaCCDirectiveNode #SmaCCFlagDirectiveNode #SmaCCScannerSelectorsDirectiveNode #OrderedCollection nil nil #SmaCCScopeDirectiveNode #OrderedCollection #SmaCCScopeDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCSuperclassDirectiveNode #SmaCCAttributeDirectiveNode #OrderedCollection #OrderedCollection #SmaCCNodeNameDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #OrderedCollection #SmaCCIdDirectiveNode #OrderedCollection #SmaCCStartDirectiveNode #OrderedCollection #SmaCCFlagDirectiveNode #SmaCCIgnoreVariableDirectiveNode #OrderedCollection #SmaCCIgnoreVariableWarningDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCTokenRuleNode nil nil #SmaCCToken #SmaCCRegexNode #OrderedCollection #OrderedCollection #SmaCCRegexNode #OrderedCollection #SmaCCRegexNode #SmaCCRegexNode #SmaCCProductionRuleNode nil nil #OrderedCollection #SmaCCProductionExpressionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCSymbolNode #SmaCCSymbolNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
SmaCCDefinitionParser class >> transitionTable [
^#(
#[1 0 6 0 29 0 25 0 30 0 10 0 38 0 29 0 51 0 33 0 52 0 37 0 53 0 37 0 55 0 37 0 56 0 49 0 61 0 37 0 90 0 57 0 91 0 61 0 93 0 37 0 101 0 69 0 111] 
#[1 0 73 0 30 0 77 0 101] 
#[1 0 6 0 29 0 61 0 30 0 85 0 90 0 57 0 91 0 61 0 93] 
#[1 0 10 0 38 0 89 0 56 0 49 0 61] 
#[1 0 93 0 54 0 14 0 110] 
#[1 0 18 0 29 0 18 0 30 0 22 0 37 0 97 0 102] 
#[0 0 0 0 110] 
#[1 0 6 0 29 0 25 0 30 0 10 0 38 0 101 0 53 0 101 0 55 0 101 0 56 0 49 0 61 0 101 0 90 0 57 0 91 0 61 0 93 0 101 0 101 0 26 0 110 0 69 0 111] 
#[0 0 30 0 29 0 30 0 38 0 110 0 111] 
#[0 0 34 0 29 0 30 0 38 0 110 0 111] 
#[0 0 38 0 29 0 30 0 38 0 110 0 111] 
#[0 0 105 0 38] 
#[0 0 42 0 29 0 30 0 38 0 110 0 111] 
#[0 0 109 0 29] 
#[1 0 6 0 29 0 61 0 30 0 113 0 90 0 57 0 91 0 61 0 93] 
#[0 0 46 0 29 0 30 0 38 0 110 0 111] 
#[1 0 50 0 29 0 50 0 30 0 50 0 38 0 117 0 39 0 50 0 110 0 50 0 111] 
#[1 0 22 0 37 0 97 0 102] 
#[0 0 0 0 110] 
#[0 0 18 0 29 0 30 0 39] 
#[0 0 0 0 110] 
#[0 0 0 0 110] 
#[0 0 0 0 110] 
#[0 0 121 0 37] 
#[0 0 54 0 29 0 30 0 38 0 110 0 111] 
#[1 0 125 0 7 0 129 0 8 0 133 0 9 0 137 0 10 0 141 0 11 0 145 0 12 0 149 0 13 0 153 0 14 0 157 0 15 0 161 0 16 0 165 0 17 0 169 0 18 0 173 0 19 0 177 0 20 0 181 0 21 0 58 0 22 0 58 0 23 0 185 0 24 0 189 0 25 0 193 0 26 0 197 0 27 0 201 0 32 0 205 0 57 0 205 0 58 0 205 0 59 0 217 0 62 0 205 0 63 0 205 0 65 0 205 0 66 0 205 0 67 0 205 0 68 0 205 0 71 0 205 0 72 0 205 0 73 0 205 0 74 0 205 0 75 0 205 0 77 0 205 0 79 0 205 0 81 0 205 0 82 0 205 0 84 0 205 0 85 0 205 0 86 0 205 0 87 0 205 0 88 0 205 0 89] 
#[0 1 45 0 37] 
#[0 0 62 0 29 0 30 0 38 0 110 0 111] 
#[0 0 66 0 29 0 30 0 38 0 110 0 111] 
#[1 0 70 0 1 0 70 0 6 0 70 0 29 0 70 0 30 0 70 0 31 0 70 0 34 0 70 0 35 0 70 0 39 0 70 0 45 0 70 0 46 1 49 0 104 1 53 0 105 1 57 0 106] 
#[1 0 74 0 30 0 74 0 39 1 61 0 64] 
#[1 0 74 0 30 0 74 0 39 1 65 0 64] 
#[0 1 69 0 30] 
#[0 1 73 0 30] 
#[0 1 77 0 30] 
#[0 1 81 0 30] 
#[0 1 85 0 30] 
#[1 1 89 0 29 1 93 0 30 1 97 0 31 1 101 0 45 1 105 0 76 1 109 0 109] 
#[1 1 89 0 29 1 93 0 30 1 97 0 31 1 101 0 45 1 113 0 76 1 109 0 109] 
#[1 1 89 0 29 1 93 0 30 1 97 0 31 1 101 0 45 1 117 0 76 1 109 0 109] 
#[1 1 121 0 29 1 125 0 78] 
#[1 1 129 0 30 1 133 0 80] 
#[0 0 78 0 39] 
#[0 0 82 0 39] 
#[0 0 86 0 39] 
#[0 0 90 0 39] 
#[0 0 94 0 39] 
#[0 0 98 0 39] 
#[0 0 102 0 39] 
#[1 1 141 0 30 1 137 0 60 1 141 0 93] 
#[1 0 58 0 39 1 145 0 62] 
#[0 0 106 0 39] 
#[0 0 110 0 39] 
#[1 1 149 0 22 1 153 0 23] 
#[0 0 114 0 39] 
#[0 0 118 0 39] 
#[0 0 122 0 39] 
#[0 0 126 0 39] 
#[0 0 130 0 39] 
#[0 0 134 0 39] 
#[0 0 138 0 39] 
#[0 0 142 0 39] 
#[0 0 146 0 39] 
#[0 0 150 0 39] 
#[0 0 154 0 39] 
#[0 0 158 0 39] 
#[0 0 162 0 39] 
#[0 0 166 0 39] 
#[0 0 170 0 39] 
#[0 0 174 0 39] 
#[0 0 178 0 39] 
#[0 0 182 0 39] 
#[0 0 186 0 39] 
#[0 0 190 0 39] 
#[1 1 157 0 1 1 161 0 29 1 165 0 38 1 169 0 40 1 173 0 41 1 177 0 43 1 181 0 44 1 185 0 49 1 189 0 94 1 193 0 97 1 197 0 99 1 201 0 100] 
#[1 1 205 0 6 0 194 0 39 1 209 0 103] 
#[0 0 198 0 2 0 6 0 39] 
#[1 1 213 0 1 0 202 0 2 0 202 0 6 1 89 0 29 1 93 0 30 1 97 0 31 1 217 0 34 1 221 0 35 0 202 0 39 1 101 0 45 1 225 0 46 1 229 0 107 1 229 0 108 1 237 0 109] 
#[1 1 241 0 30 0 206 0 39 1 241 0 93] 
#[1 1 241 0 30 0 210 0 39 1 241 0 93] 
#[0 0 214 0 39] 
#[0 1 245 0 1] 
#[0 1 249 0 1] 
#[0 0 218 0 39] 
#[0 0 222 0 39] 
#[0 0 226 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 30 0 31 0 34 0 35 0 36 0 39 0 45 0 46] 
#[0 0 230 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 30 0 31 0 34 0 35 0 36 0 39 0 45 0 46] 
#[0 0 234 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 30 0 31 0 34 0 35 0 36 0 39 0 45 0 46] 
#[0 0 238 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 30 0 31 0 34 0 35 0 36 0 39 0 45 0 46] 
#[1 1 89 0 29 1 93 0 30 1 97 0 31 0 242 0 39 1 101 0 45 1 253 0 109] 
#[0 0 246 0 29 0 30 0 31 0 39 0 45] 
#[1 1 89 0 29 1 93 0 30 1 97 0 31 0 250 0 39 1 101 0 45 1 253 0 109] 
#[1 1 89 0 29 1 93 0 30 1 97 0 31 0 254 0 39 1 101 0 45 1 253 0 109] 
#[0 1 2 0 29 0 39] 
#[1 2 1 0 29 1 6 0 39] 
#[0 1 10 0 30 0 39] 
#[1 2 5 0 30 1 14 0 39] 
#[1 2 9 0 30 1 18 0 39 2 9 0 93] 
#[0 1 22 0 30 0 39] 
#[0 2 13 0 39] 
#[1 2 17 0 30 2 21 0 83] 
#[1 1 89 0 29 1 93 0 30 1 97 0 31 1 101 0 45 2 25 0 76 1 109 0 109] 
#[1 1 157 0 1 1 161 0 29 1 165 0 38 1 169 0 40 1 173 0 41 1 177 0 43 1 181 0 44 1 185 0 49 2 29 0 94 1 193 0 97 1 197 0 99 1 201 0 100] 
#[0 1 26 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49] 
#[0 1 30 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49] 
#[0 1 34 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49] 
#[0 1 38 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49] 
#[0 1 42 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49] 
#[0 1 46 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49] 
#[0 1 50 0 1 0 2 0 6 0 29 0 38 0 39 0 40 0 41 0 43 0 44 0 49] 
#[1 1 54 0 39 2 33 0 92] 
#[1 1 58 0 2 2 37 0 6 1 58 0 39 2 41 0 95 2 45 0 96] 
#[1 1 157 0 1 1 62 0 2 1 62 0 6 1 161 0 29 1 165 0 38 1 62 0 39 1 169 0 40 1 173 0 41 1 177 0 43 1 181 0 44 1 185 0 49 2 49 0 98 2 53 0 99 1 201 0 100] 
#[1 1 66 0 1 1 66 0 2 2 57 0 3 2 61 0 4 2 65 0 5 1 66 0 6 1 66 0 29 1 66 0 38 1 66 0 39 1 66 0 40 1 66 0 41 2 69 0 42 1 66 0 43 1 66 0 44 1 66 0 49] 
#[1 0 70 0 1 0 70 0 2 0 70 0 6 0 70 0 29 0 70 0 30 0 70 0 31 0 70 0 34 0 70 0 35 0 70 0 39 0 70 0 45 0 70 0 46 2 73 0 105 1 57 0 106] 
#[0 2 77 0 39] 
#[1 0 70 0 1 0 70 0 2 0 70 0 6 0 70 0 29 0 70 0 30 0 70 0 31 0 70 0 34 0 70 0 35 0 70 0 45 0 70 0 46 2 81 0 104 1 53 0 105 1 57 0 106] 
#[0 1 70 0 2 0 6 0 39] 
#[0 1 74 0 2 0 6 0 39] 
#[1 2 85 0 30 2 89 0 47] 
#[1 1 78 0 1 1 78 0 2 2 93 0 3 2 97 0 4 2 101 0 5 1 78 0 6 1 78 0 29 1 78 0 30 1 78 0 31 1 78 0 34 1 78 0 35 1 78 0 39 1 78 0 45 1 78 0 46] 
#[0 1 82 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 30 0 31 0 34 0 35 0 39 0 45 0 46] 
#[1 1 86 0 1 1 86 0 2 1 86 0 3 1 86 0 4 1 86 0 5 1 86 0 6 1 86 0 29 1 86 0 30 1 86 0 31 1 86 0 34 1 86 0 35 2 105 0 36 1 86 0 39 1 86 0 45 1 86 0 46] 
#[0 1 90 0 30 0 39] 
#[1 1 94 0 2 1 94 0 30 2 109 0 70] 
#[1 1 98 0 2 1 98 0 30 2 113 0 69] 
#[0 1 102 0 29 0 30 0 31 0 39 0 45] 
#[0 1 106 0 29 0 39] 
#[0 1 110 0 30 0 39] 
#[0 1 114 0 30 0 39] 
#[0 1 118 0 29 0 30 0 38 0 110 0 111] 
#[0 1 122 0 30 0 39] 
#[1 2 117 0 30 1 126 0 39] 
#[1 1 89 0 29 1 93 0 30 1 97 0 31 1 130 0 39 1 101 0 45 1 253 0 109] 
#[0 2 121 0 2] 
#[0 2 125 0 39] 
#[1 1 157 0 1 1 161 0 29 1 165 0 38 1 169 0 40 1 173 0 41 1 177 0 43 1 181 0 44 1 185 0 49 2 129 0 97 1 197 0 99 1 201 0 100] 
#[0 1 134 0 2 0 6 0 39] 
#[1 1 138 0 2 2 37 0 6 1 138 0 39 2 133 0 95] 
#[1 1 157 0 1 1 142 0 2 1 142 0 6 1 161 0 29 1 165 0 38 1 142 0 39 1 169 0 40 1 173 0 41 1 177 0 43 1 181 0 44 1 185 0 49 2 137 0 99 1 201 0 100] 
#[0 1 146 0 1 0 2 0 6 0 29 0 38 0 39 0 40 0 41 0 43 0 44 0 49] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49] 
#[0 1 166 0 2 0 6 0 39] 
#[0 1 170 0 29 0 30 0 38 0 110 0 111] 
#[1 2 141 0 2 1 205 0 6] 
#[0 2 145 0 47] 
#[0 1 174 0 2 0 6 0 39] 
#[0 1 178 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 30 0 31 0 34 0 35 0 39 0 45 0 46] 
#[0 1 182 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 30 0 31 0 34 0 35 0 39 0 45 0 46] 
#[0 1 186 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 30 0 31 0 34 0 35 0 39 0 45 0 46] 
#[0 1 190 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 30 0 31 0 34 0 35 0 39 0 45 0 46] 
#[1 2 149 0 2 2 153 0 30] 
#[1 2 157 0 2 2 161 0 30] 
#[0 1 194 0 30 0 39] 
#[0 1 198 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49] 
#[0 1 202 0 29 0 30 0 38 0 110 0 111] 
#[0 1 206 0 2 0 6 0 39] 
#[0 1 210 0 2 0 6 0 39] 
#[0 1 214 0 1 0 2 0 6 0 29 0 38 0 39 0 40 0 41 0 43 0 44 0 49] 
#[0 1 218 0 1 0 2 0 3 0 4 0 5 0 6 0 29 0 30 0 31 0 34 0 35 0 39 0 45 0 46] 
#[0 1 222 0 2 0 6 0 39] 
#[0 1 226 0 39] 
#[0 1 230 0 2 0 30] 
#[0 1 234 0 39] 
#[0 1 238 0 2 0 30]
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
SmaCCDefinitionParser >> reduceActionForCharacterRegexTerm2: nodes [
	| result |
	result := SmaCCCharacterRegexNode new.
	result char: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForCharacterRegexTerm5: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForCharacterRegexTerm6: nodes [
	| result |
	result := SmaCCCharacterBlockRegexNode new.
	result block: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForCharacterRegexTerm7: nodes [
	| result |
	result := SmaCCTokenRegexNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForCharacterRegexTerm8: nodes [
	| result |
	result := SmaCCRepeatRegexNode new.
	result regex: (nodes at: 1).
	result count: (nodes at: 2).
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
SmaCCDefinitionParser >> reduceActionForEmptyRule1: nodes [
	| result |
	result := SmaCCGrammarDefinitionNode new.
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
SmaCCDefinitionParser >> reduceActionForNFA1: nodes [
	| result |
	result := SmaCCFlagDirectiveNode new.
	result typeToken: (nodes at: 1).
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
	result := SmaCCConditionRegexNode new.
	result code: (nodes at: 1).
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
SmaCCDefinitionParser >> reduceActionForScannerSelectorsLine1: nodes [
	| result |
	result := SmaCCScannerSelectorsDirectiveNode new.
	result scannerSelectorsToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result symbols.
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
