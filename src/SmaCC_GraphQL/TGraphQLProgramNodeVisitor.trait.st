Trait {
	#name : #TGraphQLProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitArgument: anArgument [
	^ self visitProgram: anArgument
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitDirective: aDirective [
	^ self visitProgram: aDirective
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitDirectiveDefinition: aDirectiveDefinition [
	^ self visitProgram: aDirectiveDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitDocument: aDocument [
	^ self visitProgram: aDocument
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitEnumTypeDefinition: anEnumTypeDefinition [
	^ self visitTypeDefinition: anEnumTypeDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitEnumTypeExtension: anEnumTypeExtension [
	^ self visitTypeExtension: anEnumTypeExtension
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitEnumValue: anEnumValue [
	^ self visitProgram: anEnumValue
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitEnumValueDefinition: anEnumValueDefinition [
	^ self visitProgram: anEnumValueDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitField: aField [
	^ self visitProgram: aField
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitFieldDefinition: aFieldDefinition [
	^ self visitProgram: aFieldDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitFragmentDefinition: aFragmentDefinition [
	^ self visitProgram: aFragmentDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitFragmentSpread: aFragmentSpread [
	^ self visitProgram: aFragmentSpread
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitInlineFragment: anInlineFragment [
	^ self visitProgram: anInlineFragment
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitInputObjectTypeDefinition: anInputObjectTypeDefinition [
	^ self visitTypeDefinition: anInputObjectTypeDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitInputObjectTypeExtension: anInputObjectTypeExtension [
	^ self visitTypeExtension: anInputObjectTypeExtension
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitInputValueDefinition: anInputValueDefinition [
	^ self visitProgram: anInputValueDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitInterfaceTypeDefinition: anInterfaceTypeDefinition [
	^ self visitTypeDefinition: anInterfaceTypeDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitInterfaceTypeExtension: anInterfaceTypeExtension [
	^ self visitTypeExtension: anInterfaceTypeExtension
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitListType: aListType [
	^ self visitType: aListType
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitListValue: aListValue [
	^ self visitProgram: aListValue
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitLiteral: aLiteral [
	^ self visitProgram: aLiteral
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitNamedType: aNamedType [
	^ self visitType: aNamedType
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitObjectField: anObjectField [
	^ self visitProgram: anObjectField
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitObjectTypeDefinition: anObjectTypeDefinition [
	^ self visitTypeDefinition: anObjectTypeDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitObjectTypeExtension: anObjectTypeExtension [
	^ self visitTypeExtension: anObjectTypeExtension
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitObjectValue: anObjectValue [
	^ self visitProgram: anObjectValue
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitOperationDefinition: anOperationDefinition [
	^ self visitProgram: anOperationDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitScalarTypeDefinition: aScalarTypeDefinition [
	^ self visitTypeDefinition: aScalarTypeDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitScalarTypeExtension: aScalarTypeExtension [
	^ self visitTypeExtension: aScalarTypeExtension
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitSchemaDefinition: aSchemaDefinition [
	^ self visitProgram: aSchemaDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitSchemaExtension: aSchemaExtension [
	^ self visitProgram: aSchemaExtension
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitType: aType [
	^ self visitProgram: aType
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitTypeDefinition: aTypeDefinition [
	^ self visitProgram: aTypeDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitTypeExtension: aTypeExtension [
	^ self visitProgram: aTypeExtension
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitUnionTypeDefinition: anUnionTypeDefinition [
	^ self visitTypeDefinition: anUnionTypeDefinition
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitUnionTypeExtension: anUnionTypeExtension [
	^ self visitTypeExtension: anUnionTypeExtension
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitVariable: aVariable [
	^ self visitProgram: aVariable
]

{ #category : #generated }
TGraphQLProgramNodeVisitor >> visitVariableDefinition: aVariableDefinition [
	^ self visitProgram: aVariableDefinition
]
