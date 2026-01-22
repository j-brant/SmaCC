Class {
	#name : 'BaselineOfSmaCCNFAScanner',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfSmaCCNFAScanner',
	#package : 'BaselineOfSmaCCNFAScanner'
}

{ #category : 'baseline' }
BaselineOfSmaCCNFAScanner >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCDevelopment' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.133' ].

		spec package: 'SmaCC_NFA_Scanner' with: [
			spec requires: #(#SmaCCDevelopment) ].
	]
]
