solving
solve: aSystem x0: initialState t0: initialTime t1: endTime stepSize: timeStep
	self dt: timeStep.
	^ self solve: aSystem  x0:  initialState  t0:  initialTime t1: endTime.