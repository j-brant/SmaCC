Class {
	#name : #CPPTemplateTypeNode,
	#superclass : #CPPTypeNode,
	#instVars : [
		'namespaceSpecifier',
		'templateToken',
		'template'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPTemplateTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTemplateType: self
]

{ #category : #generated }
CPPTemplateTypeNode >> namespaceSpecifier [
	^ namespaceSpecifier
]

{ #category : #generated }
CPPTemplateTypeNode >> namespaceSpecifier: aCPPNestedNameSpecifierNode [
	self namespaceSpecifier notNil
		ifTrue: [ self namespaceSpecifier parent: nil ].
	namespaceSpecifier := aCPPNestedNameSpecifierNode.
	self namespaceSpecifier notNil
		ifTrue: [ self namespaceSpecifier parent: self ]
]

{ #category : #generated }
CPPTemplateTypeNode >> nodeVariables [
	^ #(#namespaceSpecifier #template)
]

{ #category : #generated }
CPPTemplateTypeNode >> template [
	^ template
]

{ #category : #generated }
CPPTemplateTypeNode >> template: aCPPTemplateIdentifierNode [
	self template notNil
		ifTrue: [ self template parent: nil ].
	template := aCPPTemplateIdentifierNode.
	self template notNil
		ifTrue: [ self template parent: self ]
]

{ #category : #generated }
CPPTemplateTypeNode >> templateToken [
	^ templateToken
]

{ #category : #generated }
CPPTemplateTypeNode >> templateToken: aSmaCCToken [
	templateToken := aSmaCCToken
]

{ #category : #generated }
CPPTemplateTypeNode >> tokenVariables [
	^ #(#templateToken)
]
