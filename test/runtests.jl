using SimpleConstants
using Test

@testset "SimpleConstants.jl" begin
    λ = rand()  # wavelength
    @test 2πc₀/λ == 2π * c₀ / λ
    @test ℎc₀/λ == ℎ * c₀ / λ

    @test exp(i2π/3) == exp(im * 2π / 3)
    @test exp(iπ/3) == exp(im * π / 3)
end
