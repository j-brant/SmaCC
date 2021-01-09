Class {
	#name : #PyElifsOptNode,
	#superclass : #PyRootNode,
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyElifsOptNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitElifsOpt: self
]
