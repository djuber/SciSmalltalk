
RandomGenerator subclass: #MersenneTwisterRandom
	instanceVariableNames: 'states mti'
	classVariableNames: 'DefaultLengthVector Mt19937LowerMask Mt19937Mask Mt19937MatrixA Mt19937UpperMask PeriodParameter TemperingMaskB TemperingMaskC'
	poolDictionaries: ''
	category: 'Math-Random'!

!MersenneTwisterRandom commentStamp: 'hfm 3/24/2009 08:27' prior: 0!
See http://www.math.sci.hiroshima-u.ac.jp/~m-mat/MT/emt.html

" To get a pseudo-random float "
MersenneTwisterRandom new next. 

" To get a pseudo-random integer "
MersenneTwisterRandom new nextInteger.

!
