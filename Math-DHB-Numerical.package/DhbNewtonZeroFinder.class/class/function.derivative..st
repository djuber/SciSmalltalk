creation
function: aBlock1 derivative: aBlock2
		"Convenience method to create a instance with given function block.
		 (c) Copyrights Didier BESSET, 1999, all rights reserved.
		 Initial code: 7/1/99 "
	^(self new) setFunction: aBlock1; setDerivative: aBlock2; yourself