Class {
	#name : #BaselineOfVBNetParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfVBNetParser
}

{ #category : #accessing }
BaselineOfVBNetParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_VB_NET_Parser' with: [ spec requires: 'SmaCCRuntime' ] ]
]
