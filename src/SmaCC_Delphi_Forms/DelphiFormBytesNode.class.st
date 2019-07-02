Class {
	#name : #DelphiFormBytesNode,
	#superclass : #DelphiFormLiteralNode,
	#category : #'SmaCC_Delphi_Forms'
}

{ #category : #generated }
DelphiFormBytesNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitBytes: self
]
