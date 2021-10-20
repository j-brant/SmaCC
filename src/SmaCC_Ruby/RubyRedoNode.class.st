Class {
	#name : 'RubyRedoNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'redoToken'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyRedoNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRedo: self
]

{ #category : 'generated' }
RubyRedoNode >> redoToken [
	^ redoToken
]

{ #category : 'generated' }
RubyRedoNode >> redoToken: aSmaCCToken [
	redoToken := aSmaCCToken
]

{ #category : 'generated' }
RubyRedoNode >> tokenVariables [
	^ #(#redoToken)
]
