Class {
	#name : 'JavaReceiverParameterNode',
	#superclass : 'JavaProgramNode',
	#instVars : [
		'annotations',
		'type',
		'thisToken',
		'qualifier',
		'period'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaReceiverParameterNode >> acceptVisitor: aProgramVisitor [

	^ aProgramVisitor visitReceiverParameter: self
]

{ #category : 'generated' }
JavaReceiverParameterNode >> annotations [

	^ annotations
]

{ #category : 'generated' }
JavaReceiverParameterNode >> annotations: anOrderedCollection [

	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
JavaReceiverParameterNode >> compositeNodeVariables [

	^ #( #annotations )
]

{ #category : 'generated-initialize-release' }
JavaReceiverParameterNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaReceiverParameterNode >> nodeVariables [

	^ #( #type )
]

{ #category : 'generated' }
JavaReceiverParameterNode >> period [

	^ period
]

{ #category : 'generated' }
JavaReceiverParameterNode >> period: aSmaCCToken [

	period := aSmaCCToken
]

{ #category : 'generated' }
JavaReceiverParameterNode >> qualifier [

	^ qualifier
]

{ #category : 'generated' }
JavaReceiverParameterNode >> qualifier: aSmaCCToken [

	qualifier := aSmaCCToken
]

{ #category : 'generated' }
JavaReceiverParameterNode >> thisToken [

	^ thisToken
]

{ #category : 'generated' }
JavaReceiverParameterNode >> thisToken: aSmaCCToken [

	thisToken := aSmaCCToken
]

{ #category : 'generated' }
JavaReceiverParameterNode >> tokenVariables [

	^ #( #thisToken #qualifier #period )
]

{ #category : 'generated' }
JavaReceiverParameterNode >> type [

	^ type
]

{ #category : 'generated' }
JavaReceiverParameterNode >> type: aJavaTypeNode [

	self type notNil ifTrue: [ self type parent: nil ].
	type := aJavaTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
