# Write a function to find pythagorean triplets in a given range.

function pythagorean_triplets(N)
    triplet = NTuple{3, Int}[]
    for a in 1:N, b in a+1:N
        c = N - a - b
        c == √(a^2 + b^2) ? push!(triplet, (a, b, c)) : ()
    end
    sort(triplet)
end

@time pythagorean_triplets(1500)