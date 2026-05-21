Class {
	#name : 'CSUsingNamespaceDirectiveNode',
	#superclass : 'CSUsingDirectiveNode',
	#category : 'SmaCC_CSharp',
	#package : 'SmaCC_CSharp'
}

{ #category : 'generated' }
CSUsingNamespaceDirectiveNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUsingNamespaceDirective: self
]
