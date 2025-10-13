using Test
using RealQuo

@testset "Basic package tests" begin
    @test try
        OrbitsbyWT("A", 2)
        true
    catch
        false
    end
end
