# SimpleConstants

[![CI](https://github.com/wsshin/SimpleConstants.jl/workflows/CI/badge.svg)](https://github.com/wsshin/SimpleConstants.jl/actions)
[![Codecov](http://codecov.io/github/wsshin/SimpleConstants.jl/coverage.svg?branch=main)](http://codecov.io/github/wsshin/SimpleConstants.jl?branch=main)


**SimpleConstants** defines the values of some fundamental constants of physics in SI units.  [PhysicalConstants](https://github.com/JuliaPhysics/PhysicalConstants.jl) provides a complete set of fundamental constants with units, but in many cases of writing scientific code we care only about the values of the fundamental constants without units.  SimpleConstants is a lightweight package defining those values.  

SimpleConstants utilizes Unicode symbols as much as possible to define compact symbols to store the fundamental constants (e.g., `ε₀` instead of `eps_0` or `ε_0`).  It further promotes compactness by defining _compound constants_ that are products of fundamental constants that frequently appear in equations.  For example,
- the package defines `πc₀ = π * c₀`, with which the angular frequency of an electromagnetic wave of wavelength `λ` can be written `ω = 2πc₀ / λ` instead of `ω = 2π * c₀ / λ`;
- the package defines `i2π = im * 2π`, with which the complex exponential of an angle 120° can be written `exp(i2π/3)` instead of `exp(im * 2π / 3)`;
etc.

SimpleConstants also defines all the SI prefixes (e.g., `kilo` and `milli`).  [Unitful](https://github.com/PainterQubits/Unitful.jl) provides a complete set of those prefixes together with other units, but again, SimpleConstants is a lightweight package defining those prefixes.
