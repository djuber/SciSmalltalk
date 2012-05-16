*Math-Extensions
choose: anInteger
"answer the binomial coefficient"

((anInteger > self) not and: (anInteger < 0) not)
	ifTrue:
		[^ self factorial / ((anInteger factorial) * ((self - anInteger) factorial))]
	ifFalse:
		[^ 0]