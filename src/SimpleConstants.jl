module SimpleConstants

export c₀, μ₀, ε₀, η₀, ℎ, ℏ, Å
export πc₀, π²c₀, iπ, i2π, ℎc₀
export yotta, zetta, exa, peta, tera, giga, mega, kilo, hecto, deca
export deci, centi, milli, micro, nano, pico, femto, atto, zepto, yocto

# Basic constants
const c₀ = 2.99_792_458e8  # in m/s
const μ₀ = 1.256_637_062_12e-6  # in H/m; previously 4π×10⁻⁷ H/m; see 2019 redefinition of SI base units
const ε₀ = 1 / (c₀^2 * μ₀)  # in F/m
const η₀ = √(μ₀ /ε₀)  # in Ohm
const ℎ = 4.135_667_696e-15  # in eV·sec
const ℏ = ℎ / 2π  # in eV·sec

# Compound constants
const πc₀ = π * c₀
const π²c₀ = π^2 * c₀
const iπ = im * π
const i2π = 2iπ
const ℎc₀ = ℎ * c₀

## SI prefixes
# Prefixes > 1
const yotta = 1e24
const zetta = 1e21
const exa = 1e18
const peta = 1e15
const tera = 1e12
const giga = 1e9
const mega = 1e6
const kilo = 1e3
const hecto = 1e2
const deca = 1e1

# Prefixes < 1
const deci = 1e-1
const centi = 1e-2
const milli = 1e-3
const micro = 1e-6
const nano = 1e-9
const pico = 1e-12
const femto = 1e-15
const atto = 1e-18
const zepto = 1e-21
const yocto = 1e-24

end
