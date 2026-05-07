Class {
	#name : 'KotlinLambdaExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'annotations',
		'leftBrace',
		'semicolonTokens',
		'statements',
		'rightBrace',
		'arrowToken',
		'parameter',
		'commaTokens',
		'paramters',
		'label'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinLambdaExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitLambdaExpression: self
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> arrowToken [
	^ arrowToken
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> arrowToken: aSmaCCToken [
	arrowToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> compositeNodeVariables [
	^ #(#annotations #statements #paramters)
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> compositeTokenVariables [
	^ #(#semicolonTokens #commaTokens #leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
KotlinLambdaExpressionNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	semicolonTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
	paramters := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> label [
	^ label
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> label: aKotlinLabelNode [
	self label notNil ifTrue: [ self label parent: nil ].
	label := aKotlinLabelNode.
	self label notNil ifTrue: [ self label parent: self ]
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> nodeVariables [
	^ #(#parameter #label)
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> parameter [
	^ parameter
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> parameter: aKotlinMemberNode [
	self parameter notNil ifTrue: [ self parameter parent: nil ].
	parameter := aKotlinMemberNode.
	self parameter notNil ifTrue: [ self parameter parent: self ]
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> paramters [
	^ paramters
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> paramters: anOrderedCollection [
	self setParents: self paramters to: nil.
	paramters := anOrderedCollection.
	self setParents: self paramters to: self
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> semicolonTokens [
	^ semicolonTokens
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> semicolonTokens: anOrderedCollection [
	semicolonTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> statements [
	^ statements
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
KotlinLambdaExpressionNode >> tokenVariables [
	^ #(#leftBrace #rightBrace #arrowToken)
]
