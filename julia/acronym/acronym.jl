function acronym(phrase)
    acronym_letters = filter(!isempty,
                        split(uppercase(phrase), !character_filter)) .|> 
                        first
    acronym = ""
    for letter in acronym_letters
        acronym *= letter
    end
    acronym
end

# A function to filter out non-alphanumeric characters
function character_filter(input)
    return input == ''' || isletter(input) || !ispunct(input) && !isspace(input)
end