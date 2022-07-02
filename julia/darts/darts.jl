
# Write a function that returns the score for a given dart throw.

function score(x,y)
    dist = sqrt(x^2 + y^2)

    dist <= 1 ? 10 : dist <= 5 ? 5 : dist <= 10 ? 1 : 0
end
