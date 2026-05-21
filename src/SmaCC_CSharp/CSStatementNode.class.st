Class {
	#name : 'CSStatementNode',
	#superclass : 'CSProgramNode',
	#category : 'SmaCC_CSharp',
	#package : 'SmaCC_CSharp'
}

{ #category : 'generated' }
CSStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStatement: self
]
