Class {
	#name : 'JSVoidTypeNode',
	#superclass : 'JSTypeNode',
	#instVars : [
		'voidToken'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSVoidTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVoidType: self
]

{ #category : 'generated' }
JSVoidTypeNode >> tokenVariables [
	^ #(#voidToken)
]

{ #category : 'generated' }
JSVoidTypeNode >> voidToken [
	^ voidToken
]

{ #category : 'generated' }
JSVoidTypeNode >> voidToken: aSmaCCToken [
	voidToken := aSmaCCToken
]
