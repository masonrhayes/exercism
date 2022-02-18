

function isarmstrong(x::Int64)
    number = sum(digits(x) .^ length(digits(x))) == x
end


