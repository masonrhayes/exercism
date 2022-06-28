# Create a function to determine if a string is a pangram.

function ispangram(input::String)
    # Create a set of all the letters in the alphabet and a set of all the letters in the input string
    alphabet_set, input_set = Set('a':'z'), Set(lowercase(input))

    alphabet_set ⊆ input_set
end
