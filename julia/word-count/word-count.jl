using StatsBase

function wordcount(sentence)
    
    words = split(lowercase(sentence), !acceptable_character, keepempty = false)
    
    filter(!isempty, # No empty elements counted as words
        strip.(ispunct, # Remove any leading or trailing punctuation of each word
            words)) |> 
                countmap # Count the number of times each word appears
end

# A function to filter out non-alphanumeric characters
function acceptable_character(input)
    return isletter(input) || isnumeric(input) || input == '''
end

