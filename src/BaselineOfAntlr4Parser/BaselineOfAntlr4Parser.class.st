Class {
	#name : #BaselineOfAntlr4Parser,
	#superclass : #BaselineOf,
	#category : #BaselineOfAntlr4Parser
}

{ #category : #accessing }
BaselineOfAntlr4Parser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_Antlr_Parser' with: [ spec requires: 'SmaCCRuntime' ] ]
]
