function raindrops(number)
    result, sounds = "", ["Pling", "Plang", "Plong"]
    my_modulo = map(x -> number % x, [3,5,7])

    for i in 1:length(my_modulo)
        if my_modulo[i] == 0
            result = join([result, sounds[i]])
        end
    end
    if result > ""
        return result
    else 
        return "$number"
    end
end

@time raindrops.([155, 441, 3531, 491*7*5])