*Ring2-Monticello
asMCSnapshot

	| definitions | 
	
	definitions := ((self definedClasses collect: #asMCDefinition), (self extensionMethods collect: #asMCDefinition)) asOrderedCollection.
	definitions addAll: (self definedBehaviors flatCollect: [ :behavior |
		behavior localMethods collect: [ :method | method asMCDefinition] ]).
	
	^ MCSnapshot fromDefinitions: definitions.