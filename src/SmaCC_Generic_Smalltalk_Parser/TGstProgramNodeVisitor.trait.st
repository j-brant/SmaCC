Trait {
	#name : #TGstProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Generic_Smalltalk_Parser'
}

{ #category : #generated }
TGstProgramNodeVisitor >> visitArrayLiteral: anArrayLiteral [
	^ self visitLiteral: anArrayLiteral
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitAssignment: anAssignment [
	^ self visitValue: anAssignment
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitBinaryMessage: aBinaryMessage [
	^ self visitMessage: aBinaryMessage
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitBlock: aBlock [
	^ self visitValue: aBlock
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitBooleanLiteral: aBooleanLiteral [
	^ self visitLiteral: aBooleanLiteral
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitByteArrayLiteral: aByteArrayLiteral [
	^ self visitArrayLiteral: aByteArrayLiteral
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitCascade: aCascade [
	^ self visitValue: aCascade
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitCharacterLiteral: aCharacterLiteral [
	^ self visitLiteral: aCharacterLiteral
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitKeywordMessage: aKeywordMessage [
	^ self visitMessage: aKeywordMessage
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitLiteral: aLiteral [
	^ self visitValue: aLiteral
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitMessage: aMessage [
	^ self visitProgram: aMessage
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitMessageSend: aMessageSend [
	^ self visitValue: aMessageSend
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitMethod: aMethod [
	^ self visitProgram: aMethod
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitNilLiteral: aNilLiteral [
	^ self visitLiteral: aNilLiteral
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitNumberLiteral: aNumberLiteral [
	^ self visitLiteral: aNumberLiteral
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitReturn: aReturn [
	^ self visitProgram: aReturn
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitSequence: aSequence [
	^ self visitProgram: aSequence
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitStringLiteral: aStringLiteral [
	^ self visitLiteral: aStringLiteral
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitSymbolLiteral: aSymbolLiteral [
	^ self visitLiteral: aSymbolLiteral
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitUnaryMessage: anUnaryMessage [
	^ self visitMessage: anUnaryMessage
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitValue: aValue [
	^ self visitProgram: aValue
]

{ #category : #generated }
TGstProgramNodeVisitor >> visitVariable: aVariable [
	^ self visitValue: aVariable
]
