tests-solving
testSolveX0T0T1StepSize
	| solver stepper system dt finalState |
	dt := 0.2.
	system := ExplicitSystem block: [:x :t | (t * x ) exp].
	stepper := ExplicitStepper onSystem: system.
	stepper stepSize: dt.
	solver := (ODESolver new 
				system: system; 
				stepper: stepper).
	finalState := solver solve: solver system x0: 0 t0: 0  t1: 1 stepSize: dt. 
	self should: [finalState isFloat].
	
	"Debgging information"
	Transcript 
		show: self class name asByteString;  cr; 
		show: system block asText ; cr;
		show: 'from x(0) = 0 to x(1) = ';
		show: finalState; cr;
		show: 'with stepSize = ', solver dt printString; cr.