module LuxNeuralOperators

using PrecompileTools: @recompile_invalidations

@recompile_invalidations begin
    using ArgCheck: @argcheck
    using ChainRulesCore: ChainRulesCore, NoTangent
    using ConcreteStructs: @concrete
    using FFTW: FFTW, irfft, rfft
    using Lux
    using LuxCore: LuxCore, AbstractExplicitLayer
    using NNlib: NNlib, batched_transpose, ⊠
    using Random: Random, AbstractRNG
    using Reexport: @reexport
end

const CRC = ChainRulesCore

@reexport using Lux

const True = Val(true)
const False = Val(false)

include("transform.jl")

include("functional.jl")
include("layers.jl")

include("fno.jl")

export FourierTransform
export SpectralConv, OperatorConv, SpectralKernel, OperatorKernel
export FourierNeuralOperator

end
