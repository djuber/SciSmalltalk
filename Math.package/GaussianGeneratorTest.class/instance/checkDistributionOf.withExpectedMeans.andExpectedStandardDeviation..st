as yet unclassified
checkDistributionOf: aGenerator withExpectedMeans: e andExpectedStandardDeviation: sd
	| data m |
	data := Set new.
	10000 timesRepeat: [ data add: aGenerator next ].
	m := 0.
	data do: [ :each | m := each + m ].
	m := m / data size.
	self assert: e - m <= 0.2