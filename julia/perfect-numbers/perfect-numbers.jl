
function isperfect(num::Int)
    factor_sum(num) == num
end

function isabundant(num)
    factor_sum(num) > num
end

function isdeficient(num)
    factor_sum(num) < num
end

function factor_sum(num)
    num <= 0 ? throw(DomainError("Number must be positive")) : ()
    sum = 0
    for i = 1:num-1
        num % i == 0 ? sum = sum + i : sum = sum
    end
    sum
end