Extension { #name : 'RBNamespace' }

{ #category : '*SmaCC_Development' }
RBNamespace >> smaccDefineTrait: aString [
	| change newClass newClassName |
	change := changes defineClass: aString.
	newClassName := change changeClassName.
	newClass := self classNamed: newClassName.
	newClass
		ifNil: [ | newMetaclass |
			self unmarkAsRemoved: newClassName.
			newClass := RBClass named: newClassName.
			newMetaclass := RBMetaclass named: newClassName.
			newClass model: self.
			newMetaclass model: self.
			newClasses at: newClassName put: (Array with: newClass with: newMetaclass) ].
	newClass superclass: nil.
	self rootClasses add: newClass.
	newClass classSide superclass: nil.
	newClass instanceVariableNames: #().
	newClass classVariableNames: #().
	newClass poolDictionaryNames: #().
	SystemVersion current major >= 12
		ifTrue: [ newClass packageName: change package.
			newClass tagName: change tag ]
		ifFalse: [ newClass category: change category ].
	^ change
]
