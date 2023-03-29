Class {
	#name : #BaselineOfClojureParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfClojureParser
}

{ #category : #accessing }
BaselineOfClojureParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_Clojure' with: [ spec requires: 'SmaCCRuntime' ] ]
]
