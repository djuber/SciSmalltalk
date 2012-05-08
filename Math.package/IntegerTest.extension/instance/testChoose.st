*Math-Random-Tests
testChoose
"Abramowitz and Stegun Section 24.1.1 II B 'Checks'  p. 822"
	| sum n r s |
	n := 100 random.
	 r := 100 random.
	s := (n - r) abs + 1.
	sum := 0.
	((0 to: n) do: [:m | sum := sum + ((r choose: m) * (s choose: (n - m)))]).
	self should: [sum =  ((r + s) choose: n)].
	
	n := 100 random.
	r := 100 random + n.
	sum := 0.
	(0 to: n) do: [:m | sum := (-1 raisedTo: n - m)  * (r choose: m) + sum].
	self should: [sum = ((r - 1) choose: n)].
	
	n :=  100 random.
	self should: [(n choose: 0) = (n choose: n)].
	self should: [(n choose: 0) = 1].
	self should: [(n choose: 1) = n]. 