double dispatching
subtractWithRegularMatrix: aMatrix
		"Answers the sum of the receiver with aMatrix.
		 (c) Copyrights Didier BESSET, 1999, all rights reserved.
		 Initial code: 11/2/99 "
	^aMatrix subtractWithMatrix: self class: aMatrix class