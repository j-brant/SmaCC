Class {
	#name : #CSFileScopedNamespaceDeclarationNode,
	#superclass : #CSNamespaceDeclarationNode,
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSFileScopedNamespaceDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFileScopedNamespaceDeclaration: self
]
