Class {
	#name : #SmaCCStepToNextCharacterAction,
	#superclass : #SmaCCScannerStepToAction,
	#category : #'SmaCC_Debugging_Support-Debugger'
}

{ #category : #accessing }
SmaCCStepToNextCharacterAction class >> defaultIcon [
	^ icon
		ifNil: [ icon := Form
				extent: 12 @ 16
				depth: 32
				fromArray:
					#(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 0 0 0 0 0 0 0 0 0 0 0 4278190080 0 0 0 0 0 0 0 0 0 0 0 4278190080 0 0 0 0 0 0 0 0 0 0 0 4278190080 0 0 0 0 0 183891445 3526176045 4278190080 2891141971 4077653004 0 4278190080 0 0 0 0 234025714 4278190080 4044230158 1871745168 3843693082 4278190080 250737137 4278190080 0 0 0 0 3242081854 4278190080 0 0 0 3392484661 0 4278190080 0 0 0 0 3409196084 4278190080 0 0 0 0 0 4278190080 0 0 0 0 568254174 4278190080 3643156006 1002751172 3008121932 4278190080 50200061 4278190080 0 0 0 0 0 584965597 4194632965 4278190080 4244767234 1353691055 0 4278190080 0 0 0 0 0 0 0 0 0 0 0 4278190080 0 0 0 0 0 0 0 0 0 0 0 4278190080 0 0 0 0 0 0 0 0 0 0 0 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 )
				offset: 0 @ 0 ]
]

{ #category : #accessing }
SmaCCStepToNextCharacterAction class >> defaultName [
	^ 'Step Next Character'
]

{ #category : #accessing }
SmaCCStepToNextCharacterAction >> help [
	^ 'Run until we get to the character or a parse error is encountered.'
]

{ #category : #accessing }
SmaCCStepToNextCharacterAction >> stepToIndex [
	^ self session scanner stream position + 1
]
