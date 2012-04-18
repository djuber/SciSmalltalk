as yet unclassified
testConstantGeneratorGenerateAlwaysTheSameValue
	| g numberOfTrials |
	g := ConstantGenerator new.
	g constant: 1.
	self assert: g next = g next.
	self assert: g next = g next