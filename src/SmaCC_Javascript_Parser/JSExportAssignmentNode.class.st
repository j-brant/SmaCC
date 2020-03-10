Class {
	#name : #JSExportAssignmentNode,
	#superclass : #JSTSExportNode,
	#instVars : [
		'equalToken',
		'name',
		'semicolon'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSExportAssignmentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExportAssignment: self
]

{ #category : #generated }
JSExportAssignmentNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
JSExportAssignmentNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
JSExportAssignmentNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JSExportAssignmentNode >> name [
	^ name
]

{ #category : #generated }
JSExportAssignmentNode >> name: aJSNameExpressionNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSExportAssignmentNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
JSExportAssignmentNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSExportAssignmentNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSExportAssignmentNode >> tokenVariables [
	^ #(#equalToken #exportToken)
]
