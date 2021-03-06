accessing
nextFloat
    "Private - Answer a pseudo-Random floating point number between 0 and 1.
    Uses Park and Miller's 'Minimum Standard' congruential generator
    (see 'Numerical Recipes in C', 2nd Edition; Press, Flannery,
    Teukolsky and Vetterling; Cambridge University Press, 1992)."

    seed := self peekSeed.
    ^ seed / 16r7FFFFFFF asFloat 