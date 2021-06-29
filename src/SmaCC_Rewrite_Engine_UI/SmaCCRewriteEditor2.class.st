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
	^ (SpPanedLayout newLeftToRight)
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
	rule := (self newPresenter)
		layout: SpBoxLayout newLeftToRight;
		yourself.
	rewrites transmitDo: [ :rewrite | rewrite ifNotNil: [ rewrite buildSpec2InterfaceIn: rule ] ]
]

{ #category : #initialization }
SmaCCRewriteEditor2 >> modelChanged [
	super modelChanged.
	self model ifNotNil: [ rewrites roots: { self model rewrites } ]
]
