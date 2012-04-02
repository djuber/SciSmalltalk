
!BinomialGenerator methodsFor: 'as yet unclassified'!
next
	| x |
	x := 0.
	n timesRepeat: [ rng next <= p ifTrue: [ x := x + 1 ] ].
	^ x! !
