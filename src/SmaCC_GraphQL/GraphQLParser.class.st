Class {
	#name : #GraphQLParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLParser class >> ambiguousTransitions [
^#(
#[ 0 146 1 129] 
#[ 0 154 1 181] 
#[ 0 158 1 197] 
#[ 0 174 1 197] 
#[ 0 214 1 129] 
#[ 0 222 2 201] 
#[ 0 226 1 181] 
#[ 0 234 1 197] 
#[ 0 238 1 197] 
#[ 1 6 1 197] 
#[ 1 10 1 197] 
#[ 1 78 1 129] 
#[ 1 82 1 181] 
#[ 1 86 1 197] 
#[ 1 94 1 197] 
#[ 1 118 1 129] 
#[ 1 126 1 181] 
#[ 1 134 1 197] 
#[ 1 146 1 197] 
#[ 1 150 1 197] 
#[ 1 197 1 198] 
#[ 1 197 1 222] 
#[ 1 129 2 46] 
#[ 1 181 2 54] 
#[ 1 197 2 62] 
#[ 1 197 2 66] 
#[ 1 197 2 78] 
#[ 1 197 2 82] 
#[ 1 197 2 218] 
#[ 1 197 2 234] 
#[ 1 197 3 94] 
#[ 1 197 3 106]
	).
]

{ #category : #'generated-accessing' }
GraphQLParser class >> cacheId [
	^'2022-11-07T12:04:50.960259-06:00'
]

{ #category : #generated }
GraphQLParser class >> definitionComment [
"# Converted to SmaCC from https://github.com/antlr/grammars-v4/blob/master/graphql/GraphQL.g4

/*
 The MIT License (MIT)

 Copyright (c) 2015 Joseph T. McBride

 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
 associated documentation files (the ""Software""), to deal in the Software without restriction,
 including without limitation the rights to use, copy, modify, merge, publish, distribute,
 sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all copies or
 substantial portions of the Software.

 THE SOFTWARE IS PROVIDED ""AS IS"", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
 NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
 DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT
 OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

 GraphQL grammar derived from:

 GraphQL Draft Specification - Oct 2021 upgraded from June 2018

 http://facebook.github.io/graphql/ https://github.com/facebook/graphql

 AB:10-sep19: replaced type with type_ to resolve conflict for golang generator

 AB: 13-oct-19: added type system as per June 2018 specs
 
 AB: 28-aug-22 made changes for 2021 (since 2018) specs
    

 */
%glr;
%hierarchy Type (ListType NamedType);
%hierarchy TypeDefinition (
	EnumTypeDefinition
	InputObjectTypeDefinition
	InterfaceTypeDefinition
	ObjectTypeDefinition
	ScalarTypeDefinition
	UnionTypeDefinition
	);
%hierarchy TypeExtension (
	EnumTypeExtension
	InputObjectTypeExtension
	InterfaceTypeExtension
	ObjectTypeExtension
	ScalarTypeExtension
	UnionTypeExtension
	);
%root Program;
%prefix GraphQL;
%suffix Node;
/*grammar GraphQL;*/

#https://spec.graphql.org/October2021/#sec-Document
document: <UNICODE_BOM> 'bom'? definition 'definition'+  {{}};

definition:
	executableDocument  # deviation from 2018 (new)
	| typeSystemDocument #https://spec.graphql.org/October2021/#TypeSystemDocument (new in 2021)
	| typeSystemExtensionDocument; #https://spec.graphql.org/October2021/#TypeSystemExtensionDocument (new in 2021)

#https://spec.graphql.org/October2021/#ExecutableDocument
executableDocument: executableDefinition;  #(new) 2021

#https://spec.graphql.org/October2021/#ExecutableDefinition
executableDefinition: operationDefinition | fragmentDefinition;

#https://spec.graphql.org/October2021/#sec-Language.Operations
operationDefinition:
	operationType 'type' name 'name'? variableDefinitions? directives? selectionSet {{}}
	| selectionSet {{}}
	;

operationType: ""query"" | ""mutation"" | ""subscription"";

#https://spec.graphql.org/October2021/#sec-Selection-Sets
selectionSet: ""{"" 'leftBrace' selection 'selection'+ ""}"" 'rightBrace';

selection: field
    | fragmentSpread
    | inlineFragment
    ;
#https://spec.graphql.org/October2021/#sec-Language.Fields
field: alias? name 'name' arguments? directives? selectionSet? {{}};

#https://spec.graphql.org/October2021/#sec-Language.Arguments
arguments: ""("" 'leftParen' argument 'argument'+ "")"" 'rightParen';
argument: name 'name' "":"" 'colonToken' value 'value' {{}};

#https://spec.graphql.org/October2021/#sec-Field-Alias
alias: name 'alias' "":"" 'colonToken';

#https://spec.graphql.org/October2021/#sec-Language.Fragments
fragmentSpread: ""..."" 'ellipsisToken' fragmentName 'name' directives? {{}};
fragmentDefinition:
	""fragment"" 'fragmentToken' fragmentName 'name' typeCondition directives? selectionSet {{}};
fragmentName: name; # except on

#https://spec.graphql.org/October2021/#sec-Type-Conditions
typeCondition: ""on"" 'onToken' namedType 'type';

#https://spec.graphql.org/October2021/#sec-Inline-Fragments
inlineFragment:	""..."" 'ellipsisToken' typeCondition? directives? selectionSet {{}};

#https://spec.graphql.org/October2021/#sec-Input-Values
value:
	 variable
	| intValue 'value' {{Literal}}
	| floatValue 'value' {{Literal}}
	| stringValue 'value' {{Literal}}
	| booleanValue 'value' {{Literal}}
	| nullValue 'value' {{Literal}}
	| enumValue
	| listValue
	| objectValue
   ;

#https://spec.graphql.org/October2021/#sec-Int-Value
intValue: <INT>;

#https://spec.graphql.org/October2021/#sec-Float-Value
floatValue: <FLOAT>;

#https://spec.graphql.org/October2021/#sec-Boolean-Value
booleanValue
	:	""true""
	|	""false""
	;

#https://spec.graphql.org/October2021/#sec-String-Value
stringValue : <STRING> | <BLOCK_STRING>;

#https://spec.graphql.org/October2021/#sec-Null-Value
nullValue: ""null"";

#https://spec.graphql.org/October2021/#sec-Enum-Value
enumValue: name 'name' {{}}; #{ not (nullValue | booleanValue) };

#https://spec.graphql.org/October2021/#sec-List-Value
listValue: ""["" 'leftBracket' ""]"" 'rightBracket' {{}}
    | ""["" 'leftBracket' value 'value'+ ""]"" 'rightBracket' {{}}
    ;

#https://spec.graphql.org/October2021/#sec-Input-Object-Values
objectValue: ""{"" 'leftBrace' objectField 'field'* ""}"" 'rightBrace' {{}};

objectField: name 'name' "":"" 'colonToken' value 'value' {{}};

#https://spec.graphql.org/October2021/#sec-Language.Variables
variable: ""$"" 'dollarToken' name 'name' {{}};
variableDefinitions: ""("" 'leftParen' variableDefinition 'variableDefinition'+ "")"" 'rightParen';
variableDefinition: variable 'variable' "":"" 'colonToken' type_ 'type' defaultValue? {{}};
defaultValue: ""="" 'equalToken' value 'value';

#https://spec.graphql.org/October2021/#sec-Type-References
type_: namedType ""!"" 'bangToken'? {{Type}}
    | listType ""!"" 'bangToken'? {{Type}}
    ;

namedType: name 'name' {{}};
listType: ""["" 'leftBracket' type_ 'type' ""]"" 'rightBracket' {{}};


#https://spec.graphql.org/October2021/#sec-Language.Directives
directives:  directive 'directive'+;
directive: ""@"" 'atToken' name 'name' arguments? {{}};

# https://spec.graphql.org/October2021/#sec-Type-System
# deviation from 2018 specs. Added type system document
#https://spec.graphql.org/October2021/#TypeSystemDocument (new in 2021)
typeSystemDocument: typeSystemDefinition;
typeSystemDefinition: schemaDefinition
	| typeDefinition
	| directiveDefinition
	;

# https://spec.graphql.org/October2021/#TypeSystemExtensionDocument (new in 2021)
typeSystemExtensionDocument: typeSystemExtension;

#https://spec.graphql.org/October2021/#sec-Type-System-Extensions
typeSystemExtension: schemaExtension
    | typeExtension
    ;

# https://spec.graphql.org/October2021/#sec-Schema
schemaDefinition:
	 ""schema"" 'schemaToken' directives? ""{"" 'leftBrace' rootOperationTypeDefinition+ ""}"" 'rightBrace' {{}};

rootOperationTypeDefinition: operationType 'operationType' "":"" 'colonToken' namedType 'type';


#https://spec.graphql.org/October2021/#sec-Schema-Extension (deviation from 2018)
schemaExtension:
    ""extend"" 'extendToken' ""schema"" 'schemaToken' directives? ""{"" 'leftBrace' rootOperationTypeDefinition+ ""}"" 'rightBrace' {{}} #(new 2021)
    | ""extend"" 'extendToken' ""schema"" 'schemaToken' directives {{}}
    ;

#https://spec.graphql.org/June2018/#OperationTypeDefinition
#operationTypeDefinition: operationType ':' namedType; //removed in 2021



#https://spec.graphql.org/June2018/#sec-Descriptions
description: stringValue;

#https://spec.graphql.org/October2021/#sec-Types
typeDefinition:
	scalarTypeDefinition
	| objectTypeDefinition
	| interfaceTypeDefinition
	| unionTypeDefinition
	| enumTypeDefinition
	| inputObjectTypeDefinition;

#https://spec.graphql.org/June2018/#sec-Type-Extensions
typeExtension : scalarTypeExtension
    | objectTypeExtension
    | interfaceTypeExtension
    | unionTypeExtension
    | enumTypeExtension
    | inputObjectTypeExtension
    ;

#https://spec.graphql.org/October2021/#sec-Scalars
scalarTypeDefinition: description 'description'? ""scalar"" 'scalarToken' name 'name' directives? {{}};

#https://spec.graphql.org/October2021/#sec-Scalar-Extensions
scalarTypeExtension:  ""extend"" 'extendToken' ""scalar"" 'scalarToken' name 'name' directives {{}};

# https://spec.graphql.org/October2021/#sec-Objects
objectTypeDefinition :
    description 'description'?   ""type"" 'typeToken' name 'name' implementsInterfaces?  directives? fieldsDefinition? {{}};

implementsInterfaces: ""implements"" 'implementsToken' ""&"" 'ampToken'? namedType 'type'
    | implementsInterfaces ""&"" 'ampToken' namedType 'type'
    ;


fieldsDefinition: ""{"" 'leftBrace'  fieldDefinition 'definition'+ ""}"" 'rightBrace';
fieldDefinition: description 'description'? name 'name'  argumentsDefinition? "":"" 'colonToken' type_ 'type'  directives? {{}};

#https://spec.graphql.org/October2021/#sec-Field-Arguments
argumentsDefinition: ""("" 'leftParen' inputValueDefinition 'definition'+ "")"" 'rightParen';
inputValueDefinition:  description 'description'? name 'name' "":"" 'colonToken' type_ 'type' defaultValue? directives? {{}};

#https://spec.graphql.org/October2021/#sec-Object-Extensions
objectTypeExtension:
    ""extend"" 'extendToken' ""type"" 'typeToken' name 'name' implementsInterfaces? directives? fieldsDefinition {{}}
    | ""extend"" 'extendToken' ""type"" 'typeToken' name 'name' implementsInterfaces? directives {{}}
    | ""extend"" 'extendToken' ""type"" 'typeToken' name 'name' implementsInterfaces {{}}
    ;

#https://spec.graphql.org/October2021/#sec-Interfaces  (deviation from 2018)
interfaceTypeDefinition: description 'description'? ""interface"" 'interfaceToken' name 'name' implementsInterfaces? directives? fieldsDefinition? {{}};

#https://spec.graphql.org/October2021/#sec-Interface-Extensions (deviation from 2018)
interfaceTypeExtension:  ""extend"" 'extendToken' ""interface"" 'interfaceToken' name 'name' implementsInterfaces? directives? fieldsDefinition {{}}
    | ""extend"" 'extendToken' ""interface"" 'interfaceToken' name 'name'  implementsInterfaces? directives {{}}
    ;

#https://spec.graphql.org/October2021/#sec-Unions
unionTypeDefinition:  description 'description'? ""union"" 'unionToken' name 'name' directives? unionMemberTypes? {{}};
unionMemberTypes: ""="" 'equalToken' ""|"" 'barToken'?  namedType 'type' (""|"" 'barToken'namedType 'type')* ;

#https://spec.graphql.org/October2021/#sec-Union-Extensions
unionTypeExtension : ""extend"" 'extendToken' ""union"" 'unionToken' name 'name' directives? unionMemberTypes {{}}
    | ""extend"" 'extendToken' ""union"" 'unionToken' name 'name' directives {{}}
    ;

#https://spec.graphql.org/October2021/#sec-Enums
enumTypeDefinition:  description 'description'? ""enum"" 'enumToken' name 'name' directives? enumValuesDefinition? {{}};
enumValuesDefinition: ""{"" 'leftBrace' enumValueDefinition 'definition'+  ""}"" 'rightBrace';
enumValueDefinition: description 'description'? enumValue 'value'  directives? {{}};

#https://spec.graphql.org/October2021/#sec-Enum-Extensions
enumTypeExtension: ""extend"" 'extendToken' ""enum"" 'enumToken' name 'name' directives? enumValuesDefinition {{}}
    | ""extend"" 'extendToken' ""enum"" 'enumToken' name 'name' directives {{}}
    ;

#https://spec.graphql.org/October2021/#sec-Input-Objects
inputObjectTypeDefinition: description 'description'? ""input"" 'inputToken' name 'name' directives? inputFieldsDefinition? {{}};
inputFieldsDefinition: ""{"" 'leftBrace' inputValueDefinition 'definition'+ ""}"" 'rightBrace';

#https://spec.graphql.org/June2018/#sec-Input-Object-Extensions
inputObjectTypeExtension:  ""extend"" 'extendToken' ""input"" 'inputToken' name 'name' directives? inputFieldsDefinition {{}}
    | ""extend"" 'extendToken' ""input"" 'inputToken' name 'name' directives {{}}
    ;

#https://spec.graphql.org/October2021/#sec-Type-System.Directives (new 2021, repeatable )
directiveDefinition: description 'description'? ""directive"" 'directiveToken' ""@"" 'atToken' name 'name' argumentsDefinition? ""repeatable"" 'repeatableToken'? ""on"" 'onToken' directiveLocations {{}};
directiveLocations: directiveLocation 'location' (""|"" 'barToken' directiveLocation 'location')*;
directiveLocation: executableDirectiveLocation | typeSystemDirectiveLocation;

executableDirectiveLocation:
     ""QUERY""
    | ""MUTATION""
    | ""SUBSCRIPTION""
    | ""FIELD""
    | ""FRAGMENT_DEFINITION""
    | ""FRAGMENT_SPREAD""
    | ""INLINE_FRAGMENT""
    | ""VARIABLE_DEFINITION""   # new 2021
    ;

typeSystemDirectiveLocation:
     ""SCHEMA""
    | ""SCALAR""
    | ""OBJECT""
    | ""FIELD_DEFINITION""
    | ""ARGUMENT_DEFINITION""
    | ""INTERFACE""
    | ""UNION""
    | ""ENUM""
    | ""ENUM_VALUE""
    | ""INPUT_OBJECT""
    | ""INPUT_FIELD_DEFINITION""
    ;

#https://spec.graphql.org/October2021/#sec-Names
name: <NAME>;

#https://spec.graphql.org/October2021/#sec-Language.Source-Text.Lexical-Tokens
#Start lexer
<NAME>: [_A-Za-z] [_0-9A-Za-z]*;

<CHARACTER>: ( <ESC> | [^\""\\]);
<STRING>: \"" <CHARACTER>* \"";

<BLOCK_STRING>
    :   \""\""\"" (([^\""\\] | (\\ .)) | (\""{1,2} ([^\""\\] | (\\ .))))* \""\""\""
    ;

<ID>: <STRING>;

#https://spec.graphql.org/October2021/#EscapedCharacter
<ESC>: \\ ( [\""\\\/bfnrt] | <UNICODE>);

<UNICODE>: u <HEX> <HEX> <HEX> <HEX>;

<HEX>: [0-9a-fA-F];

<NONZERO_DIGIT>: [1-9];
<DIGIT>: [0-9];
<FRACTIONAL_PART>: \. <DIGIT>+;
<EXPONENTIAL_PART>: <EXPONENT_INDICATOR> <SIGN>? <DIGIT>+;
<EXPONENT_INDICATOR>: [eE];
<SIGN>: [\+\-];
<NEGATIVE_SIGN>: \-;

#https://spec.graphql.org/October2021/#sec-Float-Value
<FLOAT>: <INT> <FRACTIONAL_PART>
    | <INT> <EXPONENTIAL_PART>
    | <INT> <FRACTIONAL_PART> <EXPONENTIAL_PART>
    ;

<INT>: <NEGATIVE_SIGN>? 0
    | <NEGATIVE_SIGN>? <NONZERO_DIGIT> <DIGIT>*
    ;

#https://spec.graphql.org/October2021/#Punctuator
<PUNCTUATOR>: \!
    | \$
    | \( | \)
    | \.\.\.
    | \:
    | \=
    | \@
    | \[ | \]
    | \{ | \}
    | \|
    ;

# no leading zeros

<EXP>: [Ee] [\+\-]? <INT>;

#https://spec.graphql.org/October2021/#sec-Language.Source-Text.Ignored-Tokens

# \- since - means ""range"" inside [...]

<whitespace>: [\ \t\n\r]+ ;
<COMMA>: \,;
<comment>
    :   \# [^\r\n]*
    | <COMMA>	# added here so we can ignore, but also record it
    ;

<UNICODE_BOM>: (<UTF8_BOM>
    | <UTF16_BOM>
    | <UTF32_BOM>
    )
    ;

<UTF8_BOM>: \xEFBBBF;
<UTF16_BOM>: \xFEFF;
<UTF32_BOM>: \x0000FEFF;"
]

{ #category : #accessing }
GraphQLParser class >> fileExtension [
	^ '.graphql'
]

{ #category : #generated }
GraphQLParser class >> reduceTable [
^#(
	#(68 1 #liftFirstValue: 2904066 false) 
	#(68 1 #liftFirstValue: 2904065 false) 
	#(68 1 #liftFirstValue: 2904067 false) 
	#(86 1 #liftFirstValue: 4734977 false) 
	#(86 1 #liftFirstValue: 4734978 false) 
	#(62 1 #reduceActionFordocument1: 2118657 false) 
	#(63 1 #reduceActionFordefinition__definition__1: 2150401 false) 
	#(64 1 #liftFirstValue: 2184193 false) 
	#(65 1 #liftFirstValue: 2519041 false) 
	#(66 1 #liftFirstValue: 2637825 false) 
	#(67 1 #reduceActionForoperationDefinition9: 2768905 false) 
	#(66 1 #liftFirstValue: 2637826 false) 
	#(113 1 #liftFirstValue: 7504897 false) 
	#(64 1 #liftFirstValue: 2184194 false) 
	#(105 1 #liftFirstValue: 6312961 false) 
	#(64 1 #liftFirstValue: 2184195 false) 
	#(107 1 #liftFirstValue: 6525953 false) 
	#(106 1 #liftFirstValue: 6355969 false) 
	#(108 1 #liftFirstValue: 6645761 false) 
	#(106 1 #liftFirstValue: 6355970 false) 
	#(108 1 #liftFirstValue: 6645762 false) 
	#(114 1 #liftFirstValue: 7582721 false) 
	#(115 1 #liftFirstValue: 7809025 false) 
	#(114 1 #liftFirstValue: 7582722 false) 
	#(115 1 #liftFirstValue: 7809026 false) 
	#(114 1 #liftFirstValue: 7582723 false) 
	#(115 1 #liftFirstValue: 7809027 false) 
	#(114 1 #liftFirstValue: 7582724 false) 
	#(115 1 #liftFirstValue: 7809028 false) 
	#(114 1 #liftFirstValue: 7582725 false) 
	#(115 1 #liftFirstValue: 7809029 false) 
	#(114 1 #liftFirstValue: 7582726 false) 
	#(115 1 #liftFirstValue: 7809030 false) 
	#(106 1 #liftFirstValue: 6355971 false) 
	#(149 1 #liftFirstValue: 12873729 false) 
	#(134 2 #reduceActionForenumTypeDefinition1: 10747905 false) 
	#(79 1 #liftFirstValue: 3837953 false) 
	#(139 2 #reduceActionForinputObjectTypeDefinition1: 11368449 false) 
	#(127 2 #reduceActionForinterfaceTypeDefinition1: 9644033 false) 
	#(116 2 #reduceActionForscalarTypeDefinition1: 8043521 false) 
	#(102 1 #reduceActionFordirectives1: 6030337 false) 
	#(103 1 #reduceActionFordefinition__definition__1: 6043649 false) 
	#(118 2 #reduceActionForobjectTypeDefinition1: 8365057 false) 
	#(129 2 #reduceActionForunionTypeDefinition1: 10206209 false) 
	#(70 1 #reduceActionFordefinition__definition__1: 3050497 false) 
	#(71 1 #liftFirstValue: 3093505 false) 
	#(71 1 #liftFirstValue: 3093506 false) 
	#(71 1 #liftFirstValue: 3093507 false) 
	#(72 1 #reduceActionForfield1: 3220481 false) 
	#(62 2 #reduceActionFordocument2: 2118658 false) 
	#(63 2 #reduceActionFordefinition__definition__2: 2150402 false) 
	#(67 2 #reduceActionForoperationDefinition1: 2768897 false) 
	#(134 3 #reduceActionForenumTypeDefinition3: 10747907 false) 
	#(134 3 #reduceActionForenumTypeDefinition2: 10747906 false) 
	#(112 3 #reduceActionForschemaExtension3: 7072771 false) 
	#(139 3 #reduceActionForinputObjectTypeDefinition3: 11368451 false) 
	#(139 3 #reduceActionForinputObjectTypeDefinition2: 11368450 false) 
	#(127 3 #reduceActionForinterfaceTypeDefinition3: 9644035 false) 
	#(127 3 #reduceActionForinterfaceTypeDefinition5: 9644037 false) 
	#(127 3 #reduceActionForinterfaceTypeDefinition2: 9644034 false) 
	#(116 3 #reduceActionForscalarTypeDefinition2: 8043522 false) 
	#(104 2 #reduceActionFordirective1: 6068225 false) 
	#(110 1 #reduceActionForrootOperationTypeDefinition_1: 6836225 false) 
	#(103 2 #reduceActionFordefinition__definition__2: 6043650 false) 
	#(118 3 #reduceActionForobjectTypeDefinition3: 8365059 false) 
	#(118 3 #reduceActionForobjectTypeDefinition5: 8365061 false) 
	#(118 3 #reduceActionForobjectTypeDefinition2: 8365058 false) 
	#(129 3 #reduceActionForunionTypeDefinition3: 10206211 false) 
	#(129 3 #reduceActionForunionTypeDefinition2: 10206210 false) 
	#(81 2 #reduceActionForinlineFragment1: 4043777 false) 
	#(77 2 #reduceActionForfragmentSpread1: 3644417 false) 
	#(69 3 #reduceActionForselectionSet1: 3019777 false) 
	#(70 2 #reduceActionFordefinition__definition__2: 3050498 false) 
	#(72 2 #reduceActionForfield9: 3220489 false) 
	#(76 2 #reduceActionForalias1: 3540993 false) 
	#(72 2 #reduceActionForfield2: 3220482 false) 
	#(72 2 #reduceActionForfield5: 3220485 false) 
	#(72 2 #reduceActionForfield3: 3220483 false) 
	#(96 1 #reduceActionFordefinition__definition__1: 5512193 false) 
	#(67 3 #reduceActionForoperationDefinition3: 2768899 false) 
	#(67 3 #reduceActionForoperationDefinition2: 2768898 false) 
	#(67 3 #reduceActionForoperationDefinition5: 2768901 false) 
	#(134 3 #reduceActionForenumTypeDefinition5: 10747909 false) 
	#(139 3 #reduceActionForinputObjectTypeDefinition5: 11368453 false) 
	#(127 3 #reduceActionForinterfaceTypeDefinition9: 9644041 false) 
	#(116 3 #reduceActionForscalarTypeDefinition3: 8043523 false) 
	#(118 3 #reduceActionForobjectTypeDefinition9: 8365065 false) 
	#(129 3 #reduceActionForunionTypeDefinition5: 10206213 false) 
	#(137 1 #reduceActionForenumValueDefinition1: 10962945 false) 
	#(136 1 #reduceActionFordefinition__definition__1: 10908673 false) 
	#(88 1 #reduceActionForenumValue1: 4909057 false) 
	#(134 4 #reduceActionForenumTypeDefinition4: 10747908 false) 
	#(138 4 #reduceActionForenumTypeExtension3: 11111427 false) 
	#(138 4 #reduceActionForenumTypeExtension1: 11111425 false) 
	#(141 4 #reduceActionForinputObjectTypeExtension3: 11660291 false) 
	#(141 4 #reduceActionForinputObjectTypeExtension1: 11660289 false) 
	#(128 4 #reduceActionForinterfaceTypeExtension5: 9887749 false) 
	#(128 4 #reduceActionForinterfaceTypeExtension1: 9887745 false) 
	#(117 4 #reduceActionForscalarTypeExtension1: 8211457 false) 
	#(126 4 #reduceActionForobjectTypeExtension5: 9231365 false) 
	#(126 4 #reduceActionForobjectTypeExtension7: 9231367 false) 
	#(126 4 #reduceActionForobjectTypeExtension1: 9231361 false) 
	#(133 4 #reduceActionForunionTypeExtension3: 10497027 false) 
	#(133 4 #reduceActionForunionTypeExtension1: 10497025 false) 
	#(80 2 #reduceActionForalias1: 3932161 false) 
	#(100 1 #reduceActionFornamedType1: 5866497 false) 
	#(78 4 #reduceActionForfragmentDefinition1: 3722241 false) 
	#(124 1 #reduceActionFordefinition__definition__1: 8986625 false) 
	#(139 4 #reduceActionForinputObjectTypeDefinition4: 11368452 false) 
	#(119 2 #reduceActionForimplementsInterfaces1: 8515585 false) 
	#(121 1 #reduceActionFordefinition__definition__1: 8708097 false) 
	#(127 4 #reduceActionForinterfaceTypeDefinition4: 9644036 false) 
	#(127 4 #reduceActionForinterfaceTypeDefinition7: 9644039 false) 
	#(127 4 #reduceActionForinterfaceTypeDefinition6: 9644038 false) 
	#(104 3 #reduceActionFordirective2: 6068226 false) 
	#(109 4 #reduceActionForschemaDefinition1: 6763521 false) 
	#(110 2 #reduceActionForrootOperationTypeDefinition_2: 6836226 false) 
	#(118 4 #reduceActionForobjectTypeDefinition4: 8365060 false) 
	#(118 4 #reduceActionForobjectTypeDefinition7: 8365063 false) 
	#(118 4 #reduceActionForobjectTypeDefinition6: 8365062 false) 
	#(132 0 #reduceActionFor______barToken_namedType__type___1: 10397697 false) 
	#(129 4 #reduceActionForunionTypeDefinition4: 10206212 false) 
	#(77 3 #reduceActionForfragmentSpread2: 3644418 false) 
	#(81 3 #reduceActionForinlineFragment3: 4043779 false) 
	#(81 3 #reduceActionForinlineFragment2: 4043778 false) 
	#(72 3 #reduceActionForfield10: 3220490 false) 
	#(72 3 #reduceActionForfield13: 3220493 false) 
	#(72 3 #reduceActionForfield11: 3220491 false) 
	#(74 1 #reduceActionFordefinition__definition__1: 3383297 false) 
	#(72 3 #reduceActionForfield6: 3220486 false) 
	#(72 3 #reduceActionForfield7: 3220487 false) 
	#(72 3 #reduceActionForfield4: 3220484 false) 
	#(94 2 #reduceActionForvariable1: 5427201 false) 
	#(95 3 #reduceActionForselectionSet1: 5474305 false) 
	#(96 2 #reduceActionFordefinition__definition__2: 5512194 false) 
	#(67 4 #reduceActionForoperationDefinition4: 2768900 false) 
	#(67 4 #reduceActionForoperationDefinition7: 2768903 false) 
	#(67 4 #reduceActionForoperationDefinition6: 2768902 false) 
	#(134 4 #reduceActionForenumTypeDefinition7: 10747911 false) 
	#(134 4 #reduceActionForenumTypeDefinition6: 10747910 false) 
	#(139 4 #reduceActionForinputObjectTypeDefinition7: 11368455 false) 
	#(139 4 #reduceActionForinputObjectTypeDefinition6: 11368454 false) 
	#(127 4 #reduceActionForinterfaceTypeDefinition11: 9644043 false) 
	#(127 4 #reduceActionForinterfaceTypeDefinition13: 9644045 false) 
	#(127 4 #reduceActionForinterfaceTypeDefinition10: 9644042 false) 
	#(116 4 #reduceActionForscalarTypeDefinition4: 8043524 false) 
	#(118 4 #reduceActionForobjectTypeDefinition11: 8365067 false) 
	#(118 4 #reduceActionForobjectTypeDefinition13: 8365069 false) 
	#(118 4 #reduceActionForobjectTypeDefinition10: 8365066 false) 
	#(129 4 #reduceActionForunionTypeDefinition7: 10206215 false) 
	#(129 4 #reduceActionForunionTypeDefinition6: 10206214 false) 
	#(148 1 #liftFirstValue: 12568581 false) 
	#(148 1 #liftFirstValue: 12568584 false) 
	#(148 1 #liftFirstValue: 12568585 false) 
	#(147 1 #liftFirstValue: 12345348 false) 
	#(148 1 #liftFirstValue: 12568580 false) 
	#(147 1 #liftFirstValue: 12345349 false) 
	#(147 1 #liftFirstValue: 12345350 false) 
	#(147 1 #liftFirstValue: 12345351 false) 
	#(148 1 #liftFirstValue: 12568587 false) 
	#(148 1 #liftFirstValue: 12568586 false) 
	#(148 1 #liftFirstValue: 12568582 false) 
	#(147 1 #liftFirstValue: 12345346 false) 
	#(148 1 #liftFirstValue: 12568579 false) 
	#(147 1 #liftFirstValue: 12345345 false) 
	#(148 1 #liftFirstValue: 12568578 false) 
	#(148 1 #liftFirstValue: 12568577 false) 
	#(147 1 #liftFirstValue: 12345347 false) 
	#(148 1 #liftFirstValue: 12568583 false) 
	#(147 1 #liftFirstValue: 12345352 false) 
	#(142 5 #reduceActionFordirectiveDefinition1: 11964417 false) 
	#(145 0 #reduceActionFor______barToken_namedType__type___1: 12215297 false) 
	#(146 1 #liftFirstValue: 12264449 false) 
	#(146 1 #liftFirstValue: 12264450 false) 
	#(137 2 #reduceActionForenumValueDefinition2: 10962946 false) 
	#(137 2 #reduceActionForenumValueDefinition3: 10962947 false) 
	#(135 3 #reduceActionForselectionSet1: 10869761 false) 
	#(136 2 #reduceActionFordefinition__definition__2: 10908674 false) 
	#(138 5 #reduceActionForenumTypeExtension2: 11111426 false) 
	#(141 5 #reduceActionForinputObjectTypeExtension2: 11660290 false) 
	#(128 5 #reduceActionForinterfaceTypeExtension2: 9887746 false) 
	#(128 5 #reduceActionForinterfaceTypeExtension6: 9887750 false) 
	#(128 5 #reduceActionForinterfaceTypeExtension3: 9887747 false) 
	#(112 5 #reduceActionForschemaExtension1: 7072769 false) 
	#(126 5 #reduceActionForobjectTypeExtension2: 9231362 false) 
	#(126 5 #reduceActionForobjectTypeExtension6: 9231366 false) 
	#(126 5 #reduceActionForobjectTypeExtension3: 9231363 false) 
	#(133 5 #reduceActionForunionTypeExtension2: 10497026 false) 
	#(78 5 #reduceActionForfragmentDefinition2: 3722242 false) 
	#(140 3 #reduceActionForselectionSet1: 11499521 false) 
	#(124 2 #reduceActionFordefinition__definition__2: 8986626 false) 
	#(119 3 #reduceActionForimplementsInterfaces2: 8515586 false) 
	#(120 3 #reduceActionForselectionSet1: 8672257 false) 
	#(121 2 #reduceActionFordefinition__definition__2: 8708098 false) 
	#(119 3 #reduceActionForimplementsInterfaces3: 8515587 false) 
	#(127 5 #reduceActionForinterfaceTypeDefinition8: 9644040 false) 
	#(111 3 #reduceActionForrootOperationTypeDefinition1: 6890497 false) 
	#(109 5 #reduceActionForschemaDefinition2: 6763522 false) 
	#(118 5 #reduceActionForobjectTypeDefinition8: 8365064 false) 
	#(130 3 #reduceActionForunionMemberTypes1: 10327041 false) 
	#(81 4 #reduceActionForinlineFragment4: 4043780 false) 
	#(72 4 #reduceActionForfield14: 3220494 false) 
	#(72 4 #reduceActionForfield15: 3220495 false) 
	#(72 4 #reduceActionForfield12: 3220492 false) 
	#(73 3 #reduceActionForselectionSet1: 3355649 false) 
	#(74 2 #reduceActionFordefinition__definition__2: 3383298 false) 
	#(72 4 #reduceActionForfield8: 3220488 false) 
	#(97 3 #reduceActionForvariableDefinition1: 5572609 false) 
	#(99 1 #reduceActionFordirectives1: 5773313 false) 
	#(99 1 #reduceActionFordirectives1: 5773315 false) 
	#(67 5 #reduceActionForoperationDefinition8: 2768904 false) 
	#(134 5 #reduceActionForenumTypeDefinition8: 10747912 false) 
	#(139 5 #reduceActionForinputObjectTypeDefinition8: 11368456 false) 
	#(127 5 #reduceActionForinterfaceTypeDefinition12: 9644044 false) 
	#(127 5 #reduceActionForinterfaceTypeDefinition15: 9644047 false) 
	#(127 5 #reduceActionForinterfaceTypeDefinition14: 9644046 false) 
	#(118 5 #reduceActionForobjectTypeDefinition12: 8365068 false) 
	#(118 5 #reduceActionForobjectTypeDefinition15: 8365071 false) 
	#(118 5 #reduceActionForobjectTypeDefinition14: 8365070 false) 
	#(129 5 #reduceActionForunionTypeDefinition8: 10206216 false) 
	#(123 3 #reduceActionForselectionSet1: 8948737 false) 
	#(143 2 #reduceActionFordirectiveLocations1: 12165121 false) 
	#(142 6 #reduceActionFordirectiveDefinition2: 11964418 false) 
	#(142 6 #reduceActionFordirectiveDefinition3: 11964419 false) 
	#(137 3 #reduceActionForenumValueDefinition4: 10962948 false) 
	#(128 6 #reduceActionForinterfaceTypeExtension4: 9887748 false) 
	#(112 6 #reduceActionForschemaExtension2: 7072770 false) 
	#(126 6 #reduceActionForobjectTypeExtension4: 9231364 false) 
	#(125 3 #reduceActionForinputValueDefinition1: 9040897 false) 
	#(122 3 #reduceActionForfieldDefinition1: 8757249 false) 
	#(130 4 #reduceActionForunionMemberTypes2: 10327042 false) 
	#(132 2 #reduceActionFor______barToken_namedType__type___2: 10397698 false) 
	#(72 5 #reduceActionForfield16: 3220496 false) 
	#(85 1 #liftFirstValue: 4638722 false) 
	#(87 1 #liftFirstValue: 4833281 false) 
	#(85 1 #liftFirstValue: 4638721 false) 
	#(92 0 #reduceActionForobjectField__field__1: 5253121 false) 
	#(84 1 #liftFirstValue: 4557825 false) 
	#(83 1 #liftFirstValue: 4483073 false) 
	#(75 3 #reduceActionForargument1: 3423233 false) 
	#(82 1 #reduceActionForvalue2: 4188162 false) 
	#(82 1 #reduceActionForvalue2: 4188163 false) 
	#(82 1 #reduceActionForvalue2: 4188165 false) 
	#(82 1 #reduceActionForvalue2: 4188164 false) 
	#(82 1 #reduceActionForvalue2: 4188166 false) 
	#(82 1 #liftFirstValue: 4188167 false) 
	#(82 1 #liftFirstValue: 4188168 false) 
	#(82 1 #liftFirstValue: 4188169 false) 
	#(82 1 #liftFirstValue: 4188161 false) 
	#(97 4 #reduceActionForvariableDefinition2: 5572610 false) 
	#(99 2 #reduceActionFortype_2: 5773314 false) 
	#(99 2 #reduceActionFortype_2: 5773316 false) 
	#(142 6 #reduceActionFordirectiveDefinition5: 11964421 false) 
	#(127 6 #reduceActionForinterfaceTypeDefinition16: 9644048 false) 
	#(118 6 #reduceActionForobjectTypeDefinition16: 8365072 false) 
	#(145 2 #reduceActionFor______barToken_namedType__type___2: 12215298 false) 
	#(142 7 #reduceActionFordirectiveDefinition4: 11964420 false) 
	#(125 4 #reduceActionForinputValueDefinition5: 9040901 false) 
	#(125 4 #reduceActionForinputValueDefinition3: 9040899 false) 
	#(125 4 #reduceActionForinputValueDefinition2: 9040898 false) 
	#(122 4 #reduceActionForfieldDefinition5: 8757253 false) 
	#(122 4 #reduceActionForfieldDefinition2: 8757250 false) 
	#(122 4 #reduceActionForfieldDefinition3: 8757251 false) 
	#(131 2 #reduceActionForalias1: 10397697 false) 
	#(89 2 #reduceActionForlistValue1: 5032961 false) 
	#(90 1 #reduceActionFordefinition__definition__1: 5111809 false) 
	#(101 3 #reduceActionForlistType1: 5896193 false) 
	#(98 2 #reduceActionForalias1: 5664769 false) 
	#(142 7 #reduceActionFordirectiveDefinition6: 11964422 false) 
	#(142 7 #reduceActionFordirectiveDefinition7: 11964423 false) 
	#(144 2 #reduceActionForalias1: 12215297 false) 
	#(125 5 #reduceActionForinputValueDefinition7: 9040903 false) 
	#(125 5 #reduceActionForinputValueDefinition6: 9040902 false) 
	#(125 5 #reduceActionForinputValueDefinition4: 9040900 false) 
	#(122 5 #reduceActionForfieldDefinition6: 8757254 false) 
	#(122 5 #reduceActionForfieldDefinition7: 8757255 false) 
	#(122 5 #reduceActionForfieldDefinition4: 8757252 false) 
	#(89 3 #reduceActionForlistValue2: 5032962 false) 
	#(90 2 #reduceActionFordefinition__definition__2: 5111810 false) 
	#(91 3 #reduceActionForobjectValue1: 5223425 false) 
	#(92 2 #reduceActionFordefinition__definition__2: 5253122 false) 
	#(142 8 #reduceActionFordirectiveDefinition8: 11964424 false) 
	#(125 6 #reduceActionForinputValueDefinition8: 9040904 false) 
	#(122 6 #reduceActionForfieldDefinition8: 8757256 false) 
	#(93 3 #reduceActionForobjectField1: 5299201 false)
	).
]

{ #category : #generated }
GraphQLParser class >> scannerClass [
	^GraphQLScanner
]

{ #category : #generated }
GraphQLParser class >> startingStateFordocument [
	^ 1
]

{ #category : #generated }
GraphQLParser class >> symbolNames [
	^ #('"!"' '"$"' '"&"' '"("' '")"' '"..."' '":"' '"="' '"@"' '"ARGUMENT_DEFINITION"' '"ENUM"' '"ENUM_VALUE"' '"FIELD"' '"FIELD_DEFINITION"' '"FRAGMENT_DEFINITION"' '"FRAGMENT_SPREAD"' '"INLINE_FRAGMENT"' '"INPUT_FIELD_DEFINITION"' '"INPUT_OBJECT"' '"INTERFACE"' '"MUTATION"' '"OBJECT"' '"QUERY"' '"SCALAR"' '"SCHEMA"' '"SUBSCRIPTION"' '"UNION"' '"VARIABLE_DEFINITION"' '"["' '"]"' '"directive"' '"enum"' '"extend"' '"false"' '"fragment"' '"implements"' '"input"' '"interface"' '"mutation"' '"null"' '"on"' '"query"' '"repeatable"' '"scalar"' '"schema"' '"subscription"' '"true"' '"type"' '"union"' '"{"' '"|"' '"}"' '<NAME>' '<STRING>' '<BLOCK_STRING>' '<FLOAT>' '<INT>' '<whitespace>' '<comment>' '<UNICODE_BOM>' 'B e g i n' 'document' 'definition ''definition''+' 'definition' 'executableDocument' 'executableDefinition' 'operationDefinition' 'operationType' 'selectionSet' 'selection ''selection''+' 'selection' 'field' 'arguments' 'argument ''argument''+' 'argument' 'alias' 'fragmentSpread' 'fragmentDefinition' 'fragmentName' 'typeCondition' 'inlineFragment' 'value' 'intValue' 'floatValue' 'booleanValue' 'stringValue' 'nullValue' 'enumValue' 'listValue' 'value ''value''+' 'objectValue' 'objectField ''field''*' 'objectField' 'variable' 'variableDefinitions' 'variableDefinition ''variableDefinition''+' 'variableDefinition' 'defaultValue' 'type_' 'namedType' 'listType' 'directives' 'directive ''directive''+' 'directive' 'typeSystemDocument' 'typeSystemDefinition' 'typeSystemExtensionDocument' 'typeSystemExtension' 'schemaDefinition' 'rootOperationTypeDefinition+' 'rootOperationTypeDefinition' 'schemaExtension' 'description' 'typeDefinition' 'typeExtension' 'scalarTypeDefinition' 'scalarTypeExtension' 'objectTypeDefinition' 'implementsInterfaces' 'fieldsDefinition' 'fieldDefinition ''definition''+' 'fieldDefinition' 'argumentsDefinition' 'inputValueDefinition ''definition''+' 'inputValueDefinition' 'objectTypeExtension' 'interfaceTypeDefinition' 'interfaceTypeExtension' 'unionTypeDefinition' 'unionMemberTypes' '("|" ''barToken''namedType ''type'')' '("|" ''barToken''namedType ''type'')*' 'unionTypeExtension' 'enumTypeDefinition' 'enumValuesDefinition' 'enumValueDefinition ''definition''+' 'enumValueDefinition' 'enumTypeExtension' 'inputObjectTypeDefinition' 'inputFieldsDefinition' 'inputObjectTypeExtension' 'directiveDefinition' 'directiveLocations' '("|" ''barToken'' directiveLocation ''location'')' '("|" ''barToken'' directiveLocation ''location'')*' 'directiveLocation' 'executableDirectiveLocation' 'typeSystemDirectiveLocation' 'name' 'E O F' 'error')
]

{ #category : #generated }
GraphQLParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #GraphQLDocumentNode #GraphQLDocumentNode #OrderedCollection #GraphQLProgramNode #GraphQLProgramNode #GraphQLProgramNode #GraphQLOperationDefinitionNode #SmaCCToken #OrderedCollection #OrderedCollection #GraphQLProgramNode #GraphQLFieldNode #OrderedCollection #OrderedCollection #GraphQLArgumentNode #OrderedCollection #GraphQLFragmentSpreadNode #GraphQLFragmentDefinitionNode #SmaCCToken #OrderedCollection #GraphQLInlineFragmentNode #GraphQLProgramNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #GraphQLEnumValueNode #GraphQLListValueNode #OrderedCollection #GraphQLObjectValueNode #OrderedCollection #GraphQLObjectFieldNode #GraphQLVariableNode #OrderedCollection #OrderedCollection #GraphQLVariableDefinitionNode #OrderedCollection #GraphQLTypeNode #GraphQLNamedTypeNode #GraphQLListTypeNode #OrderedCollection #OrderedCollection #GraphQLDirectiveNode #GraphQLProgramNode #GraphQLProgramNode #GraphQLProgramNode #GraphQLProgramNode #GraphQLSchemaDefinitionNode #OrderedCollection #OrderedCollection #GraphQLSchemaExtensionNode #SmaCCToken #GraphQLTypeDefinitionNode #GraphQLTypeExtensionNode #GraphQLScalarTypeDefinitionNode #GraphQLScalarTypeExtensionNode #GraphQLObjectTypeDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #GraphQLFieldDefinitionNode #OrderedCollection #OrderedCollection #GraphQLInputValueDefinitionNode #GraphQLObjectTypeExtensionNode #GraphQLInterfaceTypeDefinitionNode #GraphQLInterfaceTypeExtensionNode #GraphQLUnionTypeDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #GraphQLUnionTypeExtensionNode #GraphQLEnumTypeDefinitionNode #OrderedCollection #OrderedCollection #GraphQLEnumValueDefinitionNode #GraphQLEnumTypeExtensionNode #GraphQLInputObjectTypeDefinitionNode #OrderedCollection #GraphQLInputObjectTypeExtensionNode #GraphQLDirectiveDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
GraphQLParser class >> transitionTable [
^#(
#[1 0 9 0 31 0 13 0 32 0 17 0 33 0 21 0 35 0 25 0 37 0 29 0 38 0 101 0 39 0 101 0 42 0 41 0 44 0 45 0 45 0 101 0 46 0 53 0 48 0 57 0 49 0 61 0 50 0 141 0 54 0 141 0 55 0 73 0 60 0 77 0 62 0 81 0 63 0 85 0 64 0 85 0 65 0 85 0 66 0 85 0 67 0 101 0 68 0 105 0 69 0 85 0 78 0 141 0 86 0 85 0 105 0 85 0 106 0 85 0 107 0 85 0 108 0 85 0 109 0 85 0 112 0 141 0 113 0 85 0 114 0 85 0 115 0 85 0 116 0 85 0 117 0 85 0 118 0 85 0 126 0 85 0 127 0 85 0 128 0 85 0 129 0 85 0 133 0 85 0 134 0 85 0 138 0 85 0 139 0 85 0 141 0 85 0 142] 
#[0 0 205 0 9] 
#[0 0 213 0 53 0 149] 
#[1 0 217 0 32 0 221 0 37 0 225 0 38 0 229 0 44 0 233 0 45 0 237 0 48 0 241 0 49] 
#[0 0 245 0 53 0 79 0 149] 
#[0 0 253 0 53 0 149] 
#[0 1 1 0 53 0 149] 
#[0 0 6 0 4 0 7 0 9 0 50 0 53] 
#[0 0 10 0 4 0 7 0 9 0 50 0 53] 
#[0 1 5 0 53 0 149] 
#[1 1 9 0 9 1 13 0 50 1 17 0 102 1 21 0 103 1 25 0 104] 
#[0 0 14 0 4 0 7 0 9 0 50 0 53] 
#[0 1 29 0 53 0 149] 
#[0 1 33 0 53 0 149] 
#[1 1 37 0 6 1 65 0 53 1 41 0 70 1 45 0 71 1 45 0 72 1 53 0 76 1 45 0 77 1 45 0 81 1 65 0 149] 
#[0 0 18 0 2 0 5 0 9 0 29 0 30 0 31 0 32 0 34 0 37 0 38 0 40 0 44 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 0 22 0 2 0 5 0 9 0 29 0 30 0 31 0 32 0 34 0 37 0 38 0 40 0 44 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[1 0 9 0 31 0 13 0 32 0 17 0 33 0 21 0 35 0 25 0 37 0 29 0 38 0 101 0 39 0 101 0 42 0 41 0 44 0 45 0 45 0 101 0 46 0 53 0 48 0 57 0 49 0 61 0 50 0 141 0 54 0 141 0 55 1 69 0 63 0 85 0 64 0 85 0 65 0 85 0 66 0 85 0 67 0 101 0 68 0 105 0 69 0 85 0 78 0 141 0 86 0 85 0 105 0 85 0 106 0 85 0 107 0 85 0 108 0 85 0 109 0 85 0 112 0 141 0 113 0 85 0 114 0 85 0 115 0 85 0 116 0 85 0 117 0 85 0 118 0 85 0 126 0 85 0 127 0 85 0 128 0 85 0 129 0 85 0 133 0 85 0 134 0 85 0 138 0 85 0 139 0 85 0 141 0 85 0 142] 
#[0 0 0 0 150] 
#[1 0 9 0 31 0 13 0 32 0 17 0 33 0 21 0 35 0 25 0 37 0 29 0 38 0 101 0 39 0 101 0 42 0 41 0 44 0 45 0 45 0 101 0 46 0 53 0 48 0 57 0 49 0 61 0 50 0 141 0 54 0 141 0 55 1 73 0 64 1 73 0 65 1 73 0 66 1 73 0 67 0 101 0 68 0 105 0 69 1 73 0 78 0 141 0 86 1 73 0 105 1 73 0 106 1 73 0 107 1 73 0 108 1 73 0 109 1 73 0 112 0 141 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 73 0 117 1 73 0 118 1 73 0 126 1 73 0 127 1 73 0 128 1 73 0 129 1 73 0 133 1 73 0 134 1 73 0 138 1 73 0 139 1 73 0 141 1 73 0 142 0 26 0 150] 
#[0 0 30 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 34 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 38 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 42 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 77 0 4 1 9 0 9 0 61 0 50 1 93 0 53 1 81 0 69 1 85 0 95 1 89 0 102 1 21 0 103 1 25 0 104 1 93 0 149] 
#[0 0 46 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 50 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 54 0 31 0 32 0 37 0 38 0 44 0 48 0 49 0 53] 
#[0 0 58 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 62 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 66 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 70 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 74 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 78 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 97 0 31 1 101 0 32 1 105 0 37 1 109 0 38 1 113 0 44 1 117 0 48 1 121 0 49] 
#[0 0 82 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 86 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 90 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 94 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 98 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 102 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 106 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 110 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 114 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 118 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 122 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 126 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 130 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 134 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 138 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 1 125 0 53 0 149] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 150] 
#[1 1 9 0 9 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 35 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 42 0 146 0 44 0 146 0 45 0 146 0 46 0 146 0 48 0 146 0 49 0 7 0 50 0 146 0 54 0 146 0 55 1 133 0 102 1 21 0 103 1 25 0 104 1 137 0 135 0 146 0 150] 
#[0 1 141 0 53 0 149] 
#[0 1 145 0 53 0 149] 
#[0 1 149 0 53 0 149] 
#[0 1 153 0 53 0 149] 
#[1 1 9 0 9 1 157 0 50 1 161 0 102 1 21 0 103 1 25 0 104] 
#[0 1 165 0 53 0 149] 
#[0 1 169 0 53 0 149] 
#[1 1 173 0 41 1 177 0 80] 
#[0 0 150 0 6 0 9 0 41 0 52 0 53] 
#[1 1 9 0 9 0 154 0 31 0 154 0 32 0 154 0 33 0 154 0 35 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 42 0 154 0 44 0 154 0 45 0 154 0 46 0 154 0 48 0 154 0 49 0 11 0 50 0 154 0 54 0 154 0 55 1 185 0 102 1 21 0 103 1 25 0 104 1 189 0 140 0 154 0 150] 
#[1 1 9 0 9 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 35 1 193 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 42 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 48 0 158 0 49 0 15 0 50 0 158 0 54 0 158 0 55 1 201 0 102 1 21 0 103 1 25 0 104 1 205 0 119 1 209 0 120 0 158 0 150] 
#[1 1 9 0 9 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 35 0 162 0 37 0 162 0 38 0 162 0 39 0 162 0 42 0 162 0 44 0 162 0 45 0 162 0 46 0 162 0 48 0 162 0 49 0 162 0 50 0 162 0 54 0 162 0 55 1 213 0 102 1 21 0 103 1 25 0 104 0 162 0 150] 
#[0 1 217 0 53 0 149] 
#[1 1 221 0 39 1 221 0 42 1 221 0 46 1 221 0 68 1 225 0 110 1 229 0 111] 
#[0 1 233 0 50] 
#[1 0 166 0 5 0 166 0 6 0 166 0 8 1 9 0 9 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 35 0 166 0 37 0 166 0 38 0 166 0 39 0 166 0 42 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 48 0 166 0 49 0 166 0 50 0 166 0 52 0 166 0 53 0 166 0 54 0 166 0 55 1 237 0 104 0 166 0 150] 
#[0 0 170 0 5 0 6 0 8 0 9 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 150] 
#[1 1 9 0 9 0 174 0 31 0 174 0 32 0 174 0 33 0 174 0 35 1 193 0 36 0 174 0 37 0 174 0 38 0 174 0 39 0 174 0 42 0 174 0 44 0 174 0 45 0 174 0 46 0 174 0 48 0 174 0 49 0 19 0 50 0 174 0 54 0 174 0 55 1 241 0 102 1 21 0 103 1 25 0 104 1 245 0 119 1 249 0 120 0 174 0 150] 
#[1 1 253 0 8 1 9 0 9 0 178 0 31 0 178 0 32 0 178 0 33 0 178 0 35 0 178 0 37 0 178 0 38 0 178 0 39 0 178 0 42 0 178 0 44 0 178 0 45 0 178 0 46 0 178 0 48 0 178 0 49 0 178 0 50 0 178 0 54 0 178 0 55 2 1 0 102 1 21 0 103 1 25 0 104 2 5 0 130 0 178 0 150] 
#[1 1 9 0 9 1 173 0 41 0 61 0 50 2 13 0 53 2 9 0 69 2 13 0 79 2 17 0 80 2 21 0 102 1 21 0 103 1 25 0 104 2 13 0 149] 
#[1 1 37 0 6 2 25 0 52 1 65 0 53 2 29 0 71 2 29 0 72 1 53 0 76 2 29 0 77 2 29 0 81 1 65 0 149] 
#[0 0 182 0 6 0 52 0 53] 
#[0 0 186 0 6 0 52 0 53] 
#[0 2 33 0 53 0 149] 
#[0 0 190 0 6 0 52 0 53] 
#[0 0 194 0 6 0 52 0 53] 
#[1 2 37 0 4 0 198 0 6 2 41 0 7 1 9 0 9 0 61 0 50 0 198 0 52 0 198 0 53 2 45 0 69 2 49 0 73 2 53 0 102 1 21 0 103 1 25 0 104] 
#[1 0 9 0 31 0 13 0 32 0 17 0 33 0 21 0 35 0 25 0 37 0 29 0 38 0 101 0 39 0 101 0 42 0 41 0 44 0 45 0 45 0 101 0 46 0 53 0 48 0 57 0 49 0 61 0 50 0 141 0 54 0 141 0 55 1 73 0 64 1 73 0 65 1 73 0 66 1 73 0 67 0 101 0 68 0 105 0 69 1 73 0 78 0 141 0 86 1 73 0 105 1 73 0 106 1 73 0 107 1 73 0 108 1 73 0 109 1 73 0 112 0 141 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 73 0 117 1 73 0 118 1 73 0 126 1 73 0 127 1 73 0 128 1 73 0 129 1 73 0 133 1 73 0 134 1 73 0 138 1 73 0 139 1 73 0 141 1 73 0 142 0 202 0 150] 
#[0 0 206 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 2 57 0 2 2 61 0 94 2 65 0 96 2 69 0 97] 
#[0 0 210 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 9 0 9 0 61 0 50 2 73 0 69 2 77 0 102 1 21 0 103 1 25 0 104] 
#[1 0 61 0 50 2 81 0 69] 
#[1 1 77 0 4 1 9 0 9 0 61 0 50 2 85 0 69 2 89 0 95 2 93 0 102 1 21 0 103 1 25 0 104] 
#[0 2 97 0 9] 
#[0 2 101 0 53 0 149] 
#[0 2 105 0 53 0 149] 
#[0 2 109 0 53 0 149] 
#[0 2 113 0 53 0 149] 
#[0 2 117 0 53 0 149] 
#[0 2 121 0 53 0 149] 
#[1 2 125 0 4 2 129 0 41 2 133 0 43 2 137 0 123] 
#[1 2 157 0 53 2 145 0 54 2 145 0 55 2 145 0 86 2 141 0 88 2 145 0 113 2 149 0 136 2 153 0 137 2 157 0 149] 
#[1 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 35 0 214 0 37 0 214 0 38 0 214 0 39 0 214 0 42 0 214 0 44 0 214 0 45 0 214 0 46 0 214 0 48 0 214 0 49 0 23 0 50 0 214 0 54 0 214 0 55 2 161 0 135 0 214 0 150] 
#[0 0 218 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 9 0 9 1 129 0 50 2 165 0 102 1 21 0 103 1 25 0 104 2 169 0 135] 
#[1 1 9 0 9 1 181 0 50 2 173 0 102 1 21 0 103 1 25 0 104 2 177 0 140] 
#[1 1 9 0 9 1 193 0 36 1 197 0 50 2 181 0 102 1 21 0 103 1 25 0 104 2 185 0 119 2 189 0 120] 
#[1 1 9 0 9 2 193 0 102 1 21 0 103 1 25 0 104] 
#[1 1 221 0 39 1 221 0 42 1 221 0 46 1 221 0 68 2 197 0 110 1 229 0 111] 
#[1 0 222 0 31 0 222 0 32 0 222 0 33 0 222 0 35 0 222 0 37 0 222 0 38 0 222 0 39 0 222 0 42 0 222 0 44 0 222 0 45 0 222 0 46 0 222 0 48 0 222 0 49 0 27 0 50 0 222 0 54 0 222 0 55 0 222 0 150] 
#[1 1 9 0 9 1 193 0 36 1 197 0 50 2 205 0 102 1 21 0 103 1 25 0 104 2 209 0 119 2 213 0 120] 
#[1 1 253 0 8 1 9 0 9 2 217 0 102 1 21 0 103 1 25 0 104 2 221 0 130] 
#[1 2 229 0 53 2 225 0 100 2 229 0 149] 
#[1 1 9 0 9 0 61 0 50 2 233 0 69 2 237 0 102 1 21 0 103 1 25 0 104] 
#[1 2 253 0 53 2 241 0 54 2 241 0 55 2 241 0 86 2 241 0 113 2 245 0 124 2 249 0 125 2 253 0 149] 
#[1 0 226 0 31 0 226 0 32 0 226 0 33 0 226 0 35 0 226 0 37 0 226 0 38 0 226 0 39 0 226 0 42 0 226 0 44 0 226 0 45 0 226 0 46 0 226 0 48 0 226 0 49 0 31 0 50 0 226 0 54 0 226 0 55 3 1 0 140 0 226 0 150] 
#[0 0 230 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 3 5 0 3 2 229 0 53 3 9 0 100 2 229 0 149] 
#[1 3 25 0 53 3 13 0 54 3 13 0 55 3 13 0 86 3 13 0 113 3 17 0 121 3 21 0 122 3 25 0 149] 
#[1 0 234 0 31 0 234 0 32 0 234 0 33 0 234 0 35 0 234 0 37 0 234 0 38 0 234 0 39 0 234 0 42 0 234 0 44 0 234 0 45 0 234 0 46 0 234 0 48 0 234 0 49 0 35 0 50 0 234 0 54 0 234 0 55 3 29 0 120 0 234 0 150] 
#[1 3 33 0 3 1 9 0 9 0 238 0 31 0 238 0 32 0 238 0 33 0 238 0 35 0 238 0 37 0 238 0 38 0 238 0 39 0 238 0 42 0 238 0 44 0 238 0 45 0 238 0 46 0 238 0 48 0 238 0 49 0 39 0 50 0 238 0 54 0 238 0 55 3 37 0 102 1 21 0 103 1 25 0 104 3 41 0 120 0 238 0 150] 
#[0 0 242 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 0 246 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 2 37 0 4 0 250 0 5 0 250 0 6 0 250 0 8 0 250 0 9 0 250 0 31 0 250 0 32 0 250 0 33 0 250 0 35 0 250 0 37 0 250 0 38 0 250 0 39 0 250 0 42 0 250 0 44 0 250 0 45 0 250 0 46 0 250 0 48 0 250 0 49 0 250 0 50 0 250 0 52 0 250 0 53 0 250 0 54 0 250 0 55 3 45 0 73 0 250 0 150] 
#[0 3 49 0 7] 
#[1 1 221 0 39 1 221 0 42 1 221 0 46 3 53 0 52 1 221 0 68 3 57 0 111] 
#[0 0 254 0 39 0 42 0 46 0 52] 
#[1 1 221 0 39 1 221 0 42 1 221 0 46 1 221 0 68 3 61 0 110 1 229 0 111] 
#[0 1 2 0 5 0 6 0 8 0 9 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 150] 
#[1 1 6 0 31 1 6 0 32 1 6 0 33 1 6 0 35 1 6 0 37 1 6 0 38 1 6 0 39 1 6 0 42 1 6 0 44 1 6 0 45 1 6 0 46 1 6 0 48 1 6 0 49 0 43 0 50 1 6 0 54 1 6 0 55 3 65 0 120 1 6 0 150] 
#[1 3 33 0 3 1 9 0 9 1 10 0 31 1 10 0 32 1 10 0 33 1 10 0 35 1 10 0 37 1 10 0 38 1 10 0 39 1 10 0 42 1 10 0 44 1 10 0 45 1 10 0 46 1 10 0 48 1 10 0 49 0 47 0 50 1 10 0 54 1 10 0 55 3 69 0 102 1 21 0 103 1 25 0 104 3 73 0 120 1 10 0 150] 
#[0 1 14 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 3 77 0 51 2 229 0 53 3 81 0 100 2 229 0 149] 
#[1 1 253 0 8 1 18 0 31 1 18 0 32 1 18 0 33 1 18 0 35 1 18 0 37 1 18 0 38 1 18 0 39 1 18 0 42 1 18 0 44 1 18 0 45 1 18 0 46 1 18 0 48 1 18 0 49 1 18 0 50 1 18 0 54 1 18 0 55 3 85 0 130 1 18 0 150] 
#[0 1 22 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 1 26 0 6 0 52 0 53] 
#[1 1 30 0 6 1 9 0 9 1 30 0 52 1 30 0 53 3 89 0 102 1 21 0 103 1 25 0 104] 
#[1 1 9 0 9 0 61 0 50 3 93 0 69 3 97 0 102 1 21 0 103 1 25 0 104] 
#[1 0 61 0 50 3 101 0 69] 
#[0 1 34 0 6 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 150] 
#[0 1 38 0 6 0 52 0 53] 
#[1 2 37 0 4 1 42 0 6 1 9 0 9 0 61 0 50 1 42 0 52 1 42 0 53 3 105 0 69 3 109 0 73 3 113 0 102 1 21 0 103 1 25 0 104] 
#[1 3 125 0 53 3 117 0 74 3 121 0 75 3 125 0 149] 
#[0 1 46 0 53] 
#[0 1 50 0 6 0 52 0 53] 
#[1 1 54 0 6 1 9 0 9 0 61 0 50 1 54 0 52 1 54 0 53 3 129 0 69 3 133 0 102 1 21 0 103 1 25 0 104] 
#[1 1 58 0 6 0 61 0 50 1 58 0 52 1 58 0 53 3 137 0 69] 
#[0 3 141 0 53 0 149] 
#[0 3 145 0 7] 
#[1 2 57 0 2 3 149 0 5 2 61 0 94 3 153 0 97] 
#[0 1 62 0 2 0 5] 
#[0 1 66 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 0 61 0 50 3 157 0 69] 
#[0 1 70 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 1 74 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 9 0 9 0 61 0 50 3 161 0 69 3 165 0 102 1 21 0 103 1 25 0 104] 
#[1 0 61 0 50 3 169 0 69] 
#[0 3 173 0 53 0 149] 
#[1 1 9 0 9 1 78 0 31 1 78 0 32 1 78 0 33 1 78 0 35 1 78 0 37 1 78 0 38 1 78 0 39 1 78 0 42 1 78 0 44 1 78 0 45 1 78 0 46 1 78 0 48 1 78 0 49 0 51 0 50 1 78 0 54 1 78 0 55 3 177 0 102 1 21 0 103 1 25 0 104 3 181 0 135 1 78 0 150] 
#[1 1 9 0 9 1 82 0 31 1 82 0 32 1 82 0 33 1 82 0 35 1 82 0 37 1 82 0 38 1 82 0 39 1 82 0 42 1 82 0 44 1 82 0 45 1 82 0 46 1 82 0 48 1 82 0 49 0 55 0 50 1 82 0 54 1 82 0 55 3 185 0 102 1 21 0 103 1 25 0 104 3 189 0 140 1 82 0 150] 
#[1 1 9 0 9 1 86 0 31 1 86 0 32 1 86 0 33 1 86 0 35 1 193 0 36 1 86 0 37 1 86 0 38 1 86 0 39 1 86 0 42 1 86 0 44 1 86 0 45 1 86 0 46 1 86 0 48 1 86 0 49 0 59 0 50 1 86 0 54 1 86 0 55 3 193 0 102 1 21 0 103 1 25 0 104 3 197 0 119 3 201 0 120 1 86 0 150] 
#[1 1 9 0 9 1 90 0 31 1 90 0 32 1 90 0 33 1 90 0 35 1 90 0 37 1 90 0 38 1 90 0 39 1 90 0 42 1 90 0 44 1 90 0 45 1 90 0 46 1 90 0 48 1 90 0 49 1 90 0 50 1 90 0 54 1 90 0 55 3 205 0 102 1 21 0 103 1 25 0 104 1 90 0 150] 
#[1 1 9 0 9 1 94 0 31 1 94 0 32 1 94 0 33 1 94 0 35 1 193 0 36 1 94 0 37 1 94 0 38 1 94 0 39 1 94 0 42 1 94 0 44 1 94 0 45 1 94 0 46 1 94 0 48 1 94 0 49 0 63 0 50 1 94 0 54 1 94 0 55 3 209 0 102 1 21 0 103 1 25 0 104 3 213 0 119 3 217 0 120 1 94 0 150] 
#[1 1 253 0 8 1 9 0 9 1 98 0 31 1 98 0 32 1 98 0 33 1 98 0 35 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 42 1 98 0 44 1 98 0 45 1 98 0 46 1 98 0 48 1 98 0 49 1 98 0 50 1 98 0 54 1 98 0 55 3 221 0 102 1 21 0 103 1 25 0 104 3 225 0 130 1 98 0 150] 
#[1 2 253 0 53 2 241 0 54 2 241 0 55 2 241 0 86 2 241 0 113 3 229 0 124 2 249 0 125 2 253 0 149] 
#[1 4 57 0 10 4 57 0 11 4 57 0 12 4 57 0 13 4 57 0 14 4 57 0 15 4 57 0 16 4 57 0 17 4 57 0 18 4 57 0 19 4 57 0 20 4 57 0 21 4 57 0 22 4 57 0 23 4 57 0 24 4 57 0 25 4 57 0 26 4 57 0 27 4 57 0 28 4 53 0 143 4 57 0 146 4 57 0 147 4 57 0 148] 
#[0 4 69 0 41] 
#[1 4 73 0 41 4 77 0 43] 
#[1 1 9 0 9 1 102 0 52 1 102 0 53 1 102 0 54 1 102 0 55 4 81 0 102 1 21 0 103 1 25 0 104] 
#[1 2 157 0 53 4 85 0 88 2 157 0 149] 
#[1 4 89 0 52 2 157 0 53 2 145 0 54 2 145 0 55 2 145 0 86 2 141 0 88 2 145 0 113 4 93 0 137 2 157 0 149] 
#[0 1 106 0 52 0 53 0 54 0 55] 
#[0 1 110 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 1 114 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 118 0 31 1 118 0 32 1 118 0 33 1 118 0 35 1 118 0 37 1 118 0 38 1 118 0 39 1 118 0 42 1 118 0 44 1 118 0 45 1 118 0 46 1 118 0 48 1 118 0 49 0 67 0 50 1 118 0 54 1 118 0 55 4 97 0 135 1 118 0 150] 
#[0 1 122 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 126 0 31 1 126 0 32 1 126 0 33 1 126 0 35 1 126 0 37 1 126 0 38 1 126 0 39 1 126 0 42 1 126 0 44 1 126 0 45 1 126 0 46 1 126 0 48 1 126 0 49 0 71 0 50 1 126 0 54 1 126 0 55 4 101 0 140 1 126 0 150] 
#[0 1 130 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 134 0 31 1 134 0 32 1 134 0 33 1 134 0 35 1 134 0 37 1 134 0 38 1 134 0 39 1 134 0 42 1 134 0 44 1 134 0 45 1 134 0 46 1 134 0 48 1 134 0 49 0 75 0 50 1 134 0 54 1 134 0 55 4 105 0 120 1 134 0 150] 
#[1 3 33 0 3 1 9 0 9 1 197 0 50 4 109 0 102 1 21 0 103 1 25 0 104 4 113 0 120] 
#[0 1 138 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 1 142 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 221 0 39 1 221 0 42 1 221 0 46 4 117 0 52 1 221 0 68 3 57 0 111] 
#[1 1 221 0 39 1 221 0 42 1 221 0 46 1 221 0 68 4 121 0 110 1 229 0 111] 
#[1 1 146 0 31 1 146 0 32 1 146 0 33 1 146 0 35 1 146 0 37 1 146 0 38 1 146 0 39 1 146 0 42 1 146 0 44 1 146 0 45 1 146 0 46 1 146 0 48 1 146 0 49 0 79 0 50 1 146 0 54 1 146 0 55 4 125 0 120 1 146 0 150] 
#[1 3 33 0 3 1 9 0 9 1 150 0 31 1 150 0 32 1 150 0 33 1 150 0 35 1 150 0 37 1 150 0 38 1 150 0 39 1 150 0 42 1 150 0 44 1 150 0 45 1 150 0 46 1 150 0 48 1 150 0 49 0 83 0 50 1 150 0 54 1 150 0 55 4 129 0 102 1 21 0 103 1 25 0 104 4 133 0 120 1 150 0 150] 
#[0 1 154 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 253 0 8 1 158 0 31 1 158 0 32 1 158 0 33 1 158 0 35 1 158 0 37 1 158 0 38 1 158 0 39 1 158 0 42 1 158 0 44 1 158 0 45 1 158 0 46 1 158 0 48 1 158 0 49 1 158 0 50 1 158 0 54 1 158 0 55 4 137 0 130 1 158 0 150] 
#[0 1 162 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 1 166 0 9 0 50] 
#[0 1 170 0 1 0 2 0 3 0 5 0 8 0 9 0 30 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 150] 
#[0 1 174 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 0 61 0 50 4 141 0 69] 
#[0 4 145 0 53 0 149] 
#[1 4 149 0 52 2 253 0 53 2 241 0 54 2 241 0 55 2 241 0 86 2 241 0 113 4 153 0 125 2 253 0 149] 
#[0 1 178 0 5 0 52 0 53 0 54 0 55] 
#[0 4 157 0 7] 
#[0 1 182 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 2 229 0 53 4 161 0 100 2 229 0 149] 
#[0 1 186 0 3 0 9 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 4 165 0 53 0 149] 
#[1 4 169 0 52 3 25 0 53 3 13 0 54 3 13 0 55 3 13 0 86 3 13 0 113 4 173 0 122 3 25 0 149] 
#[0 1 190 0 52 0 53 0 54 0 55] 
#[1 2 125 0 4 4 177 0 7 4 181 0 123] 
#[0 1 194 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 2 229 0 53 4 185 0 100 2 229 0 149] 
#[1 1 198 0 31 1 198 0 32 1 198 0 33 1 198 0 35 1 198 0 37 1 198 0 38 1 198 0 39 1 198 0 42 1 198 0 44 1 198 0 45 1 198 0 46 1 198 0 48 1 198 0 49 0 87 0 50 1 198 0 54 1 198 0 55 4 189 0 120 1 198 0 150] 
#[0 1 202 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 1 206 0 5 0 6 0 8 0 9 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 150] 
#[1 2 229 0 53 4 193 0 100 2 229 0 149] 
#[0 1 210 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 1 214 0 39 0 42 0 46 0 52] 
#[1 1 221 0 39 1 221 0 42 1 221 0 46 4 197 0 52 1 221 0 68 3 57 0 111] 
#[0 1 218 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 222 0 31 1 222 0 32 1 222 0 33 1 222 0 35 1 222 0 37 1 222 0 38 1 222 0 39 1 222 0 42 1 222 0 44 1 222 0 45 1 222 0 46 1 222 0 48 1 222 0 49 0 91 0 50 1 222 0 54 1 222 0 55 4 201 0 120 1 222 0 150] 
#[0 1 226 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 2 229 0 53 4 205 0 100 2 229 0 149] 
#[1 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 35 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 42 1 230 0 44 1 230 0 45 1 230 0 46 1 230 0 48 1 230 0 49 1 230 0 50 1 230 0 51 1 230 0 54 1 230 0 55 4 209 0 132 1 230 0 150] 
#[0 1 234 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 1 238 0 6 0 52 0 53] 
#[0 1 242 0 6 0 52 0 53] 
#[1 0 61 0 50 4 213 0 69] 
#[0 1 246 0 6 0 52 0 53] 
#[0 1 250 0 6 0 52 0 53] 
#[1 1 254 0 6 1 9 0 9 0 61 0 50 1 254 0 52 1 254 0 53 4 217 0 69 4 221 0 102 1 21 0 103 1 25 0 104] 
#[1 2 2 0 6 0 61 0 50 2 2 0 52 2 2 0 53 4 225 0 69] 
#[1 4 229 0 5 3 125 0 53 4 233 0 75 3 125 0 149] 
#[0 2 6 0 5 0 53] 
#[0 4 237 0 7] 
#[0 2 10 0 6 0 52 0 53] 
#[1 2 14 0 6 0 61 0 50 2 14 0 52 2 14 0 53 4 241 0 69] 
#[0 2 18 0 6 0 52 0 53] 
#[0 2 22 0 2 0 5 0 7 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[1 4 245 0 29 2 229 0 53 4 249 0 99 4 253 0 100 5 1 0 101 2 229 0 149] 
#[0 2 26 0 9 0 50] 
#[0 2 30 0 2 0 5] 
#[0 2 34 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 2 38 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 0 61 0 50 5 5 0 69] 
#[0 2 42 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 2 125 0 4 5 9 0 41 5 13 0 43 5 17 0 123] 
#[1 2 46 0 31 2 46 0 32 2 46 0 33 2 46 0 35 2 46 0 37 2 46 0 38 2 46 0 39 2 46 0 42 2 46 0 44 2 46 0 45 2 46 0 46 2 46 0 48 2 46 0 49 0 95 0 50 2 46 0 54 2 46 0 55 5 21 0 135 2 46 0 150] 
#[0 2 50 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 2 54 0 31 2 54 0 32 2 54 0 33 2 54 0 35 2 54 0 37 2 54 0 38 2 54 0 39 2 54 0 42 2 54 0 44 2 54 0 45 2 54 0 46 2 54 0 48 2 54 0 49 0 99 0 50 2 54 0 54 2 54 0 55 5 25 0 140 2 54 0 150] 
#[0 2 58 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 2 62 0 31 2 62 0 32 2 62 0 33 2 62 0 35 2 62 0 37 2 62 0 38 2 62 0 39 2 62 0 42 2 62 0 44 2 62 0 45 2 62 0 46 2 62 0 48 2 62 0 49 0 103 0 50 2 62 0 54 2 62 0 55 5 29 0 120 2 62 0 150] 
#[1 3 33 0 3 1 9 0 9 2 66 0 31 2 66 0 32 2 66 0 33 2 66 0 35 2 66 0 37 2 66 0 38 2 66 0 39 2 66 0 42 2 66 0 44 2 66 0 45 2 66 0 46 2 66 0 48 2 66 0 49 0 107 0 50 2 66 0 54 2 66 0 55 5 33 0 102 1 21 0 103 1 25 0 104 5 37 0 120 2 66 0 150] 
#[0 2 70 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 2 74 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 2 78 0 31 2 78 0 32 2 78 0 33 2 78 0 35 2 78 0 37 2 78 0 38 2 78 0 39 2 78 0 42 2 78 0 44 2 78 0 45 2 78 0 46 2 78 0 48 2 78 0 49 0 111 0 50 2 78 0 54 2 78 0 55 5 41 0 120 2 78 0 150] 
#[1 3 33 0 3 1 9 0 9 2 82 0 31 2 82 0 32 2 82 0 33 2 82 0 35 2 82 0 37 2 82 0 38 2 82 0 39 2 82 0 42 2 82 0 44 2 82 0 45 2 82 0 46 2 82 0 48 2 82 0 49 0 115 0 50 2 82 0 54 2 82 0 55 5 45 0 102 1 21 0 103 1 25 0 104 5 49 0 120 2 82 0 150] 
#[0 2 86 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 253 0 8 2 90 0 31 2 90 0 32 2 90 0 33 2 90 0 35 2 90 0 37 2 90 0 38 2 90 0 39 2 90 0 42 2 90 0 44 2 90 0 45 2 90 0 46 2 90 0 48 2 90 0 49 2 90 0 50 2 90 0 54 2 90 0 55 5 53 0 130 2 90 0 150] 
#[0 2 94 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 5 57 0 5 2 253 0 53 2 241 0 54 2 241 0 55 2 241 0 86 2 241 0 113 4 153 0 125 2 253 0 149] 
#[0 2 98 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 102 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 106 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 110 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 114 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 118 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 122 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 126 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 130 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 134 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 138 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 142 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 146 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 150 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 154 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 158 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 162 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 166 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 170 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 174 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 42 2 178 0 44 2 178 0 45 2 178 0 46 2 178 0 48 2 178 0 49 2 178 0 50 2 178 0 51 2 178 0 54 2 178 0 55 5 61 0 145 2 178 0 150] 
#[0 2 182 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 2 186 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[1 4 57 0 10 4 57 0 11 4 57 0 12 4 57 0 13 4 57 0 14 4 57 0 15 4 57 0 16 4 57 0 17 4 57 0 18 4 57 0 19 4 57 0 20 4 57 0 21 4 57 0 22 4 57 0 23 4 57 0 24 4 57 0 25 4 57 0 26 4 57 0 27 4 57 0 28 5 65 0 143 4 57 0 146 4 57 0 147 4 57 0 148] 
#[1 4 57 0 10 4 57 0 11 4 57 0 12 4 57 0 13 4 57 0 14 4 57 0 15 4 57 0 16 4 57 0 17 4 57 0 18 4 57 0 19 4 57 0 20 4 57 0 21 4 57 0 22 4 57 0 23 4 57 0 24 4 57 0 25 4 57 0 26 4 57 0 27 4 57 0 28 5 69 0 143 4 57 0 146 4 57 0 147 4 57 0 148] 
#[0 5 73 0 41] 
#[0 2 190 0 52 0 53 0 54 0 55] 
#[1 1 9 0 9 2 194 0 52 2 194 0 53 2 194 0 54 2 194 0 55 5 77 0 102 1 21 0 103 1 25 0 104] 
#[0 2 198 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 2 202 0 52 0 53 0 54 0 55] 
#[0 2 206 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 2 210 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 2 214 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 2 218 0 31 2 218 0 32 2 218 0 33 2 218 0 35 2 218 0 37 2 218 0 38 2 218 0 39 2 218 0 42 2 218 0 44 2 218 0 45 2 218 0 46 2 218 0 48 2 218 0 49 0 119 0 50 2 218 0 54 2 218 0 55 5 81 0 120 2 218 0 150] 
#[0 2 222 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 2 226 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 221 0 39 1 221 0 42 1 221 0 46 5 85 0 52 1 221 0 68 3 57 0 111] 
#[0 2 230 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 2 234 0 31 2 234 0 32 2 234 0 33 2 234 0 35 2 234 0 37 2 234 0 38 2 234 0 39 2 234 0 42 2 234 0 44 2 234 0 45 2 234 0 46 2 234 0 48 2 234 0 49 0 123 0 50 2 234 0 54 2 234 0 55 5 89 0 120 2 234 0 150] 
#[0 2 238 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 2 242 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 2 246 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 5 93 0 7] 
#[0 2 250 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 2 254 0 5 0 52 0 53 0 54 0 55] 
#[1 4 245 0 29 2 229 0 53 5 97 0 99 4 253 0 100 5 1 0 101 2 229 0 149] 
#[0 3 2 0 3 0 9 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 2 125 0 4 5 101 0 7 5 105 0 123] 
#[0 3 6 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 3 10 0 52 0 53 0 54 0 55] 
#[1 4 245 0 29 2 229 0 53 5 109 0 99 4 253 0 100 5 1 0 101 2 229 0 149] 
#[0 5 113 0 7] 
#[0 3 14 0 3 0 9 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 3 18 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 3 22 0 39 0 42 0 46 0 52] 
#[0 3 26 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 3 30 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 35 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 42 1 230 0 44 1 230 0 45 1 230 0 46 1 230 0 48 1 230 0 49 1 230 0 50 1 230 0 51 1 230 0 54 1 230 0 55 5 117 0 132 1 230 0 150] 
#[1 3 34 0 31 3 34 0 32 3 34 0 33 3 34 0 35 3 34 0 37 3 34 0 38 3 34 0 39 3 34 0 42 3 34 0 44 3 34 0 45 3 34 0 46 3 34 0 48 3 34 0 49 3 34 0 50 5 121 0 51 3 34 0 54 3 34 0 55 5 125 0 131 3 34 0 150] 
#[0 3 38 0 6 0 52 0 53] 
#[0 3 42 0 6 0 52 0 53] 
#[1 3 46 0 6 0 61 0 50 3 46 0 52 3 46 0 53 5 129 0 69] 
#[0 3 50 0 6 0 52 0 53] 
#[0 3 54 0 5 0 6 0 8 0 9 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 150] 
#[0 3 58 0 5 0 53] 
#[1 2 57 0 2 5 133 0 29 5 173 0 34 5 181 0 40 5 173 0 47 5 149 0 50 2 157 0 53 5 177 0 54 5 177 0 55 5 169 0 56 5 165 0 57 5 161 0 82 5 165 0 83 5 169 0 84 5 173 0 85 5 177 0 86 5 181 0 87 5 161 0 88 5 161 0 89 5 161 0 91 5 161 0 94 2 157 0 149] 
#[0 3 62 0 6 0 52 0 53] 
#[1 4 245 0 29 2 229 0 53 5 201 0 99 4 253 0 100 5 1 0 101 2 229 0 149] 
#[1 3 66 0 2 3 66 0 5 5 205 0 8 5 209 0 98] 
#[1 5 213 0 1 3 70 0 2 3 70 0 5 3 70 0 8 3 70 0 9 3 70 0 30 3 70 0 52 3 70 0 53 3 70 0 54 3 70 0 55] 
#[1 5 217 0 1 3 74 0 2 3 74 0 5 3 74 0 8 3 74 0 9 3 74 0 30 3 74 0 52 3 74 0 53 3 74 0 54 3 74 0 55] 
#[0 3 78 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 4 57 0 10 4 57 0 11 4 57 0 12 4 57 0 13 4 57 0 14 4 57 0 15 4 57 0 16 4 57 0 17 4 57 0 18 4 57 0 19 4 57 0 20 4 57 0 21 4 57 0 22 4 57 0 23 4 57 0 24 4 57 0 25 4 57 0 26 4 57 0 27 4 57 0 28 5 221 0 143 4 57 0 146 4 57 0 147 4 57 0 148] 
#[0 5 225 0 41] 
#[1 5 229 0 41 5 233 0 43] 
#[0 3 82 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 3 86 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 3 90 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 3 94 0 31 3 94 0 32 3 94 0 33 3 94 0 35 3 94 0 37 3 94 0 38 3 94 0 39 3 94 0 42 3 94 0 44 3 94 0 45 3 94 0 46 3 94 0 48 3 94 0 49 0 127 0 50 3 94 0 54 3 94 0 55 5 237 0 120 3 94 0 150] 
#[0 3 98 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 3 102 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 3 106 0 31 3 106 0 32 3 106 0 33 3 106 0 35 3 106 0 37 3 106 0 38 3 106 0 39 3 106 0 42 3 106 0 44 3 106 0 45 3 106 0 46 3 106 0 48 3 106 0 49 0 131 0 50 3 106 0 54 3 106 0 55 5 241 0 120 3 106 0 150] 
#[0 3 110 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 3 114 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 3 118 0 7 0 41 0 43] 
#[1 3 122 0 31 3 122 0 32 3 122 0 33 3 122 0 35 3 122 0 37 3 122 0 38 3 122 0 39 3 122 0 42 3 122 0 44 3 122 0 45 3 122 0 46 3 122 0 48 3 122 0 49 3 122 0 50 5 245 0 51 3 122 0 54 3 122 0 55 5 249 0 144 3 122 0 150] 
#[0 3 126 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 3 130 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 4 57 0 10 4 57 0 11 4 57 0 12 4 57 0 13 4 57 0 14 4 57 0 15 4 57 0 16 4 57 0 17 4 57 0 18 4 57 0 19 4 57 0 20 4 57 0 21 4 57 0 22 4 57 0 23 4 57 0 24 4 57 0 25 4 57 0 26 4 57 0 27 4 57 0 28 5 253 0 143 4 57 0 146 4 57 0 147 4 57 0 148] 
#[0 3 134 0 52 0 53 0 54 0 55] 
#[0 3 138 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 3 142 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 3 146 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 4 245 0 29 2 229 0 53 6 1 0 99 4 253 0 100 5 1 0 101 2 229 0 149] 
#[1 3 150 0 5 5 205 0 8 1 9 0 9 3 150 0 52 3 150 0 53 3 150 0 54 3 150 0 55 6 5 0 98 6 9 0 102 1 21 0 103 1 25 0 104] 
#[1 4 245 0 29 2 229 0 53 6 13 0 99 4 253 0 100 5 1 0 101 2 229 0 149] 
#[0 6 17 0 7] 
#[1 1 9 0 9 3 154 0 52 3 154 0 53 3 154 0 54 3 154 0 55 6 21 0 102 1 21 0 103 1 25 0 104] 
#[1 4 245 0 29 2 229 0 53 6 25 0 99 4 253 0 100 5 1 0 101 2 229 0 149] 
#[1 3 158 0 31 3 158 0 32 3 158 0 33 3 158 0 35 3 158 0 37 3 158 0 38 3 158 0 39 3 158 0 42 3 158 0 44 3 158 0 45 3 158 0 46 3 158 0 48 3 158 0 49 3 158 0 50 5 121 0 51 3 158 0 54 3 158 0 55 5 125 0 131 3 158 0 150] 
#[1 2 229 0 53 6 29 0 100 2 229 0 149] 
#[0 3 162 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 3 166 0 6 0 52 0 53] 
#[1 2 57 0 2 5 133 0 29 6 33 0 30 5 173 0 34 5 181 0 40 5 173 0 47 5 149 0 50 2 157 0 53 5 177 0 54 5 177 0 55 5 169 0 56 5 165 0 57 6 37 0 82 5 165 0 83 5 169 0 84 5 173 0 85 5 177 0 86 5 181 0 87 6 37 0 88 6 37 0 89 6 41 0 90 6 37 0 91 6 37 0 94 2 157 0 149] 
#[0 3 170 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 3 174 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 3 178 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[1 3 182 0 52 3 182 0 53 6 45 0 92] 
#[0 3 186 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 3 190 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 3 194 0 5 0 53] 
#[0 3 198 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 3 202 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 3 206 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 3 210 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 3 214 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 3 218 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 3 222 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 3 226 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 3 230 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 6 49 0 30] 
#[1 2 57 0 2 5 133 0 29 5 173 0 34 5 181 0 40 5 173 0 47 5 149 0 50 2 157 0 53 5 177 0 54 5 177 0 55 5 169 0 56 5 165 0 57 6 53 0 82 5 165 0 83 5 169 0 84 5 173 0 85 5 177 0 86 5 181 0 87 6 53 0 88 6 53 0 89 6 53 0 91 6 53 0 94 2 157 0 149] 
#[0 3 234 0 2 0 5] 
#[0 3 238 0 2 0 5 0 8 0 9 0 30 0 52 0 53 0 54 0 55] 
#[0 3 242 0 2 0 5 0 8 0 9 0 30 0 52 0 53 0 54 0 55] 
#[0 3 246 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 4 57 0 10 4 57 0 11 4 57 0 12 4 57 0 13 4 57 0 14 4 57 0 15 4 57 0 16 4 57 0 17 4 57 0 18 4 57 0 19 4 57 0 20 4 57 0 21 4 57 0 22 4 57 0 23 4 57 0 24 4 57 0 25 4 57 0 26 4 57 0 27 4 57 0 28 6 57 0 143 4 57 0 146 4 57 0 147 4 57 0 148] 
#[1 4 57 0 10 4 57 0 11 4 57 0 12 4 57 0 13 4 57 0 14 4 57 0 15 4 57 0 16 4 57 0 17 4 57 0 18 4 57 0 19 4 57 0 20 4 57 0 21 4 57 0 22 4 57 0 23 4 57 0 24 4 57 0 25 4 57 0 26 4 57 0 27 4 57 0 28 6 61 0 143 4 57 0 146 4 57 0 147 4 57 0 148] 
#[0 6 65 0 41] 
#[0 3 250 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 3 254 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 6 69 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 146 0 147 0 148] 
#[0 4 2 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 4 6 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 4 10 0 5 5 205 0 8 1 9 0 9 4 10 0 52 4 10 0 53 4 10 0 54 4 10 0 55 6 73 0 98 6 77 0 102 1 21 0 103 1 25 0 104] 
#[1 4 14 0 5 1 9 0 9 4 14 0 52 4 14 0 53 4 14 0 54 4 14 0 55 6 81 0 102 1 21 0 103 1 25 0 104] 
#[0 4 18 0 5 0 52 0 53 0 54 0 55] 
#[1 1 9 0 9 4 22 0 52 4 22 0 53 4 22 0 54 4 22 0 55 6 85 0 102 1 21 0 103 1 25 0 104] 
#[1 4 245 0 29 2 229 0 53 6 89 0 99 4 253 0 100 5 1 0 101 2 229 0 149] 
#[0 4 26 0 52 0 53 0 54 0 55] 
#[1 1 9 0 9 4 30 0 52 4 30 0 53 4 30 0 54 4 30 0 55 6 93 0 102 1 21 0 103 1 25 0 104] 
#[0 4 34 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[0 4 38 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 4 42 0 2 0 29 0 30 0 34 0 40 0 47 0 50 0 53 0 54 0 55 0 56 0 57] 
#[1 2 57 0 2 5 133 0 29 6 97 0 30 5 173 0 34 5 181 0 40 5 173 0 47 5 149 0 50 2 157 0 53 5 177 0 54 5 177 0 55 5 169 0 56 5 165 0 57 6 101 0 82 5 165 0 83 5 169 0 84 5 173 0 85 5 177 0 86 5 181 0 87 6 101 0 88 6 101 0 89 6 101 0 91 6 101 0 94 2 157 0 149] 
#[1 6 105 0 52 6 113 0 53 6 109 0 93 6 113 0 149] 
#[0 4 46 0 1 0 2 0 5 0 8 0 9 0 30 0 52 0 53 0 54 0 55] 
#[0 4 50 0 2 0 5 0 9 0 52 0 53 0 54 0 55] 
#[0 4 54 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 4 58 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[1 4 57 0 10 4 57 0 11 4 57 0 12 4 57 0 13 4 57 0 14 4 57 0 15 4 57 0 16 4 57 0 17 4 57 0 18 4 57 0 19 4 57 0 20 4 57 0 21 4 57 0 22 4 57 0 23 4 57 0 24 4 57 0 25 4 57 0 26 4 57 0 27 4 57 0 28 6 117 0 143 4 57 0 146 4 57 0 147 4 57 0 148] 
#[0 4 62 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 150] 
#[1 4 66 0 5 1 9 0 9 4 66 0 52 4 66 0 53 4 66 0 54 4 66 0 55 6 121 0 102 1 21 0 103 1 25 0 104] 
#[0 4 70 0 5 0 52 0 53 0 54 0 55] 
#[0 4 74 0 5 0 52 0 53 0 54 0 55] 
#[0 4 78 0 52 0 53 0 54 0 55] 
#[1 1 9 0 9 4 82 0 52 4 82 0 53 4 82 0 54 4 82 0 55 6 125 0 102 1 21 0 103 1 25 0 104] 
#[0 4 86 0 52 0 53 0 54 0 55] 
#[0 4 90 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 4 94 0 2 0 29 0 30 0 34 0 40 0 47 0 50 0 53 0 54 0 55 0 56 0 57] 
#[0 4 98 0 2 0 5 0 9 0 29 0 30 0 34 0 40 0 47 0 50 0 52 0 53 0 54 0 55 0 56 0 57] 
#[0 4 102 0 52 0 53] 
#[0 6 129 0 7] 
#[0 4 106 0 31 0 32 0 33 0 35 0 37 0 38 0 39 0 42 0 44 0 45 0 46 0 48 0 49 0 50 0 54 0 55 0 150] 
#[0 4 110 0 5 0 52 0 53 0 54 0 55] 
#[0 4 114 0 52 0 53 0 54 0 55] 
#[1 2 57 0 2 5 133 0 29 5 173 0 34 5 181 0 40 5 173 0 47 5 149 0 50 2 157 0 53 5 177 0 54 5 177 0 55 5 169 0 56 5 165 0 57 6 133 0 82 5 165 0 83 5 169 0 84 5 173 0 85 5 177 0 86 5 181 0 87 6 133 0 88 6 133 0 89 6 133 0 91 6 133 0 94 2 157 0 149] 
#[0 4 118 0 52 0 53]
	).
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFor______barToken_namedType__type___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFor______barToken_namedType__type___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForalias1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForargument1: nodes [
	| result |
	result := GraphQLArgumentNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordefinition__definition__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordefinition__definition__2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordirective1: nodes [
	| result |
	result := GraphQLDirectiveNode new.
	result atToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordirective2: nodes [
	| result |
	result := GraphQLDirectiveNode new.
	result atToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftParen: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result arguments.
	result rightParen: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordirectiveDefinition1: nodes [
	| result |
	result := GraphQLDirectiveDefinitionNode new.
	result directiveToken: (nodes at: 1).
	result atToken: (nodes at: 2).
	result name: (nodes at: 3).
	result onToken: (nodes at: 4).
	result addTokens: ((nodes at: 5) at: 1) to: result locations.
	result addTokens: ((nodes at: 5) at: 2) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordirectiveDefinition2: nodes [
	| result |
	result := GraphQLDirectiveDefinitionNode new.
	result directiveToken: (nodes at: 1).
	result atToken: (nodes at: 2).
	result name: (nodes at: 3).
	result repeatableToken: (nodes at: 4).
	result onToken: (nodes at: 5).
	result addTokens: ((nodes at: 6) at: 1) to: result locations.
	result addTokens: ((nodes at: 6) at: 2) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordirectiveDefinition3: nodes [
	| result |
	result := GraphQLDirectiveDefinitionNode new.
	result directiveToken: (nodes at: 1).
	result atToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftParen: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightParen: ((nodes at: 4) at: 3).
	result onToken: (nodes at: 5).
	result addTokens: ((nodes at: 6) at: 1) to: result locations.
	result addTokens: ((nodes at: 6) at: 2) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordirectiveDefinition4: nodes [
	| result |
	result := GraphQLDirectiveDefinitionNode new.
	result directiveToken: (nodes at: 1).
	result atToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftParen: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightParen: ((nodes at: 4) at: 3).
	result repeatableToken: (nodes at: 5).
	result onToken: (nodes at: 6).
	result addTokens: ((nodes at: 7) at: 1) to: result locations.
	result addTokens: ((nodes at: 7) at: 2) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordirectiveDefinition5: nodes [
	| result |
	result := GraphQLDirectiveDefinitionNode new.
	result description: (nodes at: 1).
	result directiveToken: (nodes at: 2).
	result atToken: (nodes at: 3).
	result name: (nodes at: 4).
	result onToken: (nodes at: 5).
	result addTokens: ((nodes at: 6) at: 1) to: result locations.
	result addTokens: ((nodes at: 6) at: 2) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordirectiveDefinition6: nodes [
	| result |
	result := GraphQLDirectiveDefinitionNode new.
	result description: (nodes at: 1).
	result directiveToken: (nodes at: 2).
	result atToken: (nodes at: 3).
	result name: (nodes at: 4).
	result repeatableToken: (nodes at: 5).
	result onToken: (nodes at: 6).
	result addTokens: ((nodes at: 7) at: 1) to: result locations.
	result addTokens: ((nodes at: 7) at: 2) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordirectiveDefinition7: nodes [
	| result |
	result := GraphQLDirectiveDefinitionNode new.
	result description: (nodes at: 1).
	result directiveToken: (nodes at: 2).
	result atToken: (nodes at: 3).
	result name: (nodes at: 4).
	result leftParen: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightParen: ((nodes at: 5) at: 3).
	result onToken: (nodes at: 6).
	result addTokens: ((nodes at: 7) at: 1) to: result locations.
	result addTokens: ((nodes at: 7) at: 2) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordirectiveDefinition8: nodes [
	| result |
	result := GraphQLDirectiveDefinitionNode new.
	result description: (nodes at: 1).
	result directiveToken: (nodes at: 2).
	result atToken: (nodes at: 3).
	result name: (nodes at: 4).
	result leftParen: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightParen: ((nodes at: 5) at: 3).
	result repeatableToken: (nodes at: 6).
	result onToken: (nodes at: 7).
	result addTokens: ((nodes at: 8) at: 1) to: result locations.
	result addTokens: ((nodes at: 8) at: 2) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordirectiveLocations1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordirectives1: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordocument1: nodes [
	| result |
	result := GraphQLDocumentNode new.
	result addNodes: (nodes at: 1) to: result definitions.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFordocument2: nodes [
	| result |
	result := GraphQLDocumentNode new.
	result bom: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result definitions.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumTypeDefinition1: nodes [
	| result |
	result := GraphQLEnumTypeDefinitionNode new.
	result enumToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumTypeDefinition2: nodes [
	| result |
	result := GraphQLEnumTypeDefinitionNode new.
	result enumToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumTypeDefinition3: nodes [
	| result |
	result := GraphQLEnumTypeDefinitionNode new.
	result enumToken: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumTypeDefinition4: nodes [
	| result |
	result := GraphQLEnumTypeDefinitionNode new.
	result enumToken: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumTypeDefinition5: nodes [
	| result |
	result := GraphQLEnumTypeDefinitionNode new.
	result description: (nodes at: 1).
	result enumToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumTypeDefinition6: nodes [
	| result |
	result := GraphQLEnumTypeDefinitionNode new.
	result description: (nodes at: 1).
	result enumToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumTypeDefinition7: nodes [
	| result |
	result := GraphQLEnumTypeDefinitionNode new.
	result description: (nodes at: 1).
	result enumToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumTypeDefinition8: nodes [
	| result |
	result := GraphQLEnumTypeDefinitionNode new.
	result description: (nodes at: 1).
	result enumToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumTypeExtension1: nodes [
	| result |
	result := GraphQLEnumTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result enumToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumTypeExtension2: nodes [
	| result |
	result := GraphQLEnumTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result enumToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumTypeExtension3: nodes [
	| result |
	result := GraphQLEnumTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result enumToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumValue1: nodes [
	| result |
	result := GraphQLEnumValueNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumValueDefinition1: nodes [
	| result |
	result := GraphQLEnumValueDefinitionNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumValueDefinition2: nodes [
	| result |
	result := GraphQLEnumValueDefinitionNode new.
	result value: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumValueDefinition3: nodes [
	| result |
	result := GraphQLEnumValueDefinitionNode new.
	result description: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForenumValueDefinition4: nodes [
	| result |
	result := GraphQLEnumValueDefinitionNode new.
	result description: (nodes at: 1).
	result value: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield10: nodes [
	| result |
	result := GraphQLFieldNode new.
	result alias: ((nodes at: 1) at: 1).
	result colonToken: ((nodes at: 1) at: 2).
	result name: (nodes at: 2).
	result leftBrace: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result selections.
	result rightBrace: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield11: nodes [
	| result |
	result := GraphQLFieldNode new.
	result alias: ((nodes at: 1) at: 1).
	result colonToken: ((nodes at: 1) at: 2).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield12: nodes [
	| result |
	result := GraphQLFieldNode new.
	result alias: ((nodes at: 1) at: 1).
	result colonToken: ((nodes at: 1) at: 2).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result selections.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield13: nodes [
	| result |
	result := GraphQLFieldNode new.
	result alias: ((nodes at: 1) at: 1).
	result colonToken: ((nodes at: 1) at: 2).
	result name: (nodes at: 2).
	result leftParen: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result arguments.
	result rightParen: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield14: nodes [
	| result |
	result := GraphQLFieldNode new.
	result alias: ((nodes at: 1) at: 1).
	result colonToken: ((nodes at: 1) at: 2).
	result name: (nodes at: 2).
	result leftParen: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result arguments.
	result rightParen: ((nodes at: 3) at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result selections.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield15: nodes [
	| result |
	result := GraphQLFieldNode new.
	result alias: ((nodes at: 1) at: 1).
	result colonToken: ((nodes at: 1) at: 2).
	result name: (nodes at: 2).
	result leftParen: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result arguments.
	result rightParen: ((nodes at: 3) at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield16: nodes [
	| result |
	result := GraphQLFieldNode new.
	result alias: ((nodes at: 1) at: 1).
	result colonToken: ((nodes at: 1) at: 2).
	result name: (nodes at: 2).
	result leftParen: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result arguments.
	result rightParen: ((nodes at: 3) at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result selections.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield1: nodes [
	| result |
	result := GraphQLFieldNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield2: nodes [
	| result |
	result := GraphQLFieldNode new.
	result name: (nodes at: 1).
	result leftBrace: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result selections.
	result rightBrace: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield3: nodes [
	| result |
	result := GraphQLFieldNode new.
	result name: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield4: nodes [
	| result |
	result := GraphQLFieldNode new.
	result name: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result directives.
	result leftBrace: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result selections.
	result rightBrace: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield5: nodes [
	| result |
	result := GraphQLFieldNode new.
	result name: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result arguments.
	result rightParen: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield6: nodes [
	| result |
	result := GraphQLFieldNode new.
	result name: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result arguments.
	result rightParen: ((nodes at: 2) at: 3).
	result leftBrace: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result selections.
	result rightBrace: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield7: nodes [
	| result |
	result := GraphQLFieldNode new.
	result name: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result arguments.
	result rightParen: ((nodes at: 2) at: 3).
	result addNodes: (nodes at: 3) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield8: nodes [
	| result |
	result := GraphQLFieldNode new.
	result name: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result arguments.
	result rightParen: ((nodes at: 2) at: 3).
	result addNodes: (nodes at: 3) to: result directives.
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result selections.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfield9: nodes [
	| result |
	result := GraphQLFieldNode new.
	result alias: ((nodes at: 1) at: 1).
	result colonToken: ((nodes at: 1) at: 2).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfieldDefinition1: nodes [
	| result |
	result := GraphQLFieldDefinitionNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result type: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfieldDefinition2: nodes [
	| result |
	result := GraphQLFieldDefinitionNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result type: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfieldDefinition3: nodes [
	| result |
	result := GraphQLFieldDefinitionNode new.
	result name: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result definitions.
	result rightParen: ((nodes at: 2) at: 3).
	result colonToken: (nodes at: 3).
	result type: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfieldDefinition4: nodes [
	| result |
	result := GraphQLFieldDefinitionNode new.
	result name: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result definitions.
	result rightParen: ((nodes at: 2) at: 3).
	result colonToken: (nodes at: 3).
	result type: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfieldDefinition5: nodes [
	| result |
	result := GraphQLFieldDefinitionNode new.
	result description: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result type: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfieldDefinition6: nodes [
	| result |
	result := GraphQLFieldDefinitionNode new.
	result description: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result type: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfieldDefinition7: nodes [
	| result |
	result := GraphQLFieldDefinitionNode new.
	result description: (nodes at: 1).
	result name: (nodes at: 2).
	result leftParen: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result definitions.
	result rightParen: ((nodes at: 3) at: 3).
	result colonToken: (nodes at: 4).
	result type: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfieldDefinition8: nodes [
	| result |
	result := GraphQLFieldDefinitionNode new.
	result description: (nodes at: 1).
	result name: (nodes at: 2).
	result leftParen: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result definitions.
	result rightParen: ((nodes at: 3) at: 3).
	result colonToken: (nodes at: 4).
	result type: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfragmentDefinition1: nodes [
	| result |
	result := GraphQLFragmentDefinitionNode new.
	result fragmentToken: (nodes at: 1).
	result name: (nodes at: 2).
	result onToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result selections.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfragmentDefinition2: nodes [
	| result |
	result := GraphQLFragmentDefinitionNode new.
	result fragmentToken: (nodes at: 1).
	result name: (nodes at: 2).
	result onToken: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result addNodes: (nodes at: 4) to: result directives.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result selections.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfragmentSpread1: nodes [
	| result |
	result := GraphQLFragmentSpreadNode new.
	result ellipsisToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForfragmentSpread2: nodes [
	| result |
	result := GraphQLFragmentSpreadNode new.
	result ellipsisToken: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForimplementsInterfaces1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForimplementsInterfaces2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForimplementsInterfaces3: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinlineFragment1: nodes [
	| result |
	result := GraphQLInlineFragmentNode new.
	result ellipsisToken: (nodes at: 1).
	result leftBrace: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result selections.
	result rightBrace: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinlineFragment2: nodes [
	| result |
	result := GraphQLInlineFragmentNode new.
	result ellipsisToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result directives.
	result leftBrace: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result selections.
	result rightBrace: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinlineFragment3: nodes [
	| result |
	result := GraphQLInlineFragmentNode new.
	result ellipsisToken: (nodes at: 1).
	result onToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	result leftBrace: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result selections.
	result rightBrace: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinlineFragment4: nodes [
	| result |
	result := GraphQLInlineFragmentNode new.
	result ellipsisToken: (nodes at: 1).
	result onToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result selections.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputObjectTypeDefinition1: nodes [
	| result |
	result := GraphQLInputObjectTypeDefinitionNode new.
	result inputToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputObjectTypeDefinition2: nodes [
	| result |
	result := GraphQLInputObjectTypeDefinitionNode new.
	result inputToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputObjectTypeDefinition3: nodes [
	| result |
	result := GraphQLInputObjectTypeDefinitionNode new.
	result inputToken: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputObjectTypeDefinition4: nodes [
	| result |
	result := GraphQLInputObjectTypeDefinitionNode new.
	result inputToken: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputObjectTypeDefinition5: nodes [
	| result |
	result := GraphQLInputObjectTypeDefinitionNode new.
	result description: (nodes at: 1).
	result inputToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputObjectTypeDefinition6: nodes [
	| result |
	result := GraphQLInputObjectTypeDefinitionNode new.
	result description: (nodes at: 1).
	result inputToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputObjectTypeDefinition7: nodes [
	| result |
	result := GraphQLInputObjectTypeDefinitionNode new.
	result description: (nodes at: 1).
	result inputToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputObjectTypeDefinition8: nodes [
	| result |
	result := GraphQLInputObjectTypeDefinitionNode new.
	result description: (nodes at: 1).
	result inputToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputObjectTypeExtension1: nodes [
	| result |
	result := GraphQLInputObjectTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result inputToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputObjectTypeExtension2: nodes [
	| result |
	result := GraphQLInputObjectTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result inputToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputObjectTypeExtension3: nodes [
	| result |
	result := GraphQLInputObjectTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result inputToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputValueDefinition1: nodes [
	| result |
	result := GraphQLInputValueDefinitionNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result type: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputValueDefinition2: nodes [
	| result |
	result := GraphQLInputValueDefinitionNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result type: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputValueDefinition3: nodes [
	| result |
	result := GraphQLInputValueDefinitionNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result type: (nodes at: 3).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputValueDefinition4: nodes [
	| result |
	result := GraphQLInputValueDefinitionNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result type: (nodes at: 3).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	result addNodes: (nodes at: 5) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputValueDefinition5: nodes [
	| result |
	result := GraphQLInputValueDefinitionNode new.
	result description: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result type: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputValueDefinition6: nodes [
	| result |
	result := GraphQLInputValueDefinitionNode new.
	result description: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result type: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputValueDefinition7: nodes [
	| result |
	result := GraphQLInputValueDefinitionNode new.
	result description: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result type: (nodes at: 4).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinputValueDefinition8: nodes [
	| result |
	result := GraphQLInputValueDefinitionNode new.
	result description: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result type: (nodes at: 4).
	result equalToken: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result addNodes: (nodes at: 6) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition10: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result description: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition11: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result description: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition12: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result description: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition13: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result description: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition14: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result description: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition15: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result description: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	result addNodes: (nodes at: 5) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition16: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result description: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	result addNodes: (nodes at: 5) to: result directives.
	result leftBrace: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 6) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition1: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition2: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition3: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition4: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition5: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result implementsToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result types.
	result addTokens: ((nodes at: 3) at: 3) to: result ampTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition6: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result implementsToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result types.
	result addTokens: ((nodes at: 3) at: 3) to: result ampTokens.
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition7: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result implementsToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result types.
	result addTokens: ((nodes at: 3) at: 3) to: result ampTokens.
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition8: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result implementsToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result types.
	result addTokens: ((nodes at: 3) at: 3) to: result ampTokens.
	result addNodes: (nodes at: 4) to: result directives.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeDefinition9: nodes [
	| result |
	result := GraphQLInterfaceTypeDefinitionNode new.
	result description: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeExtension1: nodes [
	| result |
	result := GraphQLInterfaceTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeExtension2: nodes [
	| result |
	result := GraphQLInterfaceTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeExtension3: nodes [
	| result |
	result := GraphQLInterfaceTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeExtension4: nodes [
	| result |
	result := GraphQLInterfaceTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	result addNodes: (nodes at: 5) to: result directives.
	result leftBrace: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 6) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeExtension5: nodes [
	| result |
	result := GraphQLInterfaceTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForinterfaceTypeExtension6: nodes [
	| result |
	result := GraphQLInterfaceTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	result addNodes: (nodes at: 5) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForlistType1: nodes [
	| result |
	result := GraphQLListTypeNode new.
	result leftBracket: (nodes at: 1).
	result type: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForlistValue1: nodes [
	| result |
	result := GraphQLListValueNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForlistValue2: nodes [
	| result |
	result := GraphQLListValueNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result values.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFornamedType1: nodes [
	| result |
	result := GraphQLNamedTypeNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectField1: nodes [
	| result |
	result := GraphQLObjectFieldNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectField__field__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition10: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result description: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition11: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result description: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition12: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result description: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition13: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result description: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition14: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result description: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition15: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result description: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	result addNodes: (nodes at: 5) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition16: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result description: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	result addNodes: (nodes at: 5) to: result directives.
	result leftBrace: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 6) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition1: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition2: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition3: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition4: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition5: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	result implementsToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result types.
	result addTokens: ((nodes at: 3) at: 3) to: result ampTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition6: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	result implementsToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result types.
	result addTokens: ((nodes at: 3) at: 3) to: result ampTokens.
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition7: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	result implementsToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result types.
	result addTokens: ((nodes at: 3) at: 3) to: result ampTokens.
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition8: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	result implementsToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result types.
	result addTokens: ((nodes at: 3) at: 3) to: result ampTokens.
	result addNodes: (nodes at: 4) to: result directives.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeDefinition9: nodes [
	| result |
	result := GraphQLObjectTypeDefinitionNode new.
	result description: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeExtension1: nodes [
	| result |
	result := GraphQLObjectTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeExtension2: nodes [
	| result |
	result := GraphQLObjectTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeExtension3: nodes [
	| result |
	result := GraphQLObjectTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeExtension4: nodes [
	| result |
	result := GraphQLObjectTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	result addNodes: (nodes at: 5) to: result directives.
	result leftBrace: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result definitions.
	result rightBrace: ((nodes at: 6) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeExtension5: nodes [
	| result |
	result := GraphQLObjectTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeExtension6: nodes [
	| result |
	result := GraphQLObjectTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	result addNodes: (nodes at: 5) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectTypeExtension7: nodes [
	| result |
	result := GraphQLObjectTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result typeToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result ampTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForobjectValue1: nodes [
	| result |
	result := GraphQLObjectValueNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result fields.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForoperationDefinition1: nodes [
	| result |
	result := GraphQLOperationDefinitionNode new.
	result type: (nodes at: 1).
	result leftBrace: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result selections.
	result rightBrace: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForoperationDefinition2: nodes [
	| result |
	result := GraphQLOperationDefinitionNode new.
	result type: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result directives.
	result leftBrace: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result selections.
	result rightBrace: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForoperationDefinition3: nodes [
	| result |
	result := GraphQLOperationDefinitionNode new.
	result type: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result variableDefinitions.
	result rightParen: ((nodes at: 2) at: 3).
	result leftBrace: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result selections.
	result rightBrace: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForoperationDefinition4: nodes [
	| result |
	result := GraphQLOperationDefinitionNode new.
	result type: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result variableDefinitions.
	result rightParen: ((nodes at: 2) at: 3).
	result addNodes: (nodes at: 3) to: result directives.
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result selections.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForoperationDefinition5: nodes [
	| result |
	result := GraphQLOperationDefinitionNode new.
	result type: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result selections.
	result rightBrace: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForoperationDefinition6: nodes [
	| result |
	result := GraphQLOperationDefinitionNode new.
	result type: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result selections.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForoperationDefinition7: nodes [
	| result |
	result := GraphQLOperationDefinitionNode new.
	result type: (nodes at: 1).
	result name: (nodes at: 2).
	result leftParen: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result variableDefinitions.
	result rightParen: ((nodes at: 3) at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result selections.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForoperationDefinition8: nodes [
	| result |
	result := GraphQLOperationDefinitionNode new.
	result type: (nodes at: 1).
	result name: (nodes at: 2).
	result leftParen: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result variableDefinitions.
	result rightParen: ((nodes at: 3) at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result selections.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForoperationDefinition9: nodes [
	| result |
	result := GraphQLOperationDefinitionNode new.
	result leftBrace: ((nodes at: 1) at: 1).
	result addNodes: ((nodes at: 1) at: 2) to: result selections.
	result rightBrace: ((nodes at: 1) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForrootOperationTypeDefinition1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForrootOperationTypeDefinition_1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForrootOperationTypeDefinition_2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	self add: ((nodes at: 2) at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForscalarTypeDefinition1: nodes [
	| result |
	result := GraphQLScalarTypeDefinitionNode new.
	result scalarToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForscalarTypeDefinition2: nodes [
	| result |
	result := GraphQLScalarTypeDefinitionNode new.
	result scalarToken: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForscalarTypeDefinition3: nodes [
	| result |
	result := GraphQLScalarTypeDefinitionNode new.
	result description: (nodes at: 1).
	result scalarToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForscalarTypeDefinition4: nodes [
	| result |
	result := GraphQLScalarTypeDefinitionNode new.
	result description: (nodes at: 1).
	result scalarToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForscalarTypeExtension1: nodes [
	| result |
	result := GraphQLScalarTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result scalarToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForschemaDefinition1: nodes [
	| result |
	result := GraphQLSchemaDefinitionNode new.
	result schemaToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addTokens: ((nodes at: 3) at: 1) to: result operationTypes.
	result addTokens: ((nodes at: 3) at: 2) to: result colonTokens.
	result addNodes: ((nodes at: 3) at: 3) to: result types.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForschemaDefinition2: nodes [
	| result |
	result := GraphQLSchemaDefinitionNode new.
	result schemaToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result directives.
	result leftBrace: (nodes at: 3).
	result addTokens: ((nodes at: 4) at: 1) to: result operationTypes.
	result addTokens: ((nodes at: 4) at: 2) to: result colonTokens.
	result addNodes: ((nodes at: 4) at: 3) to: result types.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForschemaExtension1: nodes [
	| result |
	result := GraphQLSchemaExtensionNode new.
	result extendToken: (nodes at: 1).
	result schemaToken: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addTokens: ((nodes at: 4) at: 1) to: result operationTypes.
	result addTokens: ((nodes at: 4) at: 2) to: result colonTokens.
	result addNodes: ((nodes at: 4) at: 3) to: result types.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForschemaExtension2: nodes [
	| result |
	result := GraphQLSchemaExtensionNode new.
	result extendToken: (nodes at: 1).
	result schemaToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	result leftBrace: (nodes at: 4).
	result addTokens: ((nodes at: 5) at: 1) to: result operationTypes.
	result addTokens: ((nodes at: 5) at: 2) to: result colonTokens.
	result addNodes: ((nodes at: 5) at: 3) to: result types.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForschemaExtension3: nodes [
	| result |
	result := GraphQLSchemaExtensionNode new.
	result extendToken: (nodes at: 1).
	result schemaToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForselectionSet1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionFortype_2: nodes [
	| result |
	result := nodes at: 1.
	result bangToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForunionMemberTypes1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForunionMemberTypes2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 2).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForunionTypeDefinition1: nodes [
	| result |
	result := GraphQLUnionTypeDefinitionNode new.
	result unionToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForunionTypeDefinition2: nodes [
	| result |
	result := GraphQLUnionTypeDefinitionNode new.
	result unionToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equalToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result types.
	result addTokens: ((nodes at: 3) at: 3) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForunionTypeDefinition3: nodes [
	| result |
	result := GraphQLUnionTypeDefinitionNode new.
	result unionToken: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForunionTypeDefinition4: nodes [
	| result |
	result := GraphQLUnionTypeDefinitionNode new.
	result unionToken: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result directives.
	result equalToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForunionTypeDefinition5: nodes [
	| result |
	result := GraphQLUnionTypeDefinitionNode new.
	result description: (nodes at: 1).
	result unionToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForunionTypeDefinition6: nodes [
	| result |
	result := GraphQLUnionTypeDefinitionNode new.
	result description: (nodes at: 1).
	result unionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result equalToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForunionTypeDefinition7: nodes [
	| result |
	result := GraphQLUnionTypeDefinitionNode new.
	result description: (nodes at: 1).
	result unionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForunionTypeDefinition8: nodes [
	| result |
	result := GraphQLUnionTypeDefinitionNode new.
	result description: (nodes at: 1).
	result unionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	result equalToken: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result types.
	result addTokens: ((nodes at: 5) at: 3) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForunionTypeExtension1: nodes [
	| result |
	result := GraphQLUnionTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result unionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result equalToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result types.
	result addTokens: ((nodes at: 4) at: 3) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForunionTypeExtension2: nodes [
	| result |
	result := GraphQLUnionTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result unionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	result equalToken: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result types.
	result addTokens: ((nodes at: 5) at: 3) to: result barTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForunionTypeExtension3: nodes [
	| result |
	result := GraphQLUnionTypeExtensionNode new.
	result extendToken: (nodes at: 1).
	result unionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result directives.
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForvalue2: nodes [
	| result |
	result := GraphQLLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForvariable1: nodes [
	| result |
	result := GraphQLVariableNode new.
	result dollarToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForvariableDefinition1: nodes [
	| result |
	result := GraphQLVariableDefinitionNode new.
	result variable: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result type: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
GraphQLParser >> reduceActionForvariableDefinition2: nodes [
	| result |
	result := GraphQLVariableDefinitionNode new.
	result variable: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result type: (nodes at: 3).
	result equalToken: ((nodes at: 4) at: 1).
	result value: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #testing }
GraphQLParser >> tryAllTokens [
	^ true
]

{ #category : #testing }
GraphQLParser >> useAllTokenIds [
	^ false
]
