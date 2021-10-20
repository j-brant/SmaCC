Class {
	#name : #JSOptionalTemplateNode,
	#superclass : #JSOptionalNode,
	#instVars : [
		'template'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSOptionalTemplateNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOptionalTemplate: self
]

{ #category : #generated }
JSOptionalTemplateNode >> nodeVariables [
	^ #(#template)
]

{ #category : #generated }
JSOptionalTemplateNode >> template [
	^ template
]

{ #category : #generated }
JSOptionalTemplateNode >> template: aJSTemplateLiteralNode [
	self template notNil ifTrue: [ self template parent: nil ].
	template := aJSTemplateLiteralNode.
	self template notNil ifTrue: [ self template parent: self ]
]
