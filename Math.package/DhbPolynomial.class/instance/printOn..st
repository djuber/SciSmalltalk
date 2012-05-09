display
printOn: aStream 
	"Append to aStream a written representation of the receiver. 
	(c) Copyrights Didier BESSET, 1999, all rights reserved. 
	Initial code: 4/1/99"

	| n firstNonZeroCoefficientPrinted |
	n := 0.
	firstNonZeroCoefficientPrinted := false.
	coefficients
		reverseDo: 
			[:each | 
			each = 0
				ifFalse: 
					[firstNonZeroCoefficientPrinted
						ifTrue: 
							[aStream space.
							each < 0 ifFalse: [aStream nextPut: $+].
							aStream space]
						ifFalse: [firstNonZeroCoefficientPrinted := true].
					(each = 1 and: [n > 0])
						ifFalse: [each printOn: aStream].
					n > 0
						ifTrue: 
							[aStream nextPutAll: ' X'.
							n > 1
								ifTrue: 
									[aStream nextPut: $^.
									n printOn: aStream]]].
			n := n + 1]