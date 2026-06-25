Class {
	#name : 'CPPProgramNode',
	#superclass : 'SmaCCParseNode',
	#category : 'SmaCC_CPP_Parser-C++ AST',
	#package : 'SmaCC_CPP_Parser',
	#tag : 'C++ AST'
}

{ #category : 'generated' }
CPPProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]

{ #category : 'inspector - extensions' }
CPPProgramNode >> display [

	^self class name
]

{ #category : 'inspector - extensions' }
CPPProgramNode >> inspectionSmaccASTSourceCode [

	<inspectorPresentationOrder: 1.2 title: 'FASTSourceCode'>
	| hasSource sourceText |
	self topParent completeSource
		ifNil: [ hasSource := false. sourceText := 'Source code not available' ]
		ifNotNil: [ :source | hasSource := true. sourceText := source asString ].

	^ SpMorphPresenter new morph: (RubScrolledTextMorph new
			   setText: sourceText;
			   in: [ :this |
				   this textArea readOnly: true.
				   hasSource ifTrue: [
						   this selectionInterval: (self startPosition to: self stopPosition) ] ];
			   yourself)
]
