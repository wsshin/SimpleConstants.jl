using SimpleConstants
using Test

@testset "SimpleConstants.jl" begin
    λ = rand()  # wavelength
    @test 2πc₀/λ == 2π * c₀ / λ
    @test ℎc₀/λ == ℎ * c₀ / λ

    @test exp(i2π/3) == exp(im * 2π / 3)
    @test exp(iπ/3) == exp(im * π / 3)

    @test e⁻ < 0
    @test e⁺ > 0
    @test e⁻ + e⁺ == 0

    @test 180° ≈ π

    λ_inµm = rand()
    E_ineV = meter2eV(λ_inµm * micro)
    @test eV2meter(E_ineV) ≈ λ_inµm * micro
    @test meter2eV(λ_inµm * micro) ≈ E_ineV
    @test round(λ_inµm * E_ineV, digits=2) == 1.24  # (λ in µm) times (E in eV) is roughly 1.24

    @test issorted(getfield.(SI_PREFIXES, :factor))
    for prefix = SI_PREFIXES
        x = π
        @test x * prefix == x * prefix.factor
        @test prefix * x == prefix.factor * x
        @test x / prefix == x / prefix.factor
        @test prefix / x == prefix.factor / x
        @test x ^ prefix == x ^ prefix.factor
        @test prefix ^ x == prefix.factor ^ x

        xs = 1:10
        @test x .* prefix == x .* prefix.factor
        @test prefix .* x == prefix.factor .* x
        @test x ./ prefix == x ./ prefix.factor
        @test prefix ./ x == prefix.factor ./ x

        @test "$prefix" == prefix.symbol
    end
end
