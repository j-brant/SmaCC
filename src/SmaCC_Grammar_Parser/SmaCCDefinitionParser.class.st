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
	^'2019-04-15T17:15:53.791855-05:00'
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
directives <annotate_tokens>
	: annotate_tokens
	;
directives <lr1>
	: lr1
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
	| AnnotateTokens
	| LR1
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
IgnoreCase
	: <ignorecase> 'typeToken' {{FlagDirective}}
	;
AnnotateTokens
	: <annotate_tokens> 'typeToken' {{FlagDirective}}
	;
LR1
	: <lr1> 'typeToken' {{FlagDirective}}
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
	#(78 0 #reduceActionForStartRegex1: 5399553 false ) 
	#(51 0 #reduceActionForStartDirective1: 3270657 false ) 
	#(80 1 #liftFirstValue: 5489665 false ) 
	#(88 0 #reduceActionForStartProduction1: 6452225 false ) 
	#(45 1 #reduceActionForFile1: 2565121 false ) 
	#(46 1 #reduceActionForRules1: 2605057 false ) 
	#(47 1 #liftFirstValue: 2651140 false ) 
	#(47 1 #liftFirstValue: 2651138 false ) 
	#(47 1 #liftFirstValue: 2651139 false ) 
	#(47 1 #liftFirstValue: 2651137 false ) 
	#(48 1 #reduceActionForError2: 2720770 false ) 
	#(46 2 #reduceActionForRules2: 2605058 false ) 
	#(52 0 #reduceActionForEndDirective1: 3324929 false ) 
	#(77 2 #reduceActionForRegexRule2: 5224450 false ) 
	#(48 2 #reduceActionForError1: 2720769 false ) 
	#(92 0 #reduceActionForTerms1: 7003137 false ) 
	#(54 0 #reduceActionForTerms1: 3440641 false ) 
	#(71 1 #reduceActionForGLR1: 4768769 false ) 
	#(74 1 #reduceActionForGLR1: 5035009 false ) 
	#(75 1 #reduceActionForGLR1: 5096449 false ) 
	#(76 1 #reduceActionForGLR1: 5167105 false ) 
	#(50 1 #liftFirstValue: 2988034 false ) 
	#(50 1 #liftFirstValue: 2988033 false ) 
	#(50 1 #liftFirstValue: 2988035 false ) 
	#(50 1 #liftFirstValue: 2988036 false ) 
	#(50 1 #liftFirstValue: 2988037 false ) 
	#(50 1 #liftFirstValue: 2988038 false ) 
	#(50 1 #liftFirstValue: 2988039 false ) 
	#(50 1 #liftFirstValue: 2988040 false ) 
	#(50 1 #liftFirstValue: 2988041 false ) 
	#(50 1 #liftFirstValue: 2988042 false ) 
	#(50 1 #liftFirstValue: 2988043 false ) 
	#(50 1 #liftFirstValue: 2988044 false ) 
	#(50 1 #liftFirstValue: 2988045 false ) 
	#(50 1 #liftFirstValue: 2988047 false ) 
	#(50 1 #liftFirstValue: 2988046 false ) 
	#(50 1 #liftFirstValue: 2988048 false ) 
	#(50 1 #liftFirstValue: 2988049 false ) 
	#(89 0 #reduceActionForEndDirective1: 6502401 false ) 
	#(90 1 #reduceActionForParserRules2: 6551554 false ) 
	#(91 1 #reduceActionForParserRule1: 6649857 false ) 
	#(53 2 #reduceActionForScopesLine1: 3374081 false ) 
	#(55 2 #reduceActionForScopesLine1: 3480577 false ) 
	#(56 2 #reduceActionForRootClassLine1: 3556353 false ) 
	#(61 2 #reduceActionForRootClassLine1: 4032513 false ) 
	#(62 2 #reduceActionForRootClassLine1: 4114433 false ) 
	#(95 1 #reduceActionForTerm2: 7376898 false ) 
	#(95 1 #reduceActionForTerm3: 7376899 false ) 
	#(95 1 #reduceActionForTerm1: 7376897 false ) 
	#(95 1 #reduceActionForTerm4: 7376900 false ) 
	#(63 2 #reduceActionForLeftLine1: 4196353 false ) 
	#(66 1 #reduceActionForRules1: 4424705 false ) 
	#(64 2 #reduceActionForLeftLine1: 4267009 false ) 
	#(65 2 #reduceActionForLeftLine1: 4339713 false ) 
	#(68 1 #reduceActionForRules1: 4543489 false ) 
	#(67 2 #reduceActionForIdMethodLine1: 4483073 false ) 
	#(70 1 #reduceActionForRules1: 4682753 false ) 
	#(69 2 #reduceActionForStartLine1: 4610049 false ) 
	#(86 1 #reduceActionForRegexTerm7: 5746695 false ) 
	#(86 1 #reduceActionForRegexTerm2: 5746690 false ) 
	#(86 1 #reduceActionForRegexTerm2: 5746692 false ) 
	#(86 1 #reduceActionForRegexTerm6: 5746694 false ) 
	#(86 1 #reduceActionForRegexTerm2: 5746689 false ) 
	#(86 1 #reduceActionForRegexTerm2: 5746691 false ) 
	#(79 0 #reduceActionForEndDirective1: 5445633 false ) 
	#(81 1 #liftFirstValue: 5518337 false ) 
	#(84 1 #liftFirstValue: 5647361 false ) 
	#(91 2 #reduceActionForParserRule2: 6649858 false ) 
	#(91 2 #reduceActionForParserRule2: 6649859 false ) 
	#(92 2 #reduceActionForRules2: 7003138 false ) 
	#(93 1 #liftFirstValue: 7045121 false ) 
	#(94 1 #liftFirstValue: 7300097 false ) 
	#(54 2 #reduceActionForRules2: 3440642 false ) 
	#(60 0 #reduceActionForTerms1: 3981313 false ) 
	#(59 0 #reduceActionForTerms1: 3932161 false ) 
	#(66 2 #reduceActionForRules2: 4424706 false ) 
	#(68 2 #reduceActionForRules2: 4543490 false ) 
	#(70 2 #reduceActionForRules2: 4682754 false ) 
	#(49 5 #reduceActionForDirectiveLine1: 2853889 false ) 
	#(73 1 #reduceActionForRules1: 4943873 false ) 
	#(72 3 #reduceActionForIgnoredVariables1: 4815873 false ) 
	#(83 1 #reduceActionFor______barToken__ConcatenationRegex__item___1: 5577729 false ) 
	#(81 2 #reduceActionForRegex2: 5518338 false ) 
	#(86 2 #reduceActionForRegexTerm8: 5746696 false ) 
	#(86 2 #reduceActionForRegexTerm8: 5746697 false ) 
	#(86 2 #reduceActionForRegexTerm8: 5746698 false ) 
	#(86 2 #reduceActionForRegexTerm8: 5746699 false ) 
	#(84 2 #reduceActionForConcatenationRegex2: 5647362 false ) 
	#(85 1 #reduceActionForRules1: 5700609 false ) 
	#(90 3 #reduceActionForParserRules1: 6551553 false ) 
	#(87 6 #reduceActionForProductionRule1: 6301697 false ) 
	#(91 3 #reduceActionForParserRule5: 6649861 false ) 
	#(93 2 #reduceActionForSpecialTerm4: 7045124 false ) 
	#(93 2 #reduceActionForSpecialTerm4: 7045123 false ) 
	#(93 2 #reduceActionForSpecialTerm4: 7045122 false ) 
	#(94 2 #reduceActionForNamedTerm2: 7300098 false ) 
	#(73 2 #reduceActionForRules2: 4943874 false ) 
	#(86 3 #reduceActionForRegexTerm5: 5746693 false ) 
	#(77 6 #reduceActionForRegexRule1: 5224449 false ) 
	#(82 2 #reduceActionFor______barToken__ConcatenationRegex__item__1: 5577729 false ) 
	#(83 2 #reduceActionFor______barToken__ConcatenationRegex__item___2: 5577730 false ) 
	#(85 2 #reduceActionForRules2: 5700610 false ) 
	#(93 3 #reduceActionForSpecialTerm5: 7045125 false ) 
	#(91 4 #reduceActionForParserRule4: 6649860 false ) 
	#(57 5 #reduceActionForSuperclassLine1: 3640321 false ) 
	#(60 2 #reduceActionForRules2: 3981314 false ) 
	#(58 5 #reduceActionForAttributesLine1: 3786753 false ) 
	#(59 2 #reduceActionForRules2: 3932162 false )
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
	^ #('"("' '")"' '"*"' '"+"' '"?"' '"|"' '<scopes>' '<excludes>' '<root>' '<hierarchy>' '<attributes>' '<prefix>' '<suffix>' '<left>' '<right>' '<nonassoc>' '<id>' '<start>' '<glr>' '<ignorecase>' '<ignorevariables>' '<annotate_tokens>' '<lr1>' '<whitespace>' '<tokenname>' '<symbolname>' '<keyword>' '<comment>' '<code>' '<immediateCode>' '<variablename>' '<production>' '<directive>' '<semicolon>' '<backslashcharacter>' '<characterblock>' '<repeat>' '<character>' '<anycharacter>' '<error>' '<classLeft>' '<classRight>' '<patternToken>' 'B e g i n' 'File' 'Rules' 'Rule' 'Error' 'DirectiveLine' 'Directive' 'StartDirective' 'EndDirective' 'ScopesLine' 'Scopes' 'ExcludeScopesLine' 'RootClassLine' 'SuperclassLine' 'AttributesLine' 'IvarList' 'ClassList' 'PrefixLine' 'SuffixLine' 'LeftLine' 'RightLine' 'NonAssociativeLine' 'TokenList' 'IdMethodLine' 'IdTokens' 'StartLine' 'StartingTokens' 'GLR' 'IgnoredVariables' 'IgnoredVariableList' 'IgnoreCase' 'AnnotateTokens' 'LR1' 'RegexRule' 'StartRegex' 'EndRegex' 'Symbol' 'Regex' '("|" ''barToken'' ConcatenationRegex ''item'')' '("|" ''barToken'' ConcatenationRegex ''item'')+' 'ConcatenationRegex' 'RegexTerm ''item'' +' 'RegexTerm' 'ProductionRule' 'StartProduction' 'EndProduction' 'ParserRules' 'ParserRule' 'Terms' 'SpecialTerm' 'NamedTerm' 'Term' 'E O F' 'error')
]

{ #category : #generated }
SmaCCDefinitionParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCGrammarDefinitionNode #SmaCCGrammarDefinitionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCDefinitionErrorNode #SmaCCDirectiveNode #SmaCCDirectiveNode nil nil #SmaCCScopeDirectiveNode #OrderedCollection #SmaCCScopeDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCSuperclassDirectiveNode #SmaCCAttributeDirectiveNode #OrderedCollection #OrderedCollection #SmaCCNodeNameDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #OrderedCollection #SmaCCIdDirectiveNode #OrderedCollection #SmaCCStartDirectiveNode #OrderedCollection #SmaCCFlagDirectiveNode #SmaCCIgnoreVariableDirectiveNode #OrderedCollection #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCTokenRuleNode nil nil #SmaCCToken #SmaCCRegexNode #OrderedCollection #OrderedCollection #SmaCCRegexNode #OrderedCollection #SmaCCRegexNode #SmaCCProductionRuleNode nil nil #OrderedCollection #SmaCCProductionExpressionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCSymbolNode #SmaCCSymbolNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
SmaCCDefinitionParser class >> transitionTable [
^#(
#[1 0 6 0 25 0 21 0 26 0 10 0 33 0 25 0 45 0 29 0 46 0 33 0 47 0 33 0 48 0 33 0 49 0 45 0 51 0 33 0 77 0 53 0 78 0 57 0 80 0 33 0 87 0 65 0 97] 
#[1 0 69 0 26 0 73 0 87] 
#[1 0 6 0 25 0 57 0 26 0 81 0 77 0 53 0 78 0 57 0 80] 
#[1 0 10 0 33 0 85 0 49 0 45 0 51] 
#[1 0 14 0 25 0 14 0 26 0 18 0 32 0 89 0 88] 
#[0 0 0 0 96] 
#[1 0 6 0 25 0 21 0 26 0 10 0 33 0 93 0 47 0 93 0 48 0 93 0 49 0 45 0 51 0 93 0 77 0 53 0 78 0 57 0 80 0 93 0 87 0 22 0 96 0 65 0 97] 
#[0 0 26 0 25 0 26 0 33 0 96 0 97] 
#[0 0 30 0 25 0 26 0 33 0 96 0 97] 
#[0 0 34 0 25 0 26 0 33 0 96 0 97] 
#[0 0 97 0 33] 
#[0 0 38 0 25 0 26 0 33 0 96 0 97] 
#[0 0 101 0 25] 
#[1 0 6 0 25 0 57 0 26 0 105 0 77 0 53 0 78 0 57 0 80] 
#[0 0 42 0 25 0 26 0 33 0 96 0 97] 
#[1 0 46 0 25 0 46 0 26 0 46 0 33 0 109 0 34 0 46 0 96 0 46 0 97] 
#[1 0 18 0 32 0 89 0 88] 
#[0 0 0 0 96] 
#[0 0 14 0 25 0 26 0 34] 
#[0 0 0 0 96] 
#[0 0 0 0 96] 
#[0 0 113 0 32] 
#[0 0 50 0 25 0 26 0 33 0 96 0 97] 
#[1 0 117 0 7 0 121 0 8 0 125 0 9 0 129 0 10 0 133 0 11 0 137 0 12 0 141 0 13 0 145 0 14 0 149 0 15 0 153 0 16 0 157 0 17 0 161 0 18 0 165 0 19 0 169 0 20 0 54 0 21 0 173 0 22 0 177 0 23 0 181 0 50 0 185 0 52 0 181 0 53 0 181 0 55 0 181 0 56 0 181 0 57 0 181 0 58 0 181 0 61 0 181 0 62 0 181 0 63 0 181 0 64 0 181 0 65 0 181 0 67 0 181 0 69 0 181 0 71 0 181 0 72 0 181 0 74 0 181 0 75 0 181 0 76] 
#[0 1 1 0 32] 
#[0 0 58 0 25 0 26 0 33 0 96 0 97] 
#[0 0 62 0 25 0 26 0 33 0 96 0 97] 
#[1 0 66 0 1 0 66 0 6 0 66 0 25 0 66 0 26 0 66 0 27 0 66 0 29 0 66 0 30 0 66 0 34 0 66 0 40 0 66 0 41 1 5 0 90 1 9 0 91 1 13 0 92] 
#[1 0 70 0 26 0 70 0 34 1 17 0 54] 
#[1 0 70 0 26 0 70 0 34 1 21 0 54] 
#[0 1 25 0 26] 
#[0 1 29 0 26] 
#[0 1 33 0 26] 
#[0 1 37 0 26] 
#[0 1 41 0 26] 
#[1 1 45 0 25 1 49 0 26 1 53 0 27 1 57 0 40 1 61 0 66 1 65 0 95] 
#[1 1 45 0 25 1 49 0 26 1 53 0 27 1 57 0 40 1 69 0 66 1 65 0 95] 
#[1 1 45 0 25 1 49 0 26 1 53 0 27 1 57 0 40 1 73 0 66 1 65 0 95] 
#[1 1 77 0 25 1 81 0 68] 
#[1 1 85 0 26 1 89 0 70] 
#[0 0 74 0 34] 
#[0 0 78 0 34] 
#[0 0 82 0 34] 
#[0 0 86 0 34] 
#[1 0 54 0 34 1 93 0 52] 
#[0 1 97 0 21] 
#[0 0 90 0 34] 
#[0 0 94 0 34] 
#[0 0 98 0 34] 
#[0 0 102 0 34] 
#[0 0 106 0 34] 
#[0 0 110 0 34] 
#[0 0 114 0 34] 
#[0 0 118 0 34] 
#[0 0 122 0 34] 
#[0 0 126 0 34] 
#[0 0 130 0 34] 
#[0 0 134 0 34] 
#[0 0 138 0 34] 
#[0 0 142 0 34] 
#[0 0 146 0 34] 
#[0 0 150 0 34] 
#[0 0 154 0 34] 
#[1 1 101 0 1 1 105 0 25 1 109 0 33 1 113 0 35 1 117 0 36 1 121 0 38 1 125 0 39 1 129 0 81 1 133 0 84 1 137 0 86] 
#[1 1 141 0 6 0 158 0 34 1 145 0 89] 
#[0 0 162 0 2 0 6 0 34] 
#[1 1 149 0 1 0 166 0 2 0 166 0 6 1 45 0 25 1 49 0 26 1 53 0 27 1 153 0 29 1 157 0 30 0 166 0 34 1 57 0 40 1 161 0 41 1 165 0 93 1 165 0 94 1 173 0 95] 
#[1 1 177 0 26 0 170 0 34 1 177 0 80] 
#[1 1 177 0 26 0 174 0 34 1 177 0 80] 
#[0 0 178 0 34] 
#[0 1 181 0 1] 
#[0 1 185 0 1] 
#[0 0 182 0 34] 
#[0 0 186 0 34] 
#[0 0 190 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 26 0 27 0 29 0 30 0 31 0 34 0 40 0 41] 
#[0 0 194 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 26 0 27 0 29 0 30 0 31 0 34 0 40 0 41] 
#[0 0 198 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 26 0 27 0 29 0 30 0 31 0 34 0 40 0 41] 
#[0 0 202 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 26 0 27 0 29 0 30 0 31 0 34 0 40 0 41] 
#[1 1 45 0 25 1 49 0 26 1 53 0 27 0 206 0 34 1 57 0 40 1 189 0 95] 
#[0 0 210 0 25 0 26 0 27 0 34 0 40] 
#[1 1 45 0 25 1 49 0 26 1 53 0 27 0 214 0 34 1 57 0 40 1 189 0 95] 
#[1 1 45 0 25 1 49 0 26 1 53 0 27 0 218 0 34 1 57 0 40 1 189 0 95] 
#[0 0 222 0 25 0 34] 
#[1 1 193 0 25 0 226 0 34] 
#[0 0 230 0 26 0 34] 
#[1 1 197 0 26 0 234 0 34] 
#[0 1 201 0 34] 
#[1 1 205 0 26 1 209 0 73] 
#[1 1 101 0 1 1 105 0 25 1 109 0 33 1 113 0 35 1 117 0 36 1 121 0 38 1 125 0 39 1 213 0 81 1 133 0 84 1 137 0 86] 
#[0 0 238 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 33 0 34 0 35 0 36 0 37 0 38 0 39] 
#[0 0 242 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 33 0 34 0 35 0 36 0 37 0 38 0 39] 
#[0 0 246 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 33 0 34 0 35 0 36 0 37 0 38 0 39] 
#[0 0 250 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 33 0 34 0 35 0 36 0 37 0 38 0 39] 
#[0 0 254 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 33 0 34 0 35 0 36 0 37 0 38 0 39] 
#[0 1 2 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 33 0 34 0 35 0 36 0 37 0 38 0 39] 
#[1 1 6 0 34 1 217 0 79] 
#[1 1 10 0 2 1 221 0 6 1 10 0 34 1 225 0 82 1 229 0 83] 
#[1 1 101 0 1 1 14 0 2 1 233 0 3 1 237 0 4 1 241 0 5 1 14 0 6 1 105 0 25 1 109 0 33 1 14 0 34 1 113 0 35 1 117 0 36 1 245 0 37 1 121 0 38 1 125 0 39 1 249 0 85 1 253 0 86] 
#[1 0 66 0 1 0 66 0 2 0 66 0 6 0 66 0 25 0 66 0 26 0 66 0 27 0 66 0 29 0 66 0 30 0 66 0 34 0 66 0 40 0 66 0 41 2 1 0 91 1 13 0 92] 
#[0 2 5 0 34] 
#[1 0 66 0 1 0 66 0 2 0 66 0 6 0 66 0 25 0 66 0 26 0 66 0 27 0 66 0 29 0 66 0 30 0 66 0 40 0 66 0 41 2 9 0 90 1 9 0 91 1 13 0 92] 
#[0 1 18 0 2 0 6 0 34] 
#[0 1 22 0 2 0 6 0 34] 
#[1 2 13 0 26 2 17 0 42] 
#[1 1 26 0 1 1 26 0 2 2 21 0 3 2 25 0 4 2 29 0 5 1 26 0 6 1 26 0 25 1 26 0 26 1 26 0 27 1 26 0 29 1 26 0 30 1 26 0 34 1 26 0 40 1 26 0 41] 
#[0 1 30 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 26 0 27 0 29 0 30 0 34 0 40 0 41] 
#[1 1 34 0 1 1 34 0 2 1 34 0 3 1 34 0 4 1 34 0 5 1 34 0 6 1 34 0 25 1 34 0 26 1 34 0 27 1 34 0 29 1 34 0 30 2 33 0 31 1 34 0 34 1 34 0 40 1 34 0 41] 
#[0 1 38 0 26 0 34] 
#[1 1 42 0 2 1 42 0 26 2 37 0 60] 
#[1 1 46 0 2 1 46 0 26 2 41 0 59] 
#[0 1 50 0 25 0 26 0 27 0 34 0 40] 
#[0 1 54 0 25 0 34] 
#[0 1 58 0 26 0 34] 
#[0 1 62 0 25 0 26 0 33 0 96 0 97] 
#[0 1 66 0 26 0 34] 
#[1 2 45 0 26 1 70 0 34] 
#[0 2 49 0 2] 
#[0 2 53 0 34] 
#[1 1 101 0 1 1 105 0 25 1 109 0 33 1 113 0 35 1 117 0 36 1 121 0 38 1 125 0 39 2 57 0 84 1 137 0 86] 
#[0 1 74 0 2 0 6 0 34] 
#[1 1 78 0 2 1 221 0 6 1 78 0 34 2 61 0 82] 
#[0 1 82 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 33 0 34 0 35 0 36 0 37 0 38 0 39] 
#[0 1 86 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 33 0 34 0 35 0 36 0 37 0 38 0 39] 
#[0 1 90 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 33 0 34 0 35 0 36 0 37 0 38 0 39] 
#[0 1 94 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 33 0 34 0 35 0 36 0 37 0 38 0 39] 
#[1 1 101 0 1 1 98 0 2 1 98 0 6 1 105 0 25 1 109 0 33 1 98 0 34 1 113 0 35 1 117 0 36 1 121 0 38 1 125 0 39 2 65 0 86] 
#[1 1 102 0 1 1 102 0 2 1 233 0 3 1 237 0 4 1 241 0 5 1 102 0 6 1 102 0 25 1 102 0 33 1 102 0 34 1 102 0 35 1 102 0 36 1 245 0 37 1 102 0 38 1 102 0 39] 
#[0 1 106 0 2 0 6 0 34] 
#[0 1 110 0 25 0 26 0 33 0 96 0 97] 
#[1 2 69 0 2 1 141 0 6] 
#[0 2 73 0 42] 
#[0 1 114 0 2 0 6 0 34] 
#[0 1 118 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 26 0 27 0 29 0 30 0 34 0 40 0 41] 
#[0 1 122 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 26 0 27 0 29 0 30 0 34 0 40 0 41] 
#[0 1 126 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 26 0 27 0 29 0 30 0 34 0 40 0 41] 
#[0 1 130 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 26 0 27 0 29 0 30 0 34 0 40 0 41] 
#[1 2 77 0 2 2 81 0 26] 
#[1 2 85 0 2 2 89 0 26] 
#[0 1 134 0 26 0 34] 
#[0 1 138 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 33 0 34 0 35 0 36 0 37 0 38 0 39] 
#[0 1 142 0 25 0 26 0 33 0 96 0 97] 
#[0 1 146 0 2 0 6 0 34] 
#[0 1 150 0 2 0 6 0 34] 
#[1 1 154 0 1 1 154 0 2 1 233 0 3 1 237 0 4 1 241 0 5 1 154 0 6 1 154 0 25 1 154 0 33 1 154 0 34 1 154 0 35 1 154 0 36 1 245 0 37 1 154 0 38 1 154 0 39] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 25 0 26 0 27 0 29 0 30 0 34 0 40 0 41] 
#[0 1 162 0 2 0 6 0 34] 
#[0 1 166 0 34] 
#[0 1 170 0 2 0 26] 
#[0 1 174 0 34] 
#[0 1 178 0 2 0 26]
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
