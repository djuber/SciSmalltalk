as yet unclassified
nextKnuth
"appropriate for small rate. This method is linear in rate."
	| L k p |
	
	L := Float e raisedTo: rate negated.
	k := 0.
	p := 1.
	[p > L] whileTrue:
		[k := k + 1.
		p := p * rng next].
	^ k - 1.
