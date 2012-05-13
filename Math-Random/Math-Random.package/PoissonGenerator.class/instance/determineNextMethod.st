accessing
determineNextMethod
		nextMethod :=  (rate < self class thresholdForApproximation)
		ifTrue: [  #nextKnuth]
		ifFalse: [ #nextGaussian].