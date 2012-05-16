versions
version110: spec 
        <version: '1.1' imports: #('1.0-baseline') >
        
        spec for: #common do: [
                spec blessing: #development.
                spec 
                        package: 'Math-Complex' with: 'Math-Complex-DanielUber.1';
                        package: 'Math-ComplexTests' with: 'Math-ComplexTests-DanielUber.3'].