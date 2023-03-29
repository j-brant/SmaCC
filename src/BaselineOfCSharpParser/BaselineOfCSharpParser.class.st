Class {
	#name : #BaselineOfCSharpParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfCSharpParser
}

{ #category : #accessing }
BaselineOfCSharpParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_CSharp' with: [ spec requires: 'SmaCCRuntime' ] ]
]
