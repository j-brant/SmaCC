Class {
	#name : 'SmaCCErrorTerminalSymbol',
	#superclass : 'SmaCCTerminalSymbol',
	#category : 'SmaCC_Development-Model',
	#package : 'SmaCC_Development',
	#tag : 'Model'
}

{ #category : 'accessing' }
SmaCCErrorTerminalSymbol >> modelTypes: anIdentitySet [
	^ Set with: (self model classFor: SmaCCErrorNode)
]
