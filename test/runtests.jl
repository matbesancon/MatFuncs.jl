import MatFuncs
using Base.Test

function ident(i,j)
    if i == j
        1
    else
        0
    end
end
fm = MatFuncs.MatFunc(Int64, ident, (100,100))
@test fm[1,1] == 1
@test fm[1,2] == 0

function identlong(i,j)
    sleep(2)
    if i == j
        1
    else
        0
    end
end

fm2 = MatFuncs.MatFunc(Int64, identlong, (100000,100000))
@test fm2[1,1] == 1
@test fm2[1,2] == 0
