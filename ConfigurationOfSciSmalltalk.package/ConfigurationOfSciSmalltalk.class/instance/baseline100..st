baselines
baseline100: spec 
        <version: '1.0-baseline'>
        
        spec for: #common do: [
                spec blessing: #baseline.
                spec repository: 'http://ss3.gemstone.com/ss/SciSmalltalk'.    
                spec 
                        package: 'Math-Complex';
                        package: 'Math-ComplexTests' with: [ spec requires: 'Math-Complex' ].
                spec
                        group: 'default' with: #('Core');
                        group: 'Core' with: #('Math-Complex');
                        group: 'Tests' with: #('Math-ComplexTests'). ].