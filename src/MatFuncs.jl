module MatFuncs

# package code goes here

import Base: getindex, size

export MatFunc

struct MatFunc{F, T} <: AbstractMatrix{T} 
    func::F
    dims::Tuple{Int,Int}
end

size(fm::MatFunc) = fm.dims
getindex(fm::MatFunc, i::Int, j::Int) = fm.func(i,j)

MatFunc(T::DataType, func::F, dims::Tuple{Int,Int}) where {F<:Function} = MatFunc{F,T}(func,dims)

end # module
