Class {
	#name : #SmaCCDefinitionNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #generated }
SmaCCDefinitionNode >> acceptVisitor: aDefinitionVisitor [
	^ aDefinitionVisitor visitDefinition: self
]

{ #category : #testing }
SmaCCDefinitionNode >> isGroup [
	^ false
]
