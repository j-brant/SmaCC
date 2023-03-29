Class {
	#name : #BaselineOfJavaParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfJavaParser
}

{ #category : #accessing }
BaselineOfJavaParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_Java' with: [ spec requires: 'SmaCCRuntime' ] ]
]
