Class {
	#name : #JSONParser,
	#superclass : #SmaCCParser,
	#category : #'SmaCC_JSON_Parser'
}

{ #category : #'generated-accessing' }
JSONParser class >> cacheId [
	^'2019-02-20T19:15:05.779958-06:00'
]

{ #category : #generated }
JSONParser class >> definitionComment [
"%root Parse;
%prefix JSON;
%suffix Node;

%hierarchy Literal (String Number Boolean Null);

%ignore_variables comma;

<hex>
	: [0-9a-fA-F]
	;
<number>
	: \-? (\d | [1-9]\d+) (\.\d+)? ([eE][\+\-]?\d+)?
	;
<string>
	: \"" ([^\x00-\x1F\""\\]|(\\([\""\\\/bnft]|(u<hex>{4,4}))))* \""
	;
<whitespace>
	: [\x09\x0a\x0d\x20]+
	;

value
	: object
	| array
	| <string> 'value' {{String}}
	| <number> 'value' {{Number}}
	| ""true"" 'value' {{Boolean}}
	| ""false"" 'value' {{Boolean}}
	| ""null"" 'value' {{Null}}
	;
object
	: ""{"" 'leftBrace' members? ""}"" 'rightBrace' {{}}
	;
members
	: members "","" 'comma' member 'member'
	| member 'member'
	;
member
	: <string> 'name' "":"" 'colon' value 'value' {{}}
	;
array
	: ""["" 'leftBracket' elements? ""]"" 'rightBracket' {{}}
	;
elements
	: elements "","" 'comma' value 'value'
	| value 'value'
	;"
]

{ #category : #'file types' }
JSONParser class >> fileExtension [
	^ '.json'
]

{ #category : #generated }
JSONParser class >> reduceTable [
^#(
	#(14 1 #reduceActionForvalue6:) 
	#(14 1 #reduceActionForvalue7:) 
	#(14 1 #reduceActionForvalue4:) 
	#(14 1 #reduceActionForvalue3:) 
	#(14 1 #liftFirstValue:) 
	#(18 2 #reduceActionForarray1:) 
	#(19 1 #reduceActionForelements2:) 
	#(15 2 #reduceActionForobject1:) 
	#(16 1 #reduceActionForelements2:) 
	#(18 3 #reduceActionForarray2:) 
	#(15 3 #reduceActionForobject2:) 
	#(19 3 #reduceActionForelements1:) 
	#(17 3 #reduceActionFormember1:) 
	#(16 3 #reduceActionForelements1:)
	).
]

{ #category : #'generated-accessing' }
JSONParser class >> scannerClass [
	^JSONScanner
]

{ #category : #generated }
JSONParser class >> startingStateForvalue [
	^ 1
]

{ #category : #generated }
JSONParser class >> symbolNames [
	^ #('","' '":"' '"["' '"]"' '"false"' '"null"' '"true"' '"{"' '"}"' '<number>' '<string>' '<whitespace>' 'B e g i n' 'value' 'object' 'members' 'member' 'array' 'elements' 'E O F' 'error')
]

{ #category : #generated }
JSONParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSONParseNode #JSONParseNode #JSONObjectNode #OrderedCollection #JSONMemberNode #JSONArrayNode #OrderedCollection #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JSONParser class >> transitionTable [
^#(
#[1 0 9 0 3 0 13 0 5 0 17 0 6 0 21 0 7 0 25 0 8 0 29 0 10 0 33 0 11 0 37 0 14 0 37 0 15 0 37 0 18] 
#[1 0 9 0 3 0 49 0 4 0 13 0 5 0 17 0 6 0 21 0 7 0 25 0 8 0 29 0 10 0 33 0 11 0 53 0 14 0 53 0 15 0 53 0 18 0 57 0 19] 
#[0 0 6 0 1 0 4 0 9 0 20] 
#[0 0 10 0 1 0 4 0 9 0 20] 
#[0 0 6 0 1 0 4 0 9 0 20] 
#[1 0 61 0 9 0 65 0 11 0 69 0 16 0 73 0 17] 
#[0 0 14 0 1 0 4 0 9 0 20] 
#[0 0 18 0 1 0 4 0 9 0 20] 
#[0 0 0 0 20] 
#[0 0 22 0 1 0 4 0 9 0 20] 
#[0 0 22 0 1 0 4 0 9 0 20] 
#[0 0 26 0 1 0 4 0 9 0 20] 
#[0 0 30 0 1 0 4] 
#[1 0 77 0 1 0 81 0 4] 
#[0 0 34 0 1 0 4 0 9 0 20] 
#[0 0 85 0 2] 
#[1 0 89 0 1 0 93 0 9] 
#[0 0 38 0 1 0 9] 
#[1 0 9 0 3 0 13 0 5 0 17 0 6 0 21 0 7 0 25 0 8 0 29 0 10 0 33 0 11 0 97 0 14 0 97 0 15 0 97 0 18] 
#[0 0 42 0 1 0 4 0 9 0 20] 
#[1 0 9 0 3 0 13 0 5 0 17 0 6 0 21 0 7 0 25 0 8 0 29 0 10 0 33 0 11 0 101 0 14 0 101 0 15 0 101 0 18] 
#[1 0 65 0 11 0 105 0 17] 
#[0 0 46 0 1 0 4 0 9 0 20] 
#[0 0 50 0 1 0 4] 
#[0 0 54 0 1 0 9] 
#[0 0 58 0 1 0 9]
	).
]

{ #category : #'generated-reduction actions' }
JSONParser >> reduceActionForarray1: nodes [
	| result |
	result := JSONArrayNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSONParser >> reduceActionForarray2: nodes [
	| result |
	result := JSONArrayNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commas.
	result addNodes: ((nodes at: 2) at: 2) to: result values.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSONParser >> reduceActionForelements1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSONParser >> reduceActionForelements2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSONParser >> reduceActionFormember1: nodes [
	| result |
	result := JSONMemberNode new.
	result name: (nodes at: 1).
	result colon: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSONParser >> reduceActionForobject1: nodes [
	| result |
	result := JSONObjectNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSONParser >> reduceActionForobject2: nodes [
	| result |
	result := JSONObjectNode new.
	result leftBrace: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commas.
	result addNodes: ((nodes at: 2) at: 2) to: result members.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSONParser >> reduceActionForvalue3: nodes [
	| result |
	result := JSONStringNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSONParser >> reduceActionForvalue4: nodes [
	| result |
	result := JSONNumberNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSONParser >> reduceActionForvalue6: nodes [
	| result |
	result := JSONBooleanNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSONParser >> reduceActionForvalue7: nodes [
	| result |
	result := JSONNullNode new.
	result value: (nodes at: 1).
	^ result
]
