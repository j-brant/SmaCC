Class {
	#name : #ElixirEndEoeNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'end',
		'eoe'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirEndEoeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEndEoe: self
]

{ #category : #generated }
ElixirEndEoeNode >> end [
	^ end
]

{ #category : #generated }
ElixirEndEoeNode >> end: aSmaCCToken [
	end := aSmaCCToken
]

{ #category : #generated }
ElixirEndEoeNode >> eoe [
	^ eoe
]

{ #category : #generated }
ElixirEndEoeNode >> eoe: aSmaCCToken [
	eoe := aSmaCCToken
]

{ #category : #generated }
ElixirEndEoeNode >> tokenVariables [
	^ #(#end #eoe)
]
