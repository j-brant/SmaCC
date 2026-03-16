Class {
	#name : 'PyRootNode',
	#superclass : 'SmaCCParseNode',
	#category : 'SmaCC_Python',
	#package : 'SmaCC_Python'
}

{ #category : 'generated' }
PyRootNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitRoot: self
]
