
# Create a basic rotational cipher

function rotate(key::Int, text)
    # Rotate the key to a positive integer between 0 and 26
    key = key % 26
    alphabet = 'a':'z'
    Alphabet = 'A':'Z'
    ciphertext = ""

    for char in collect(text)
        if char in alphabet
            index = indexin(char, alphabet)
            if index[1] + key > 26
                ciphertext *= alphabet[index[1] + key - 26]
            else
                ciphertext *= alphabet[index[1] + key]
            end
        elseif char in Alphabet 
            index = indexin(char, Alphabet)
            if index[1] + key > 26
                ciphertext *= Alphabet[index[1] + key - 26]
            else
                ciphertext *= Alphabet[index[1] + key]
            end
        else
            ciphertext *= char
        end
    end
    if typeof(text) == Char
        return collect(ciphertext)[1]
    elseif typeof(text) == String
        return ciphertext
    end
end
    
# Test the rotational cipher

rotate(13, "The quick brown fox jumps over the lazy dog, bro.")

rotate(14, "m")