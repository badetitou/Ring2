tests
testOnClassInADifferentEnvironment

	| class class2 change |
	
	class := RGClass named: #NewName.
	class2 := RGClass named: #NewName.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	change reverseIn: class2 environment.
		
	self assert: class2 name equals: #OldName.