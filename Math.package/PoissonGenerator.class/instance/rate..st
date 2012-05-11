accessing
rate: anObject
	rate := anObject.
	nextMethod :=  (rate < self class thresholdForApproximation)
		ifTrue: [  #nextKnuth]
		ifFalse: [ #nextGaussian].