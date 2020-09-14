Extension { #name : #RBNamespace }

{ #category : #'*SmaCC_Development' }
RBNamespace >> smaccDefineTrait: aString [
	| change newClass newClassName |
	change := changes defineClass: aString.
	newClassName := change changeClassName.
	newClass := self classNamed: newClassName.
	newClass
		ifNil: [ | newMetaclass |
			self unmarkAsRemoved: newClassName.
			newClass := modelFactory rbClass named: newClassName.
			newMetaclass := modelFactory rbMetaclass named: newClassName.
			newClass model: self.
			newMetaclass model: self.
			newClasses
				at: newClassName
				put: (Array with: newClass with: newMetaclass) ].
	newClass superclass: nil.
	self rootClasses add: newClass.
	newClass classSide superclass: nil.
	newClass instanceVariableNames: #().
	newClass classVariableNames: #().
	newClass poolDictionaryNames: #().
	newClass category: change category.
	^ change
]
