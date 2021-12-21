module SimpleConstants

export c₀, μ₀, ε₀, η₀, ℎ, ℏ, e⁻, e⁺, Å, °
export πc₀, π²c₀, iπ, i2π, ℎc₀
export eV2meter, meter2eV
export yotta, zetta, exa, peta, tera, giga, mega, kilo, hecto, deca
export deci, centi, milli, micro, nano, pico, femto, atto, zepto, yocto

## Physical and mathematical constants
# Basic constants
const c₀ = 2.99_792_458e8  # speed of light in vacuum in m/s
const μ₀ = 1.256_637_062_12e-6  # vacuum permeability in H/m; previously 4π×10⁻⁷ H/m; see 2019 redefinition of SI base units
const ε₀ = 1 / (c₀^2 * μ₀)  # vacuum permittivity in F/m
const η₀ = √(μ₀ /ε₀)  # vacuum impedance in ohm (Ω)
const ℎ = 6.626_070_15e-34  # Planck constant in joule⋅sec (J⋅s); unicode character U+210E (entered by \planck tab)
const ℏ = ℎ / 2π  # reduced Planck constant in joule⋅sec (J·s); unicode character  U+210F
const e⁻ = -1.602_176_634e-19  # charge of single electron in coulomb (C); negative value
const e⁺ = -e⁻  # charge of single proton in coulomb (C); positive value
const Å = 1e-10  # angstrom in meter (m); unicode character U+212B (entered by \Angstrom tab)
const ° = π/180  # 180° = π

# Compound constants
const πc₀ = π * c₀  # e.g., angular frequency ω = 2πc₀ / λ
const π²c₀ = π^2 * c₀
const iπ = im * π  # e.g., exp(iπ/3)
const i2π = 2iπ  # e.g., exp(i2π/3)
const ℎc₀ = ℎ * c₀  # e.g., photon energy E = ℎc₀ / λ

eV2meter(E_ineV::Real) = (E_inJ = E_ineV * e⁺; λ_inmeter = ℎc₀ / E_inJ)  # λ = c₀ / ν = hc₀ / hν
meter2eV(λ_inmeter::Real) = (E_inJ = ℎc₀ / λ_inmeter; E_ineV = E_inJ / e⁺)

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
