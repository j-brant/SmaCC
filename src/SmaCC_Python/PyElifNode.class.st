Class {
	#name : #PyElifNode,
	#superclass : #PyRootNode,
	#instVars : [
		'elifToken',
		'elif',
		'colonToken',
		'statements',
		'nEWLINEToken',
		'iNDENTToken',
		'dEDENTToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyElifNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitElif: self
]

{ #category : #generated }
PyElifNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyElifNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyElifNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
PyElifNode >> dEDENTToken [
	^ dEDENTToken
]

{ #category : #generated }
PyElifNode >> dEDENTToken: aSmaCCToken [
	dEDENTToken := aSmaCCToken
]

{ #category : #generated }
PyElifNode >> elif [
	^ elif
]

{ #category : #generated }
PyElifNode >> elif: aPyRootNode [
	self elif notNil
		ifTrue: [ self elif parent: nil ].
	elif := aPyRootNode.
	self elif notNil
		ifTrue: [ self elif parent: self ]
]

{ #category : #generated }
PyElifNode >> elifToken [
	^ elifToken
]

{ #category : #generated }
PyElifNode >> elifToken: aSmaCCToken [
	elifToken := aSmaCCToken
]

{ #category : #generated }
PyElifNode >> iNDENTToken [
	^ iNDENTToken
]

{ #category : #generated }
PyElifNode >> iNDENTToken: aSmaCCToken [
	iNDENTToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyElifNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
PyElifNode >> nEWLINEToken [
	^ nEWLINEToken
]

{ #category : #generated }
PyElifNode >> nEWLINEToken: aSmaCCToken [
	nEWLINEToken := aSmaCCToken
]

{ #category : #generated }
PyElifNode >> nodeVariables [
	^ #(#elif)
]

{ #category : #generated }
PyElifNode >> statements [
	^ statements
]

{ #category : #generated }
PyElifNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
PyElifNode >> tokenVariables [
	^ #(#elifToken #colonToken #nEWLINEToken #iNDENTToken #dEDENTToken)
]
