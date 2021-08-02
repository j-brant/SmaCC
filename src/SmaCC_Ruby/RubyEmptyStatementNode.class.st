Class {
	#name : #RubyEmptyStatementNode,
	#superclass : #RubyExpressionNode,
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyEmptyStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEmptyStatement: self
]
