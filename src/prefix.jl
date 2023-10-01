## SI prefixes ##
export quetta, ronna, yotta, zetta, exa, peta, tera, giga, mega, kilo, hecto, deca
export uni
export deci, centi, milli, micro, nano, pico, femto, atto, zepto, yocto, ronto, quecto

struct SIPrefix
    name::String
    symbol::String
    factor::Float64
end

Base.show(io::IO, ::MIME"text/plain", x::SIPrefix) = print(io, x.name)
Base.show(io::IO, x::SIPrefix) = print(io, x.symbol)

Base.broadcastable(x::SIPrefix) = x.factor

Base.:*(x::SIPrefix, y) = x.factor * y
Base.:*(x, y::SIPrefix) = x  * y.factor

Base.:/(x::SIPrefix, y) = x.factor / y
Base.:/(x, y::SIPrefix) = x / y.factor

# Prefixes > 1
const quetta = SIPrefix("quetta", "Q", 1e30)
const ronna = SIPrefix("ronna", "R", 1e27)
const yotta = SIPrefix("yotta", "Y", 1e24)
const zetta = SIPrefix("zetta", "Z", 1e21)
const exa = SIPrefix("exa", "E", 1e18)
const peta = SIPrefix("peta", "P", 1e15)
const tera = SIPrefix("tera", "T", 1e12)
const giga = SIPrefix("giga", "G", 1e9)
const mega = SIPrefix("mega", "M", 1e6)
const kilo = SIPrefix("kilo", "k", 1e3)
const hecto = SIPrefix("hecto", "h", 1e2)
const deca = SIPrefix("deca", "da", 1e1)

# Prefix = 1
const uni = SIPrefix("uni", "", 1e0)

# Prefixes < 1
const deci = SIPrefix("deci", "d", 1e-1)
const centi = SIPrefix("centi", "c", 1e-2)
const milli = SIPrefix("milli", "m", 1e-3)
const micro = SIPrefix("micro", "µ", 1e-6)
const nano = SIPrefix("nano", "n", 1e-9)
const pico = SIPrefix("pico", "p", 1e-12)
const femto = SIPrefix("femto", "f", 1e-15)
const atto = SIPrefix("atto", "a", 1e-18)
const zepto = SIPrefix("zepto", "z", 1e-21)
const yocto = SIPrefix("yocto", "y", 1e-24)
const ronto = SIPrefix("ronto", "r", 1e-27)
const quecto = SIPrefix("quecto", "q", 1e-30)
