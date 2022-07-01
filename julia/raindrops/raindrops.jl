function raindrops(number)
    result, sounds = "", ["Pling", "Plang", "Plong"]
    remainders = map(x -> number % x, [3,5,7])

    for (remainder, sound) in zip(remainders, sounds)
        remainder == 0 ? result = join([result, sound]) : ()
    end
    result > "" ? result : "$number"
end

@time raindrops.([155, 441, 3531, 491*7*5])