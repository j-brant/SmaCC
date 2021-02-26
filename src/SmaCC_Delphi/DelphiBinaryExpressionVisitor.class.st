Class {
	#name : #DelphiBinaryExpressionVisitor,
	#superclass : #DelphiProgramNodeVisitor,
	#classInstVars : [
		'operators'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #private }
DelphiBinaryExpressionVisitor class >> operators [
	^ operators
		ifNil:
			[ operators := #('OR' 'AND' 'XOR' ',' '+' '-' 'DIV' 'MOD' 'SHL' 'SHR' '*' '/' '@' '.' '^')
				asSet ]
]

{ #category : #testing }
DelphiBinaryExpressionVisitor >> isLeftAssociative: aString [
	^ self class operators includes: aString asUppercase
]

{ #category : #testing }
DelphiBinaryExpressionVisitor >> isPrecedenceOf: op1String higherThan: op2String [
	| index1 index2 |
	index1 := self precedenceOf: op1String.
	index2 := self precedenceOf: op2String.
	^ index1 notNil
		and:
			[ index2 notNil
				and:
					[ index1 > index2
						or: [ index1 = index2 and: [ self isLeftAssociative: op1String ] ] ] ]
]

{ #category : #testing }
DelphiBinaryExpressionVisitor >> precedenceOf: aString [
	| string table |
	string := aString asUppercase.
	table := #(#(':=') #('OR') #('AND') #('XOR') #(',') #('<>' '>' '<' '=' '<=' '>=' 'IN') #('AS' 'IS' 'ABSOLUTE') #('+' '-') #('DIV' 'MOD' 'SHL' 'SHR' '*' '/') #('@') #('.' '^')).
	1 to: table size do: [ :i | 
		((table at: i) includes: string)
			ifTrue: [ ^ i ] ].
	^ nil
]

{ #category : #private }
DelphiBinaryExpressionVisitor >> replaceNode: oldNode with: newNode in: aParentNode [
	1 to: aParentNode class instSize do: [ :i | 
		| var index |
		var := aParentNode instVarAt: i.
		var == oldNode
			ifTrue: [ aParentNode instVarAt: i put: newNode ].
		(var isKindOf: SequenceableCollection)
			ifTrue: [ index := var identityIndexOf: oldNode.
				index > 0
					ifTrue: [ var at: index put: newNode ] ] ]
]

{ #category : #visiting }
DelphiBinaryExpressionVisitor >> rotate: current [
	| pulledUp parent temp |
	parent := current parent.
	pulledUp := current rightExpression.
	temp := pulledUp leftExpression.
	pulledUp leftExpression: current.
	current rightExpression: temp.
	pulledUp parent: parent.
	temp := pulledUp leftParens.
	pulledUp leftParens: pulledUp leftExpression leftParens.
	pulledUp leftExpression leftParens: temp.
	temp := pulledUp rightParens.
	pulledUp rightParens: pulledUp leftExpression rightParens.
	pulledUp leftExpression rightParens: temp.
	pulledUp removePositions.
	pulledUp leftExpression removePositions.
	self replaceNode: current with: pulledUp in: pulledUp parent.
	pulledUp removeAttributeNamed: #startPosition.
	current removeAttributeNamed: #stopPosition.
	self visitBinaryExpression: current.
	^ pulledUp
]

{ #category : #visiting }
DelphiBinaryExpressionVisitor >> rotateAssignment: current [
	| assignment |
	assignment := current leftExpression.
	self replaceNode: current with: assignment in: current parent.
	current leftExpression: assignment value.
	assignment parent: current parent.
	assignment value: current.
	current leftExpression parent: current.
	assignment removeAttributeNamed: #stopPosition.
	assignment value removeAttributeNamed: #startPosition.
	^ assignment
]

{ #category : #visiting }
DelphiBinaryExpressionVisitor >> shouldRotate: current [
	^ (current rightExpression isKindOf: DelphiBinaryExpressionNode)
		and: [ current rightExpression leftParens isEmpty
				and: [ self
						isPrecedenceOf: current operator value
						higherThan: current rightExpression operator value ] ]
]

{ #category : #visiting }
DelphiBinaryExpressionVisitor >> shouldRotateAssignment: current [
	^ (current leftExpression isKindOf: DelphiAssignmentExpressionNode)
		and: [ current leftExpression leftParens isEmpty ]
]

{ #category : #visiting }
DelphiBinaryExpressionVisitor >> visitBinaryExpression: aBinaryExpression [
	| current |
	self acceptNode: aBinaryExpression leftExpression.
	self acceptNode: aBinaryExpression rightExpression.
	current := aBinaryExpression.
	[ self shouldRotate: current ]
		whileTrue: [ current := self rotate: current ].
	(self shouldRotateAssignment: current)
		ifTrue: [ current := self rotateAssignment: current ].
	^ current
]
