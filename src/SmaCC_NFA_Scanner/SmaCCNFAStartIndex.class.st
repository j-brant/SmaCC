Class {
	#name : 'SmaCCNFAStartIndex',
	#superclass : 'Object',
	#instVars : [
		'scopes',
		'firstInfos'
	],
	#category : 'SmaCC_NFA_Scanner',
	#package : 'SmaCC_NFA_Scanner'
}

{ #category : 'private' }
SmaCCNFAStartIndex >> firstInfoFor: aNode [
	^ firstInfos
		at: aNode
		ifAbsentPut: [ | pending seen nullable characters node |
			pending := OrderedCollection with: aNode.
			seen := IdentitySet new.
			nullable := false.
			characters := OrderedCollection new.
			[ pending notEmpty ]
				whileTrue: [ node := pending removeLast.
					(seen includes: node)
						ifFalse: [ seen add: node.
							node action notNil ifTrue: [ nullable := true ].
							node transitions
								do: [ :edge | 
									edge isCharacterTransition
										ifTrue: [ characters add: edge transitionObjects ]
										ifFalse: [ (edge isEpsilonTransition
												or: [ edge isStateEdge or: [ edge isConditionEdge ] ])
												ifTrue: [ pending add: edge to ] ] ] ] ].
			{nullable.
				characters asArray} ]
]

{ #category : 'private' }
SmaCCNFAStartIndex >> infoForEdge: anEdge [
	anEdge isCharacterTransition
		ifTrue: [ ^ {false.
				{anEdge transitionObjects}} ].
	^ self firstInfoFor: anEdge to
]

{ #category : 'initalization' }
SmaCCNFAStartIndex >> initialize [
	super initialize.
	scopes := IdentityDictionary new.
	firstInfos := IdentityDictionary new
]

{ #category : 'private' }
SmaCCNFAStartIndex >> transitions: transitions forScope: aScope character: aCharacter [
	| index plan selected |
	index := aCharacter
			ifNil: [ 257 ]
			ifNotNil: [ aCharacter asInteger > 255 ifTrue: [ ^ transitions ].
				aCharacter asInteger + 1 ].
	plan := scopes
			at: aScope
			ifAbsentPut: [ {Array new: 257.
					transitions
						collect: [ :edge | 
							{edge.
								self infoForEdge: edge} ]} ].
	selected := plan first at: index.
	selected
		ifNil: [ selected := ((plan second
					select: [ :entry | 
						entry second first
							or: [ aCharacter notNil
									and: [ entry second second
											anySatisfy: [ :characters | characters includes: aCharacter ] ] ] ])
					collect: #first) asArray.
			plan first at: index put: selected ].
	^ selected
]
