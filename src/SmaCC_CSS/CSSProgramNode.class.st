Class {
	#name : 'CSSProgramNode',
	#superclass : 'SmaCCParseNode',
	#category : 'SmaCC_CSS',
	#package : 'SmaCC_CSS'
}

{ #category : 'generated' }
CSSProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]

{ #category : 'as yet unclassified' }
CSSProgramNode >> isBlockNode [
	^false
]
