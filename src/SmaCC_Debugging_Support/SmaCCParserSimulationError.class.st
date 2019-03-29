Class {
	#name : #SmaCCParserSimulationError,
	#superclass : #Error,
	#category : #'SmaCC_Debugging_Support-Simulation'
}

{ #category : #testing }
SmaCCParserSimulationError >> isInputIncomplete [
	^ (self simulator symbolForId: self token ids first) name = 'E O F'
]

{ #category : #accessing }
SmaCCParserSimulationError >> simulator [
	^ self tag first
]

{ #category : #accessing }
SmaCCParserSimulationError >> token [
	^ self tag last
]
