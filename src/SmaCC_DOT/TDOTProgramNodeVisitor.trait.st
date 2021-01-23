Trait {
	#name : #TDOTProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_DOT'
}

{ #category : #generated }
TDOTProgramNodeVisitor >> visitAlias: anAlias [
	^ self visitStatement: anAlias
]

{ #category : #generated }
TDOTProgramNodeVisitor >> visitAttribute: anAttribute [
	^ self visitProgram: anAttribute
]

{ #category : #generated }
TDOTProgramNodeVisitor >> visitAttributeAssignment: anAttributeAssignment [
	^ self visitProgram: anAttributeAssignment
]

{ #category : #generated }
TDOTProgramNodeVisitor >> visitAttributeStatement: anAttributeStatement [
	^ self visitStatement: anAttributeStatement
]

{ #category : #generated }
TDOTProgramNodeVisitor >> visitEdgeStatement: anEdgeStatement [
	^ self visitStatement: anEdgeStatement
]

{ #category : #generated }
TDOTProgramNodeVisitor >> visitGraph: aGraph [
	^ self visitProgram: aGraph
]

{ #category : #generated }
TDOTProgramNodeVisitor >> visitNodeIdentifier: aNodeIdentifier [
	^ self visitProgram: aNodeIdentifier
]

{ #category : #generated }
TDOTProgramNodeVisitor >> visitNodeStatement: aNodeStatement [
	^ self visitStatement: aNodeStatement
]

{ #category : #generated }
TDOTProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TDOTProgramNodeVisitor >> visitStatement: aStatement [
	^ self visitProgram: aStatement
]

{ #category : #generated }
TDOTProgramNodeVisitor >> visitSubgraph: aSubgraph [
	^ self visitStatement: aSubgraph
]
