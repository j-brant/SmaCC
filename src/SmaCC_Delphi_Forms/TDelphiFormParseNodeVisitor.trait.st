Trait {
	#name : #TDelphiFormParseNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Delphi_Forms'
}

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitArray: anArray [
	^ self visitParse: anArray
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitBoolean: aBoolean [
	^ self visitLiteral: aBoolean
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitByteArray: aByteArray [
	^ self visitParse: aByteArray
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitBytes: aBytes [
	^ self visitLiteral: aBytes
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitCombinedString: aCombinedString [
	^ self visitParse: aCombinedString
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitFloat: aFloat [
	^ self visitLiteral: aFloat
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitInteger: anInteger [
	^ self visitLiteral: anInteger
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitItem: anItem [
	^ self visitParse: anItem
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitLiteral: aLiteral [
	^ self visitParse: aLiteral
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitNamedValue: aNamedValue [
	^ self visitParse: aNamedValue
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitObject: anObject [
	^ self visitParse: anObject
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitObjectArray: anObjectArray [
	^ self visitParse: anObjectArray
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitParse: aParse [
	^ self visitSmaCCParseNode: aParse
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitProperty: aProperty [
	^ self visitParse: aProperty
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitQualifiedName: aQualifiedName [
	^ self visitParse: aQualifiedName
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitSet: aSet [
	^ self visitParse: aSet
]

{ #category : #generated }
TDelphiFormParseNodeVisitor >> visitString: aString [
	^ self visitLiteral: aString
]
