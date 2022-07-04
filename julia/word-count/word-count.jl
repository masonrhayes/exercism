using StatsBase

function wordcount(sentence)
    
    words = split(sentence, !acceptable_character, keepempty = false) .|> 
        lowercase

    for i in eachindex(words)
        words[i] = strip(words[i], [''', '\n', '\t', ' '])
    end
    words != [""] ? countmap(words) : Dict{Any, Any}()
end

# A function to filter out non-alphanumeric characters
function acceptable_character(input)
    if isletter(input)
        return true
    elseif isnumeric(input)
        return true
    elseif input == '''
        return true
    else
        return false
    end
end

