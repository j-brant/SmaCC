Class {
	#name : #BaselineOfGraphQLParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfGraphQLParser
}

{ #category : #baseline }
BaselineOfGraphQLParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.74' ].

		spec package: 'SmaCC_GraphQL' with: [
			spec requires: #('SmaCCRuntime') ].
	]
]
