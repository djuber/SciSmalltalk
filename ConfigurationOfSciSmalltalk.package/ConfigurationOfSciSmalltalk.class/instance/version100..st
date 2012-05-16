versions
version100: spec 
        <version: '1.0' imports: #('1.0-baseline') >
        
        spec for: #common do: [
                spec blessing: #release.
                spec 
                        package: 'Math-Comples' with: 'Math-Complex-DanielUber.1';
                        package: 'Math-ComplexTests' with: 'Math-ComplexTests-DanielUber.3'].