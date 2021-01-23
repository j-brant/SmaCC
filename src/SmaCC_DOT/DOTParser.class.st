Class {
	#name : #DOTParser,
	#superclass : #SmaCCParser,
	#category : #'SmaCC_DOT'
}

{ #category : #'generated-accessing' }
DOTParser class >> cacheId [
	^'2021-01-22T20:59:08.928866-06:00'
]

{ #category : #generated }
DOTParser class >> definitionComment [
"%id <HTMLString>;
%prefix DOT;
%suffix Node;
%root Program;
%hierarchy Statement (NodeStatement EdgeStatement AttributeStatement Alias Subgraph);
<comment>
	: \/\/ [^\r\n]*
	| (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
	;
<whitespace>
	: \s+
	;
<startHTMLString>
	: \<
	;
<ID>
	: (<isLetter> | _) (<isLetter> | _ | \d)*
	| -? ((\d+ (\. \d+)?) | (\. \d+))
	| \"" ([^\""\\] | \\ .)* \""
	;
<edgeop>
	: -(-|>)
	;graph 
	: ""strict"" 'strictToken' ? (""graph"" 'graphToken' | ""digraph"" 'graphToken') ID 'id'? ""{"" 'leftBrace' stmt_list ""}"" 'rightBrace' {{}}
	;
stmt_list
	: (stmt 'statement' ("";"" 'separator' | "","" 'separator')? stmt_list)?
	;
stmt
	: node_stmt
	| edge_stmt
	| attr_stmt
	| ID 'lhs' ""="" 'equalsToken' ID 'rhs' {{Alias}}
	| subgraph
	;
subgraph
	: (""subgraph"" 'subgraphToken' ID 'id'?)? ""{"" 'leftBrace' stmt_list ""}"" 'rightBrace' {{}}
	;
node_stmt
	: node_id 'nodeId' attr_list? {{NodeStatement}}
	;
node_id
	: ID 'identifier' port ? {{NodeIdentifier}}
	;
port
	: "":"" 'colonToken' ID 'identifier' ("":"" 'colonToken' compass_pt 'direction')?
	| "":"" 'colonToken' compass_pt 'direction'
	;
compass_pt
	: ""n"" | ""ne"" | ""e"" | ""se"" | ""s"" | ""sw"" | ""w"" | ""nw"" | ""c"" | ""_""
	;
edge_stmt
	: (node_id 'from' | subgraph 'from') edgeRHS attr_list? {{EdgeStatement}}
	;
edgeRHS
	: (<edgeop> 'edgeType' (node_id 'to' | subgraph 'to'))+
	;
attr_stmt
	: (""graph"" 'typeToken' | ""node"" 'typeToken' | ""edge"" 'typeToken') attr_list {{AttributeStatement}}
	;
attr_list
	: attr 'attribute'+
	;
attr 
	: ""["" 'leftBracket' a_list? ""]"" 'rightBracket' {{Attribute}}
	;
a_list
	: (attr_assignment 'assignment' ("";"" 'separator' | "","" 'separator')?)+
	;
attr_assignment 
	: ID 'lhs' ""="" 'equalsToken' ID 'rhs' {{AttributeAssignment}}
	;
ID
	: <ID>
	| <HTMLString>
	;"
]

{ #category : #generated }
DOTParser class >> reduceTable [
^#(
	#(32 0 #reduceActionForstmt_list1: 563201 false ) 
	#(51 1 #liftFirstValue: 1750017 false ) 
	#(51 1 #liftFirstValue: 1750018 false ) 
	#(33 1 #liftFirstValue: 648197 false ) 
	#(33 1 #liftFirstValue: 648193 false ) 
	#(35 1 #reduceActionFornode_stmt1: 863233 false ) 
	#(33 1 #liftFirstValue: 648194 false ) 
	#(33 1 #liftFirstValue: 648195 false ) 
	#(36 1 #reduceActionFornode_id1: 926721 false ) 
	#(43 2 #reduceActionForattr_stmt3: 1357827 false ) 
	#(44 1 #reduceActionForattr_list1: 1473537 false ) 
	#(45 1 #reduceActionForattr__attribute__1: 1486849 false ) 
	#(43 2 #reduceActionForattr_stmt3: 1357825 false ) 
	#(43 2 #reduceActionForattr_stmt3: 1357826 false ) 
	#(31 4 #reduceActionForgraph3: 416771 false ) 
	#(32 2 #reduceActionForstmt_list2: 563202 false ) 
	#(39 2 #reduceActionForedge_stmt3: 1198083 false ) 
	#(42 1 #reduceActionFor__edgeop___edgeType___node_id__to____subgraph__to____1: 1299457 false ) 
	#(40 1 #reduceActionForattr_list1: 1288193 false ) 
	#(39 2 #reduceActionForedge_stmt3: 1198081 false ) 
	#(35 2 #reduceActionFornode_stmt2: 863234 false ) 
	#(36 2 #reduceActionFornode_id2: 926722 false ) 
	#(31 4 #reduceActionForgraph3: 416769 false ) 
	#(46 2 #reduceActionForattr1: 1508353 false ) 
	#(49 1 #reduceActionFor__edgeop___edgeType___node_id__to____subgraph__to____1: 1591297 false ) 
	#(47 1 #reduceActionForattr_list1: 1581057 false ) 
	#(48 1 #reduceActionFor_attr_assignment__assignment________separator_________separator____1: 1591297 false ) 
	#(45 2 #reduceActionForattr__attribute__2: 1486850 false ) 
	#(34 3 #reduceActionForsubgraph1: 758785 false ) 
	#(32 3 #reduceActionForstmt_list4: 563204 false ) 
	#(32 3 #reduceActionForstmt_list4: 563203 false ) 
	#(41 2 #reduceActionFor__edgeop___edgeType___node_id__to____subgraph__to___2: 1299458 false ) 
	#(41 2 #reduceActionFor__edgeop___edgeType___node_id__to____subgraph__to___2: 1299457 false ) 
	#(39 3 #reduceActionForedge_stmt4: 1198084 false ) 
	#(42 2 #reduceActionFor__edgeop___edgeType___node_id__to____subgraph__to____2: 1299458 false ) 
	#(39 3 #reduceActionForedge_stmt4: 1198082 false ) 
	#(38 1 #liftFirstValue: 1117194 false ) 
	#(38 1 #liftFirstValue: 1117193 false ) 
	#(38 1 #liftFirstValue: 1117187 false ) 
	#(38 1 #liftFirstValue: 1117185 false ) 
	#(38 1 #liftFirstValue: 1117186 false ) 
	#(38 1 #liftFirstValue: 1117192 false ) 
	#(38 1 #liftFirstValue: 1117189 false ) 
	#(38 1 #liftFirstValue: 1117188 false ) 
	#(38 1 #liftFirstValue: 1117190 false ) 
	#(38 1 #liftFirstValue: 1117191 false ) 
	#(37 2 #reduceActionForport3: 984067 false ) 
	#(37 2 #reduceActionForport1: 984065 false ) 
	#(33 3 #reduceActionForstmt4: 648196 false ) 
	#(31 5 #reduceActionForgraph4: 416772 false ) 
	#(31 5 #reduceActionForgraph4: 416770 false ) 
	#(31 5 #reduceActionForgraph7: 416775 false ) 
	#(31 5 #reduceActionForgraph7: 416773 false ) 
	#(46 3 #reduceActionForattr2: 1508354 false ) 
	#(49 2 #reduceActionFor__edgeop___edgeType___node_id__to____subgraph__to____2: 1591298 false ) 
	#(48 2 #reduceActionFor__edgeop___edgeType___node_id__to____subgraph__to___2: 1591299 false ) 
	#(48 2 #reduceActionFor__edgeop___edgeType___node_id__to____subgraph__to___2: 1591298 false ) 
	#(34 4 #reduceActionForsubgraph2: 758786 false ) 
	#(31 6 #reduceActionForgraph8: 416776 false ) 
	#(31 6 #reduceActionForgraph8: 416774 false ) 
	#(50 3 #reduceActionForattr_assignment1: 1665025 false ) 
	#(34 5 #reduceActionForsubgraph3: 758787 false ) 
	#(37 4 #reduceActionForport2: 984066 false )
	).
]

{ #category : #generated }
DOTParser class >> scannerClass [
	^DOTScanner
]

{ #category : #generated }
DOTParser class >> startingStateForgraph [
	^ 1
]

{ #category : #generated }
DOTParser class >> symbolNames [
	^ #('","' '":"' '";"' '"="' '"["' '"]"' '"_"' '"c"' '"digraph"' '"e"' '"edge"' '"graph"' '"n"' '"ne"' '"node"' '"nw"' '"s"' '"se"' '"strict"' '"subgraph"' '"sw"' '"w"' '"{"' '"}"' '<comment>' '<whitespace>' '<startHTMLString>' '<ID>' '<edgeop>' 'B e g i n' 'graph' 'stmt_list' 'stmt' 'subgraph' 'node_stmt' 'node_id' 'port' 'compass_pt' 'edge_stmt' 'edgeRHS' '(<edgeop> ''edgeType'' (node_id ''to'' | subgraph ''to''))' '(<edgeop> ''edgeType'' (node_id ''to'' | subgraph ''to''))+' 'attr_stmt' 'attr_list' 'attr ''attribute''+' 'attr' 'a_list' '(attr_assignment ''assignment'' (";" ''separator'' | "," ''separator'')?)' '(attr_assignment ''assignment'' (";" ''separator'' | "," ''separator'')?)+' 'attr_assignment' 'ID' '<HTMLString>' 'E O F' 'error')
]

{ #category : #generated }
DOTParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DOTGraphNode #DOTGraphNode #OrderedCollection #DOTStatementNode #DOTSubgraphNode #DOTNodeStatementNode #DOTNodeIdentifierNode #OrderedCollection #SmaCCToken #DOTEdgeStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #DOTAttributeStatementNode #OrderedCollection #OrderedCollection #DOTAttributeNode #OrderedCollection #OrderedCollection #OrderedCollection #DOTAttributeAssignmentNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DOTParser class >> transitionTable [
^#(
#[1 0 9 0 9 0 13 0 12 0 17 0 19 0 21 0 31] 
#[1 0 25 0 23 0 33 0 28 0 33 0 51 0 33 0 52] 
#[1 0 41 0 23 0 45 0 28 0 45 0 51 0 45 0 52] 
#[1 0 49 0 9 0 53 0 12] 
#[0 0 0 0 53] 
#[1 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 0 77 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[0 0 10 0 1 0 2 0 3 0 4 0 5 0 6 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 109 0 23] 
#[0 0 14 0 1 0 2 0 3 0 4 0 5 0 6 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[1 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 0 113 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[0 0 117 0 23] 
#[1 0 121 0 23 0 125 0 28 0 125 0 51 0 125 0 52] 
#[1 0 129 0 23 0 133 0 28 0 133 0 51 0 133 0 52] 
#[1 0 137 0 5 0 141 0 44 0 145 0 45 0 149 0 46] 
#[1 0 137 0 5 0 153 0 44 0 145 0 45 0 149 0 46] 
#[1 0 137 0 5 0 157 0 44 0 145 0 45 0 149 0 46] 
#[1 0 161 0 23 0 165 0 28 0 165 0 51 0 165 0 52] 
#[1 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 0 169 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[0 0 173 0 24] 
#[1 0 177 0 1 0 181 0 3 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 0 185 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[1 0 18 0 1 0 18 0 3 0 18 0 11 0 18 0 12 0 18 0 15 0 18 0 20 0 18 0 23 0 18 0 24 0 18 0 28 0 189 0 29 0 193 0 40 0 197 0 41 0 201 0 42 0 18 0 52] 
#[0 0 22 0 1 0 3 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[1 0 26 0 1 0 26 0 3 0 137 0 5 0 26 0 11 0 26 0 12 0 26 0 15 0 26 0 20 0 26 0 23 0 26 0 24 0 26 0 28 0 189 0 29 0 205 0 40 0 197 0 41 0 201 0 42 0 209 0 44 0 145 0 45 0 149 0 46 0 26 0 52] 
#[0 0 30 0 1 0 3 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[0 0 34 0 1 0 3 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[1 0 38 0 1 0 213 0 2 0 38 0 3 0 217 0 4 0 38 0 5 0 38 0 11 0 38 0 12 0 38 0 15 0 38 0 20 0 38 0 23 0 38 0 24 0 38 0 28 0 38 0 29 0 221 0 37 0 38 0 52] 
#[1 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 0 225 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[0 0 229 0 24] 
#[1 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 0 233 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[1 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 0 237 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[0 0 241 0 23] 
#[1 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 0 245 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[0 0 249 0 23] 
#[1 0 253 0 6 1 17 0 28 1 1 0 47 1 5 0 48 1 9 0 49 1 13 0 50 1 17 0 51 1 17 0 52] 
#[0 0 42 0 1 0 3 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[1 0 46 0 1 0 46 0 3 0 137 0 5 0 46 0 11 0 46 0 12 0 46 0 15 0 46 0 20 0 46 0 23 0 46 0 24 0 46 0 28 1 21 0 46 0 46 0 52] 
#[0 0 50 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[0 0 54 0 1 0 3 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[0 0 58 0 1 0 3 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[1 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 1 25 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[0 1 29 0 23] 
#[0 1 33 0 24] 
#[0 0 62 0 53] 
#[1 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 1 37 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[1 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 1 41 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[0 0 66 0 24] 
#[1 0 69 0 20 0 73 0 23 1 53 0 28 1 45 0 34 1 49 0 36 1 53 0 51 1 53 0 52] 
#[1 0 70 0 1 0 70 0 3 0 137 0 5 0 70 0 11 0 70 0 12 0 70 0 15 0 70 0 20 0 70 0 23 0 70 0 24 0 70 0 28 1 57 0 44 0 145 0 45 0 149 0 46 0 70 0 52] 
#[0 0 74 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[1 0 78 0 1 0 78 0 3 0 78 0 5 0 78 0 11 0 78 0 12 0 78 0 15 0 78 0 20 0 78 0 23 0 78 0 24 0 78 0 28 0 189 0 29 1 61 0 41 0 78 0 52] 
#[1 0 82 0 1 0 82 0 3 0 137 0 5 0 82 0 11 0 82 0 12 0 82 0 15 0 82 0 20 0 82 0 23 0 82 0 24 0 82 0 28 1 65 0 44 0 145 0 45 0 149 0 46 0 82 0 52] 
#[0 0 86 0 1 0 3 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[1 1 109 0 7 1 109 0 8 1 109 0 10 1 109 0 13 1 109 0 14 1 109 0 16 1 109 0 17 1 109 0 18 1 109 0 21 1 109 0 22 1 113 0 28 1 109 0 38 1 113 0 51 1 113 0 52] 
#[0 1 117 0 28 0 51 0 52] 
#[0 0 90 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 1 121 0 24] 
#[0 0 94 0 53] 
#[0 1 125 0 24] 
#[0 1 129 0 24] 
#[1 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 1 133 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[0 1 137 0 24] 
#[1 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 1 141 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[0 0 98 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[0 1 145 0 6] 
#[0 0 102 0 6 0 28 0 52] 
#[1 0 106 0 6 1 17 0 28 1 149 0 48 1 13 0 50 1 17 0 51 1 17 0 52] 
#[1 1 153 0 1 1 157 0 3 0 110 0 6 0 110 0 28 0 110 0 52] 
#[0 1 161 0 4] 
#[0 0 114 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[0 1 165 0 24] 
#[1 0 57 0 11 0 61 0 12 0 65 0 15 0 69 0 20 0 73 0 23 0 6 0 24 0 105 0 28 1 169 0 32 0 81 0 33 0 85 0 34 0 81 0 35 0 93 0 36 0 81 0 39 0 81 0 43 0 105 0 51 0 105 0 52] 
#[0 0 118 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 122 0 24] 
#[0 0 126 0 24] 
#[0 0 130 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 134 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[1 0 38 0 1 0 213 0 2 0 38 0 3 0 38 0 5 0 38 0 11 0 38 0 12 0 38 0 15 0 38 0 20 0 38 0 23 0 38 0 24 0 38 0 28 0 38 0 29 0 221 0 37 0 38 0 52] 
#[0 0 138 0 1 0 3 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[0 0 142 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 146 0 1 0 3 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[0 0 150 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 154 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 158 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 162 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 166 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 170 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 174 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 178 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 182 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 186 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 190 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[1 0 194 0 1 1 173 0 2 0 194 0 3 0 194 0 5 0 194 0 11 0 194 0 12 0 194 0 15 0 194 0 20 0 194 0 23 0 194 0 24 0 194 0 28 0 194 0 29 0 194 0 52] 
#[0 0 198 0 1 0 3 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[0 0 202 0 53] 
#[0 0 206 0 53] 
#[0 0 210 0 53] 
#[0 1 177 0 24] 
#[0 0 214 0 53] 
#[0 1 181 0 24] 
#[0 0 218 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 52] 
#[0 0 222 0 6 0 28 0 52] 
#[0 0 226 0 6 0 28 0 52] 
#[0 0 230 0 6 0 28 0 52] 
#[0 1 185 0 28 0 51 0 52] 
#[0 0 234 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 1 189 0 24] 
#[0 1 193 0 7 0 8 0 10 0 13 0 14 0 16 0 17 0 18 0 21 0 22 0 38] 
#[0 0 238 0 53] 
#[0 0 242 0 53] 
#[0 0 246 0 1 0 3 0 6 0 28 0 52] 
#[0 0 250 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52] 
#[0 0 254 0 1 0 3 0 5 0 11 0 12 0 15 0 20 0 23 0 24 0 28 0 29 0 52]
	).
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionFor__edgeop___edgeType___node_id__to____subgraph__to___2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionFor__edgeop___edgeType___node_id__to____subgraph__to____1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionFor__edgeop___edgeType___node_id__to____subgraph__to____2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionFor_attr_assignment__assignment________separator_________separator____1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForattr1: nodes [
	| result |
	result := DOTAttributeNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForattr2: nodes [
	| result |
	result := DOTAttributeNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result assignments.
	result addTokens: ((nodes at: 2) at: 2) to: result separators.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForattr__attribute__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForattr__attribute__2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForattr_assignment1: nodes [
	| result |
	result := DOTAttributeAssignmentNode new.
	result lhs: (nodes at: 1).
	result equalsToken: (nodes at: 2).
	result rhs: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForattr_list1: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForattr_stmt3: nodes [
	| result |
	result := DOTAttributeStatementNode new.
	result typeToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result _attributes.
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForedge_stmt3: nodes [
	| result |
	result := DOTEdgeStatementNode new.
	result from: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result edgeTypes.
	result addNodes: ((nodes at: 2) at: 2) to: result tos.
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForedge_stmt4: nodes [
	| result |
	result := DOTEdgeStatementNode new.
	result from: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result edgeTypes.
	result addNodes: ((nodes at: 2) at: 2) to: result tos.
	result addNodes: (nodes at: 3) to: result _attributes.
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForgraph3: nodes [
	| result |
	result := DOTGraphNode new.
	result graphToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result addTokens: ((nodes at: 3) at: 2) to: result separators.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForgraph4: nodes [
	| result |
	result := DOTGraphNode new.
	result graphToken: (nodes at: 1).
	result id: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result statements.
	result addTokens: ((nodes at: 4) at: 2) to: result separators.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForgraph7: nodes [
	| result |
	result := DOTGraphNode new.
	result strictToken: (nodes at: 1).
	result graphToken: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result statements.
	result addTokens: ((nodes at: 4) at: 2) to: result separators.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForgraph8: nodes [
	| result |
	result := DOTGraphNode new.
	result strictToken: (nodes at: 1).
	result graphToken: (nodes at: 2).
	result id: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result statements.
	result addTokens: ((nodes at: 5) at: 2) to: result separators.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionFornode_id1: nodes [
	| result |
	result := DOTNodeIdentifierNode new.
	result addToken: (nodes at: 1) to: result identifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionFornode_id2: nodes [
	| result |
	result := DOTNodeIdentifierNode new.
	result addToken: (nodes at: 1) to: result identifiers.
	result addTokens: ((nodes at: 2) at: 1) to: result colonTokens.
	result addToken: ((nodes at: 2) at: 2) to: result identifiers.
	result direction: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionFornode_stmt1: nodes [
	| result |
	result := DOTNodeStatementNode new.
	result nodeId: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionFornode_stmt2: nodes [
	| result |
	result := DOTNodeStatementNode new.
	result nodeId: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result _attributes.
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForport1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForport2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	result at: 3 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForport3: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 3 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForstmt4: nodes [
	| result |
	result := DOTAliasNode new.
	result lhs: (nodes at: 1).
	result equalsToken: (nodes at: 2).
	result rhs: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForstmt_list1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForstmt_list2: nodes [
	| result |
	result := nodes at: 2.
	self addFirst: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForstmt_list4: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForsubgraph1: nodes [
	| result |
	result := DOTSubgraphNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result statements.
	result addTokens: ((nodes at: 2) at: 2) to: result separators.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForsubgraph2: nodes [
	| result |
	result := DOTSubgraphNode new.
	result subgraphToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result addTokens: ((nodes at: 3) at: 2) to: result separators.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DOTParser >> reduceActionForsubgraph3: nodes [
	| result |
	result := DOTSubgraphNode new.
	result subgraphToken: (nodes at: 1).
	result id: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result statements.
	result addTokens: ((nodes at: 4) at: 2) to: result separators.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #testing }
DOTParser >> tryAllTokens [
	^ true
]
