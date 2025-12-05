Class {
	#name : 'JSInterfaceDeclarationNode',
	#superclass : 'JSProgramNode',
	#instVars : [
		'interfaceToken',
		'name',
		'type',
		'extendsToken',
		'extends',
		'typeParameters'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSInterfaceDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInterfaceDeclaration: self
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> extends [
	^ extends
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> extends: aJSTypeReferenceNode [
	self extends notNil ifTrue: [ self extends parent: nil ].
	extends := aJSTypeReferenceNode.
	self extends notNil ifTrue: [ self extends parent: self ]
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> extendsToken [
	^ extendsToken
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> extendsToken: aSmaCCToken [
	extendsToken := aSmaCCToken
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> interfaceToken [
	^ interfaceToken
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> interfaceToken: aSmaCCToken [
	interfaceToken := aSmaCCToken
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> name [
	^ name
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> name: aJSNameExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> nodeVariables [
	^ #(#name #type #extends #typeParameters)
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> tokenVariables [
	^ #(#interfaceToken #extendsToken)
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> type [
	^ type
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> type: aJSObjectTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aJSObjectTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> typeParameters [
	^ typeParameters
]

{ #category : 'generated' }
JSInterfaceDeclarationNode >> typeParameters: aJSTypeParametersNode [
	self typeParameters notNil ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aJSTypeParametersNode.
	self typeParameters notNil ifTrue: [ self typeParameters parent: self ]
]
