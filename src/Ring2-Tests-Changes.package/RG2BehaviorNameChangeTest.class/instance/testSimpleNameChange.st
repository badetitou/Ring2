tests
testSimpleNameChange

	| class change |
	
	class := RG2Class named: #OldName.
	change := RG2BehaviorNameChange for: class from: #OldName to: #NewName.
	
	self assert: change behavior equals: class.
	self assert: change oldName equals: #OldName.
	self assert: change newName equals: #NewName.
	