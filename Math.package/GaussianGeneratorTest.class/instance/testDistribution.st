as yet unclassified
testDistribution
	| mean standardDeviation g |
	mean := 147.
	standardDeviation := 17.
	g := (GaussianGenerator new)
		mean: mean;
		standardDeviation: standardDeviation.
	g generator: LCRandom new.
	self checkDistributionOf: g withExpectedMeans: mean andExpectedStandardDeviation: standardDeviation