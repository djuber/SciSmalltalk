tests
testProductWithVector
| v c |
c := (1 + 1 i).
v := DhbVector new: 1.
v at: 1 put: 1.
"Next line won't work without DhbVector>>adaptToComplex:andSend:"
"self should: [((c * v) at: 1) = c ]."
self should: [(v * c at: 1) = c].
