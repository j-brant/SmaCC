Class {
	#name : #YAMLAliasNode,
	#superclass : #YAMLValueNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLAliasNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitAlias: self
]

{ #category : #generated }
YAMLAliasNode >> name [
	^ name
]

{ #category : #generated }
YAMLAliasNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
YAMLAliasNode >> tokenVariables [
	^ #(#name)
]
