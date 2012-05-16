baselines
baseline100: spec 
        <version: '1.0-baseline'>
        
        spec for: #common do: [
                spec blessing: #baseline.
                spec repository: 'http://ss3.gemstone.com/ss/SciSmalltalk'.    
                spec 
			package: 'Math-DHB-Numerical';
			package: 'Math-DHB-Numerical-Tests' with: [spec requires: 'Math-DHB-Numerical'];
                        package: 'Math-Complex' with: [spec requires: 'Math-DHB-Numerical'];
                        package: 'Math-ComplexTests' with: [ spec requires: 'Math-Complex' ].
                spec
                        group: 'default' with: #('Core');
                        group: 'Core' with: #('Math-Complex' 'Math-DHB-Numerical');
                        group: 'Tests' with: #('Math-ComplexTests' 'Math-DHB-Numerical-Tests'). ].