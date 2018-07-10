Class {
	#name : #SmaCCDefinitionParser,
	#superclass : #SmaCCParser,
	#instVars : [
		'acceptSyntaxErrors'
	],
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #'generated-accessing' }
SmaCCDefinitionParser class >> cacheId [
	^'2018-07-10T14:35:42.62333-05:00'
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
<symbolname>
	: <name>
	;
<keyword>
	: (\"" [^\""]* \"") + 
	;
<comment>
	: (\# [^\r\n]*) 
	| (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
	;
<code>
	: \{ 
	;
<variablename>
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
parser <optionalLeft>
	: \[
	;
parser <optionalRight>
	: \] 
	;
parser <repeatLeft> 
	: \<\% 
	;
parser <repeatRight> 
	: \%\> 
	;
parser <classLeft> 
	: \{\{ 
	;
parser <classRight> 
	: \}\} 
	;

%id <code> <keyword> <symbolname> <tokenname> <variablename> <semicolon>
	<directive> <production> <classLeft> <classRight>;
%left	""|"";
%left ""("" <character> <backslashcharacter> <characterblock> <anycharacter> <tokenname> <symbolname> <directive>;
%left ""*"" ""+"" ""?"" <repeat> ;

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
		NameRegex
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
	| Error {self scope: #default. '1'}
	;
Error
	: error 'error' <semicolon> 'semicolon' {{Error}}
	| error 'error' {{Error}}
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
	: RegexTerm 
	| Regex 'left' ""|"" 'barToken' Regex 'right' {{AlternationRegex}}
	| Regex 'left' RegexTerm 'right' {{ConcatenationRegex}}
	;
RegexTerm
	: <character> 'char' {{CharacterRegex}}
	| <directive> 'char' {{CharacterRegex}}
	| <anycharacter> 'char' {{CharacterRegex}}
	| <backslashcharacter> 'char' {{CharacterRegex}}
	| ""("" 'leftParen' Regex "")"" 'rightParen' {{Regex}}
	| <characterblock> 'block' {{CharacterBlockRegex}}
	| <tokenname> 'name' {{TokenRegex}}
	| <symbolname> 'name' {{NameRegex}}
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
	| ""error"" 'name' {{ErrorSymbol}}
	;"
]

{ #category : #'generated-accessing' }
SmaCCDefinitionParser class >> scannerClass [
	^SmaCCDefinitionScanner
]

{ #category : #generated }
SmaCCDefinitionParser class >> startingStateForFile [
	^ 1
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
	result := SmaCCErrorNode new.
	result _error: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForError2: nodes [
	| result |
	result := SmaCCErrorNode new.
	result _error: (nodes at: 1).
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
SmaCCDefinitionParser >> reduceActionForParserRule3: nodes [
	| result |
	result := SmaCCClassProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	result left: (nodes at: 2).
	result classname: (nodes at: 3).
	result right: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule4: nodes [
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
	result left: (nodes at: 1).
	result barToken: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegex3: nodes [
	| result |
	result := SmaCCConcatenationRegexNode new.
	result left: (nodes at: 1).
	result right: (nodes at: 2).
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
	result := SmaCCNameRegexNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm9: nodes [
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
SmaCCDefinitionParser >> reduceActionForRule4: nodes [
	self scope: #default.
	^ nodes at: 1
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

{ #category : #generated }
SmaCCDefinitionParser >> reduceTable [
^#(
	#(74 0 #reduceActionForStartRegex1:) 
	#(48 0 #reduceActionForStartDirective1:) 
	#(76 1 #liftFirstValue:) 
	#(80 0 #reduceActionForStartProduction1:) 
	#(42 1 #reduceActionForFile1:) 
	#(43 1 #reduceActionForRules1:) 
	#(44 1 #reduceActionForRule4:) 
	#(44 1 #liftFirstValue:) 
	#(45 1 #reduceActionForError2:) 
	#(43 2 #reduceActionForRules2:) 
	#(49 0 #reduceActionForEndDirective1:) 
	#(73 2 #reduceActionForRegexRule2:) 
	#(45 2 #reduceActionForError1:) 
	#(84 0 #reduceActionForTerms1:) 
	#(51 0 #reduceActionForTerms1:) 
	#(68 1 #reduceActionForGLR1:) 
	#(71 1 #reduceActionForGLR1:) 
	#(72 1 #reduceActionForGLR1:) 
	#(47 1 #liftFirstValue:) 
	#(81 0 #reduceActionForEndDirective1:) 
	#(82 1 #reduceActionForParserRules2:) 
	#(83 1 #reduceActionForParserRule1:) 
	#(50 2 #reduceActionForScopesLine1:) 
	#(52 2 #reduceActionForScopesLine1:) 
	#(53 2 #reduceActionForRootClassLine1:) 
	#(58 2 #reduceActionForRootClassLine1:) 
	#(59 2 #reduceActionForRootClassLine1:) 
	#(87 1 #reduceActionForTerm4:) 
	#(87 1 #reduceActionForTerm2:) 
	#(87 1 #reduceActionForTerm3:) 
	#(87 1 #reduceActionForTerm1:) 
	#(60 2 #reduceActionForLeftLine1:) 
	#(63 1 #reduceActionForRules1:) 
	#(61 2 #reduceActionForLeftLine1:) 
	#(62 2 #reduceActionForLeftLine1:) 
	#(65 1 #reduceActionForRules1:) 
	#(64 2 #reduceActionForIdMethodLine1:) 
	#(67 1 #reduceActionForRules1:) 
	#(66 2 #reduceActionForStartLine1:) 
	#(78 1 #reduceActionForRegexTerm7:) 
	#(78 1 #reduceActionForRegexTerm8:) 
	#(78 1 #reduceActionForRegexTerm2:) 
	#(78 1 #reduceActionForRegexTerm6:) 
	#(75 0 #reduceActionForEndDirective1:) 
	#(77 1 #liftFirstValue:) 
	#(83 2 #reduceActionForParserRule2:) 
	#(84 2 #reduceActionForRules2:) 
	#(85 1 #liftFirstValue:) 
	#(86 1 #liftFirstValue:) 
	#(51 2 #reduceActionForRules2:) 
	#(57 0 #reduceActionForTerms1:) 
	#(56 0 #reduceActionForTerms1:) 
	#(63 2 #reduceActionForRules2:) 
	#(65 2 #reduceActionForRules2:) 
	#(67 2 #reduceActionForRules2:) 
	#(46 5 #reduceActionForDirectiveLine1:) 
	#(70 1 #reduceActionForRules1:) 
	#(69 3 #reduceActionForIgnoredVariables1:) 
	#(77 2 #reduceActionForRegex3:) 
	#(78 2 #reduceActionForRegexTerm9:) 
	#(82 3 #reduceActionForParserRules1:) 
	#(79 6 #reduceActionForProductionRule1:) 
	#(83 3 #reduceActionForParserRule4:) 
	#(85 2 #reduceActionForSpecialTerm4:) 
	#(86 2 #reduceActionForNamedTerm2:) 
	#(70 2 #reduceActionForRules2:) 
	#(78 3 #reduceActionForRegexTerm5:) 
	#(77 3 #reduceActionForRegex2:) 
	#(73 6 #reduceActionForRegexRule1:) 
	#(85 3 #reduceActionForSpecialTerm5:) 
	#(83 4 #reduceActionForParserRule3:) 
	#(54 5 #reduceActionForSuperclassLine1:) 
	#(57 2 #reduceActionForRules2:) 
	#(55 5 #reduceActionForAttributesLine1:) 
	#(56 2 #reduceActionForRules2:)
	).
]

{ #category : #generated }
SmaCCDefinitionParser >> symbolNames [
	^ #('"("' '")"' '"*"' '"+"' '"?"' '"error"' '"|"' '<scopes>' '<excludes>' '<root>' '<hierarchy>' '<attributes>' '<prefix>' '<suffix>' '<left>' '<right>' '<nonassoc>' '<id>' '<start>' '<glr>' '<ignorecase>' '<ignorevariables>' '<annotate_tokens>' '<whitespace>' '<tokenname>' '<symbolname>' '<keyword>' '<comment>' '<code>' '<variablename>' '<production>' '<directive>' '<semicolon>' '<backslashcharacter>' '<characterblock>' '<repeat>' '<character>' '<anycharacter>' '<classLeft>' '<classRight>' 'B e g i n' 'File' 'Rules' 'Rule' 'Error' 'DirectiveLine' 'Directive' 'StartDirective' 'EndDirective' 'ScopesLine' 'Scopes' 'ExcludeScopesLine' 'RootClassLine' 'SuperclassLine' 'AttributesLine' 'IvarList' 'ClassList' 'PrefixLine' 'SuffixLine' 'LeftLine' 'RightLine' 'NonAssociativeLine' 'TokenList' 'IdMethodLine' 'IdTokens' 'StartLine' 'StartingTokens' 'GLR' 'IgnoredVariables' 'IgnoredVariableList' 'IgnoreCase' 'AnnotateTokens' 'RegexRule' 'StartRegex' 'EndRegex' 'Symbol' 'Regex' 'RegexTerm' 'ProductionRule' 'StartProduction' 'EndProduction' 'ParserRules' 'ParserRule' 'Terms' 'SpecialTerm' 'NamedTerm' 'Term' 'E O F' 'error')
]

{ #category : #generated }
SmaCCDefinitionParser >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCGrammarDefinitionNode #SmaCCGrammarDefinitionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCErrorNode #SmaCCDirectiveNode #SmaCCDirectiveNode nil nil #SmaCCScopeDirectiveNode #OrderedCollection #SmaCCScopeDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCSuperclassDirectiveNode #SmaCCAttributeDirectiveNode #OrderedCollection #OrderedCollection #SmaCCNodeNameDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #OrderedCollection #SmaCCIdDirectiveNode #OrderedCollection #SmaCCStartDirectiveNode #OrderedCollection #SmaCCFlagDirectiveNode #SmaCCIgnoreVariableDirectiveNode #OrderedCollection #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCTokenRuleNode nil nil #SmaCCToken #SmaCCRegexNode #SmaCCRegexNode #SmaCCProductionRuleNode nil nil #OrderedCollection #SmaCCProductionExpressionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCSymbolNode #SmaCCSymbolNode #SmaCCToken #SmaCCToken)
]

{ #category : #generated }
SmaCCDefinitionParser >> transitionTable [
^#(
#[1 0 6 0 25 0 9 0 26 0 10 0 32 0 13 0 42 0 17 0 43 0 21 0 44 0 25 0 45 0 21 0 46 0 33 0 48 0 21 0 73 0 41 0 74 0 45 0 76 0 21 0 79 0 53 0 89] 
#[1 0 14 0 25 0 14 0 26 0 18 0 31 0 57 0 80] 
#[0 0 0 0 88] 
#[1 0 6 0 25 0 9 0 26 0 10 0 32 0 61 0 44 0 25 0 45 0 61 0 46 0 33 0 48 0 61 0 73 0 41 0 74 0 45 0 76 0 61 0 79 0 22 0 88 0 53 0 89] 
#[0 0 26 0 25 0 26 0 32 0 88 0 89] 
#[0 0 30 0 25 0 26 0 32 0 88 0 89] 
#[0 0 34 0 25 0 26 0 32 0 88 0 89] 
#[0 0 65 0 32] 
#[0 0 34 0 25 0 26 0 32 0 88 0 89] 
#[0 0 69 0 25] 
#[1 0 6 0 25 0 45 0 26 0 77 0 73 0 41 0 74 0 45 0 76] 
#[0 0 34 0 25 0 26 0 32 0 88 0 89] 
#[1 0 38 0 25 0 38 0 26 0 38 0 32 0 81 0 33 0 38 0 88 0 38 0 89] 
#[0 0 85 0 31] 
#[0 0 42 0 25 0 26 0 32 0 88 0 89] 
#[1 0 89 0 8 0 93 0 9 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 13 0 113 0 14 0 117 0 15 0 121 0 16 0 125 0 17 0 129 0 18 0 133 0 19 0 137 0 20 0 141 0 21 0 46 0 22 0 145 0 23 0 149 0 47 0 153 0 49 0 149 0 50 0 149 0 52 0 149 0 53 0 149 0 54 0 149 0 55 0 149 0 58 0 149 0 59 0 149 0 60 0 149 0 61 0 149 0 62 0 149 0 64 0 149 0 66 0 149 0 68 0 149 0 69 0 149 0 71 0 149 0 72] 
#[0 0 221 0 31] 
#[0 0 14 0 25 0 26 0 33] 
#[0 0 50 0 25 0 26 0 32 0 88 0 89] 
#[0 0 54 0 25 0 26 0 32 0 88 0 89] 
#[1 0 58 0 1 0 58 0 6 0 58 0 7 0 58 0 25 0 58 0 26 0 58 0 27 0 58 0 29 0 58 0 33 0 58 0 39 0 225 0 82 0 229 0 83 0 233 0 84] 
#[1 0 62 0 26 0 62 0 33 0 237 0 51] 
#[1 0 62 0 26 0 62 0 33 0 241 0 51] 
#[0 0 245 0 26] 
#[0 0 249 0 26] 
#[0 0 253 0 26] 
#[0 1 1 0 26] 
#[0 1 5 0 26] 
#[1 1 9 0 6 1 13 0 25 1 17 0 26 1 21 0 27 1 25 0 63 1 29 0 87] 
#[1 1 9 0 6 1 13 0 25 1 17 0 26 1 21 0 27 1 33 0 63 1 29 0 87] 
#[1 1 9 0 6 1 13 0 25 1 17 0 26 1 21 0 27 1 37 0 63 1 29 0 87] 
#[1 1 41 0 25 1 45 0 65] 
#[1 1 49 0 26 1 53 0 67] 
#[0 0 66 0 33] 
#[0 0 70 0 33] 
#[0 0 74 0 33] 
#[1 0 46 0 33 1 57 0 49] 
#[0 1 61 0 22] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[1 1 65 0 1 1 69 0 25 1 73 0 26 1 77 0 32 1 81 0 34 1 85 0 35 1 89 0 37 1 93 0 38 1 97 0 77 1 101 0 78] 
#[1 1 105 0 7 0 82 0 33 1 109 0 81] 
#[0 0 86 0 2 0 7 0 33] 
#[1 1 113 0 1 0 90 0 2 1 9 0 6 0 90 0 7 1 13 0 25 1 17 0 26 1 21 0 27 1 117 0 29 0 90 0 33 1 121 0 39 1 125 0 85 1 125 0 86 1 133 0 87] 
#[1 1 137 0 26 0 94 0 33 1 137 0 76] 
#[1 1 137 0 26 0 98 0 33 1 137 0 76] 
#[0 0 102 0 33] 
#[0 1 141 0 1] 
#[0 1 145 0 1] 
#[0 0 106 0 33] 
#[0 0 110 0 33] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 30 0 33 0 39] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 30 0 33 0 39] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 30 0 33 0 39] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 30 0 33 0 39] 
#[1 1 9 0 6 1 13 0 25 1 17 0 26 1 21 0 27 0 130 0 33 1 149 0 87] 
#[0 0 134 0 6 0 25 0 26 0 27 0 33] 
#[1 1 9 0 6 1 13 0 25 1 17 0 26 1 21 0 27 0 138 0 33 1 149 0 87] 
#[1 1 9 0 6 1 13 0 25 1 17 0 26 1 21 0 27 0 142 0 33 1 149 0 87] 
#[0 0 146 0 25 0 33] 
#[1 1 153 0 25 0 150 0 33] 
#[0 0 154 0 26 0 33] 
#[1 1 157 0 26 0 158 0 33] 
#[0 1 161 0 33] 
#[1 1 165 0 26 1 169 0 70] 
#[1 1 65 0 1 1 69 0 25 1 73 0 26 1 77 0 32 1 81 0 34 1 85 0 35 1 89 0 37 1 93 0 38 1 173 0 77 1 101 0 78] 
#[0 0 162 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 166 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 170 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 170 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 174 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 170 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 170 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[1 1 65 0 1 1 177 0 7 1 69 0 25 1 73 0 26 1 77 0 32 0 178 0 33 1 81 0 34 1 85 0 35 1 89 0 37 1 93 0 38 1 181 0 75 1 185 0 78] 
#[1 0 182 0 1 0 182 0 2 1 189 0 3 1 193 0 4 1 197 0 5 0 182 0 7 0 182 0 25 0 182 0 26 0 182 0 32 0 182 0 33 0 182 0 34 0 182 0 35 1 201 0 36 0 182 0 37 0 182 0 38] 
#[1 0 58 0 1 0 58 0 2 0 58 0 6 0 58 0 7 0 58 0 25 0 58 0 26 0 58 0 27 0 58 0 29 0 58 0 33 0 58 0 39 1 205 0 83 0 233 0 84] 
#[0 1 209 0 33] 
#[1 0 58 0 1 0 58 0 2 0 58 0 6 0 58 0 7 0 58 0 25 0 58 0 26 0 58 0 27 0 58 0 29 0 58 0 39 1 213 0 82 0 229 0 83 0 233 0 84] 
#[0 0 186 0 2 0 7 0 33] 
#[1 1 217 0 26 1 221 0 40] 
#[1 0 190 0 1 0 190 0 2 1 225 0 3 1 229 0 4 1 233 0 5 0 190 0 6 0 190 0 7 0 190 0 25 0 190 0 26 0 190 0 27 0 190 0 29 0 190 0 33 0 190 0 39] 
#[0 0 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 33 0 39] 
#[1 0 198 0 1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 5 0 198 0 6 0 198 0 7 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 29 1 237 0 30 0 198 0 33 0 198 0 39] 
#[0 0 202 0 26 0 33] 
#[1 0 206 0 2 0 206 0 26 1 241 0 57] 
#[1 0 210 0 2 0 210 0 26 1 245 0 56] 
#[0 0 214 0 6 0 25 0 26 0 27 0 33] 
#[0 0 218 0 25 0 33] 
#[0 0 222 0 26 0 33] 
#[0 0 226 0 25 0 26 0 32 0 88 0 89] 
#[0 0 230 0 26 0 33] 
#[1 1 249 0 26 0 234 0 33] 
#[1 1 65 0 1 1 253 0 2 1 177 0 7 1 69 0 25 1 73 0 26 1 77 0 32 1 81 0 34 1 85 0 35 1 89 0 37 1 93 0 38 1 185 0 78] 
#[1 1 65 0 1 1 69 0 25 1 73 0 26 1 77 0 32 1 81 0 34 1 85 0 35 1 89 0 37 1 93 0 38 2 1 0 77 1 101 0 78] 
#[0 2 5 0 33] 
#[1 0 238 0 1 0 238 0 2 1 189 0 3 1 193 0 4 1 197 0 5 0 238 0 7 0 238 0 25 0 238 0 26 0 238 0 32 0 238 0 33 0 238 0 34 0 238 0 35 1 201 0 36 0 238 0 37 0 238 0 38] 
#[0 0 242 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 242 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 242 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 242 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 246 0 2 0 7 0 33] 
#[0 0 250 0 25 0 26 0 32 0 88 0 89] 
#[1 2 9 0 2 1 105 0 7] 
#[0 2 13 0 40] 
#[0 0 254 0 2 0 7 0 33] 
#[0 1 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 33 0 39] 
#[0 1 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 33 0 39] 
#[0 1 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 33 0 39] 
#[0 1 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 33 0 39] 
#[1 2 17 0 2 2 21 0 26] 
#[1 2 25 0 2 2 29 0 26] 
#[0 1 10 0 26 0 33] 
#[0 1 14 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[1 1 65 0 1 1 18 0 2 1 18 0 7 1 69 0 25 1 73 0 26 1 77 0 32 1 18 0 33 1 81 0 34 1 85 0 35 1 89 0 37 1 93 0 38 1 185 0 78] 
#[0 1 22 0 25 0 26 0 32 0 88 0 89] 
#[0 1 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 33 0 39] 
#[0 1 30 0 2 0 7 0 33] 
#[0 1 34 0 33] 
#[0 1 38 0 2 0 26] 
#[0 1 42 0 33] 
#[0 1 46 0 2 0 26]
	).
]

{ #category : #testing }
SmaCCDefinitionParser >> tryAllTokens [
	^ true
]
