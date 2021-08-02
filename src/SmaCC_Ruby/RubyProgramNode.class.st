Class {
	#name : #RubyProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
