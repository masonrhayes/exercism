using StatsBase

function wordcount(sentence)
    
    words = filter.(character_filter,
        split(sentence, " ") .|> 
        lowercase)
    
    words = filter(!isempty, words)

    for i in 1:length(words)
        words[i] = strip(words[i], [''', '\n', '\t', ' '])
    end
    @show words
    words != [""] ? countmap(words) : Dict{Any, Any}()
end

# A function to filter out non-alphanumeric characters
function character_filter(input)
    if isletter(input)
        return true
    elseif isnumeric(input)
        return true
    elseif input == ''' || input == " " || input == ","
        return true
    else
        return false
    end
end
