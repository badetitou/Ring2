private - backend access
pvtTagWith: aSymbol
	
	tags isRingResolved ifFalse: [ 
		self pvtCleanTags  ].
	
	tags add: aSymbol.	
	