Class {
	#name : #SmaCCRewriteEditor2,
	#superclass : #SpPresenterWithModel,
	#instVars : [
		'rewrites',
		'rule'
	],
	#category : #'SmaCC_Rewrite_Engine_UI'
}

{ #category : #specs }
SmaCCRewriteEditor2 class >> defaultSpec [
	^ (SpBoxLayout newLeftToRight)
		add: #rewrites;
		add: #rule;
		yourself
]

{ #category : #initialization }
SmaCCRewriteEditor2 >> initializePresenters [
	rewrites := (self newTree)
		display: [ :rewriteFile | rewriteFile displayString ];
		children: [ :rewriteFile | rewriteFile rewrites ];
		yourself.
	rule := self newText
]

{ #category : #initialization }
SmaCCRewriteEditor2 >> modelChanged [
	super modelChanged.
	self model ifNotNil: [ rewrites roots: { self model rewrites } ]
]
