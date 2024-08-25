Class {
	#name : #SmaCCRewriteLink,
	#superclass : #Object,
	#instVars : [
		'rewrite',
		'next'
	],
	#category : #'SmaCC_Rewrite_Engine'
}

{ #category : #comparing }
SmaCCRewriteLink >> = anObject [
	^ self class = anObject class
		and: [ self rewrite = anObject rewrite and: [ self next = anObject next ] ]
]

{ #category : #accessing }
SmaCCRewriteLink >> allRewrites [
	| rewrites current |
	rewrites := OrderedCollection new.
	current := self.
	[ current notNil ]
		whileTrue: [ rewrites add: current rewrite.
			current := current next ].
	^ rewrites
]

{ #category : #comparing }
SmaCCRewriteLink >> hash [
	^ (self class hash bitXor: self rewrite hash) hashMultiply
		bitXor: self next hash
]

{ #category : #accessing }
SmaCCRewriteLink >> next [
	^ next
]

{ #category : #accessing }
SmaCCRewriteLink >> next: anObject [
	next := anObject
]

{ #category : #printing }
SmaCCRewriteLink >> printOn: aStream [
	aStream
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: rewrite displayString;
		nextPut: $)
]

{ #category : #accessing }
SmaCCRewriteLink >> rewrite [
	^ rewrite
]

{ #category : #accessing }
SmaCCRewriteLink >> rewrite: anObject [
	rewrite := anObject
]
