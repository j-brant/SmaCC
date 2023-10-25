Class {
	#name : #PyMetaclassNode,
	#superclass : #PyRootNode,
	#instVars : [
		'metaclassToken',
		'equalToken',
		'superclass'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyMetaclassNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitMetaclass: self
]

{ #category : #generated }
PyMetaclassNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
PyMetaclassNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
PyMetaclassNode >> metaclassToken [
	^ metaclassToken
]

{ #category : #generated }
PyMetaclassNode >> metaclassToken: aSmaCCToken [
	metaclassToken := aSmaCCToken
]

{ #category : #generated }
PyMetaclassNode >> nodeVariables [
	^ #(#superclass)
]

{ #category : #generated }
PyMetaclassNode >> superclass [
	^ superclass
]

{ #category : #generated }
PyMetaclassNode >> superclass: aPyRootNode [
	self superclass notNil ifTrue: [ self superclass parent: nil ].
	superclass := aPyRootNode.
	self superclass notNil ifTrue: [ self superclass parent: self ]
]

{ #category : #generated }
PyMetaclassNode >> tokenVariables [
	^ #(#metaclassToken #equalToken)
]
