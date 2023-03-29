Class {
	#name : #BaselineOfRustParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfRustParser
}

{ #category : #accessing }
BaselineOfRustParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_Rust' with: [ spec requires: 'SmaCCRuntime' ] ]
]
