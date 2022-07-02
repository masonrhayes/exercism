
# Create a basic rotational cipher

function rotate(key::Int, char::Char)
    if islowercase(char)
        'a' + (char - 'a' + key) % 26
    elseif isuppercase(char)
        'A' + (char -'A' + key) % 26
    else
        char
    end
end

# Use multiple dispatch to call the above function for a String

rotate(key, str::String) = map(char -> rotate(key, char), str)