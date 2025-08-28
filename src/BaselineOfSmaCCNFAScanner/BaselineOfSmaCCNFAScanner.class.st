Class {
	#name : #BaselineOfSmaCCNFAScanner,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmaCCNFAScanner
}

{ #category : #'as yet unclassified' }
BaselineOfSmaCCNFAScanner >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCDevelopment'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_NFA_Scanner' with: [ spec requires: 'SmaCCDevelopment' ] ]
]
