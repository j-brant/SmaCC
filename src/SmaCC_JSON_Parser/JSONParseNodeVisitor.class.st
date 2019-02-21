Class {
	#name : #JSONParseNodeVisitor,
	#superclass : #SmaCCParseNodeVisitor,
	#category : #'SmaCC_JSON_Parser'
}

{ #category : #generated }
JSONParseNodeVisitor >> visitArray: anArray [
	^ self visitParse: anArray
]

{ #category : #generated }
JSONParseNodeVisitor >> visitBoolean: aBoolean [
	^ self visitLiteral: aBoolean
]

{ #category : #generated }
JSONParseNodeVisitor >> visitLiteral: aLiteral [
	^ self visitParse: aLiteral
]

{ #category : #generated }
JSONParseNodeVisitor >> visitMember: aMember [
	^ self visitParse: aMember
]

{ #category : #generated }
JSONParseNodeVisitor >> visitNull: aNull [
	^ self visitLiteral: aNull
]

{ #category : #generated }
JSONParseNodeVisitor >> visitNumber: aNumber [
	^ self visitLiteral: aNumber
]

{ #category : #generated }
JSONParseNodeVisitor >> visitObject: anObject [
	^ self visitParse: anObject
]

{ #category : #generated }
JSONParseNodeVisitor >> visitParse: aParse [
	^ self visitSmaCCParseNode: aParse
]

{ #category : #generated }
JSONParseNodeVisitor >> visitString: aString [
	^ self visitLiteral: aString
]
