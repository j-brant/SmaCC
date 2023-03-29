Class {
	#name : #BaselineOfGraphQLParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfGraphQLParser
}

{ #category : #accessing }
BaselineOfGraphQLParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_GraphQL' with: [ spec requires: 'SmaCCRuntime' ] ]
]
