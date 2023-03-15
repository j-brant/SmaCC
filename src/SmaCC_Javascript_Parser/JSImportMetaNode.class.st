Class {
	#name : #JSImportMetaNode,
	#superclass : #JSExpressionNode,
	#instVars : [
		'importToken',
		'periodToken',
		'metaToken'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSImportMetaNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportMeta: self
]

{ #category : #generated }
JSImportMetaNode >> importToken [
	^ importToken
]

{ #category : #generated }
JSImportMetaNode >> importToken: aSmaCCToken [
	importToken := aSmaCCToken
]

{ #category : #generated }
JSImportMetaNode >> metaToken [
	^ metaToken
]

{ #category : #generated }
JSImportMetaNode >> metaToken: aSmaCCToken [
	metaToken := aSmaCCToken
]

{ #category : #generated }
JSImportMetaNode >> periodToken [
	^ periodToken
]

{ #category : #generated }
JSImportMetaNode >> periodToken: aSmaCCToken [
	periodToken := aSmaCCToken
]

{ #category : #generated }
JSImportMetaNode >> tokenVariables [
	^ #(#importToken #periodToken #metaToken)
]
