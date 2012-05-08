tests
testConstantGeneratorGenerateAlwaysTheSameValue
	| g |
	g := ConstantGenerator new.
	g constant: 1.
	self assert: g next = g next.
	self assert: g next = g next.
	self assert: g next = 1.