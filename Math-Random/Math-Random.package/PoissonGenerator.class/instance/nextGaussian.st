as yet unclassified
nextGaussian
	"For large rate, the poisson is approximable by a Gaussian Distribution "
	^ ((GaussianGenerator new ) 
		mean: rate; 
		standardDeviation:  rate sqrt; 
		generator: rng;
		next) asInteger.