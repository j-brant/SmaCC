Class {
	#name : #BaselineOfSmaCCSampleParsers,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmaCCSampleParsers
}

{ #category : #accessing }
BaselineOfSmaCCSampleParsers >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_C_Parser' with: [ spec requires: 'SmaCCRuntime' ];
				package: 'SmaCC_Elixir_Parser' with: [ spec requires: 'SmaCCRuntime' ];
				package: 'SmaCC_Generic_Smalltalk_Parser'
					with: [ spec requires: 'SmaCCRuntime' ];
				package: 'SmaCC_Line_Parser' with: [ spec requires: 'SmaCCRuntime' ];
				package: 'SmaCC_Smalltalk_Parser' with: [ spec requires: 'SmaCCRuntime' ] ]
]
