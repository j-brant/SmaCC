Class {
	#name : #YAMLMappingListNode,
	#superclass : #YAMLValueNode,
	#instVars : [
		'mappings'
	],
	#category : #'SmaCC_YAML-Parser'
}

{ #category : #generated }
YAMLMappingListNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitMappingList: self
]

{ #category : #generated }
YAMLMappingListNode >> compositeNodeVariables [
	^ #(#mappings)
]

{ #category : #'generated-initialize-release' }
YAMLMappingListNode >> initialize [
	super initialize.
	mappings := OrderedCollection new: 2.
]

{ #category : #generated }
YAMLMappingListNode >> mappings [
	^ mappings
]

{ #category : #generated }
YAMLMappingListNode >> mappings: anOrderedCollection [
	self setParents: self mappings to: nil.
	mappings := anOrderedCollection.
	self setParents: self mappings to: self
]

{ #category : #accessing }
YAMLMappingListNode >> object [
	| object mergeKeys |
	mergeKeys := Set new.
	object := OrderedDictionary new.
	self mappings
		do: [ :each | 
			| key value |
			value := each valueObject.
			each isMergeKey
				ifTrue: [ (value isDictionary
						ifTrue: [ {value} ]
						ifFalse: [ (value isCollection and: [ each isString not ])
								ifTrue: [ value select: #isDictionary ]
								ifFalse: [ #() ] ])
						do: [ :dict | 
							dict
								keysAndValuesDo: [ :k :v | 
									(mergeKeys includes: k)
										ifTrue: [ object at: k put: v ]
										ifFalse: [ object
												at: k
												ifAbsentPut: [ mergeKeys add: k.
													v ] ] ] ] ]
				ifFalse: [ key := each keyObject.
					mergeKeys remove: key ifAbsent: [  ].
					object at: key put: value ] ].
	^ object
]
