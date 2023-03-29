Class {
	#name : #BaselineOfSmaCCRuntime,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmaCCRuntime
}

{ #category : #accessing }
BaselineOfSmaCCRuntime >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'SmaCC_Runtime';
				package: 'SmaCC_GLR_Runtime' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_Source_Editing' ]
]
