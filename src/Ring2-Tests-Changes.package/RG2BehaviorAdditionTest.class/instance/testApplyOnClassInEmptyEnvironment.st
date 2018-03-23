testing
testApplyOnClassInEmptyEnvironment

	| class emptyEnvironment change newClass |
	
	class := RG2Class named: #SomeClass.
	emptyEnvironment := RG2Environment new.

	change := RG2BehaviorAddition for: class.
	change applyIn: emptyEnvironment.

	self assert: emptyEnvironment ask behaviors size equals: 4.
	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: newClass notNil.
	self assert: newClass isClass.