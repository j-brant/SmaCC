Class {
	#name : 'BaselineOfTeradataParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfTeradataParser',
	#package : 'BaselineOfTeradataParser'
}

{ #category : 'accessing' }
BaselineOfTeradataParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				package: 'SmaCC_Teradata_Parser' with: [ spec requires: 'SmaCCRuntime' ] ]
]
