Class {
	#name : 'RustTypeNode',
	#superclass : 'RustProgramNode',
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitType: self
]
