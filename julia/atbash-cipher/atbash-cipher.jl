function encode(input)
    input = lowercase(input)
    output = ""

    for letter ∈ input
        if letter ∈ alphabet
            output *= reverse_alphabet[indexin(letter, alphabet)[1]]
        elseif isnumeric(letter)
            output *= letter
        end
    end
    join(collect(Iterators.partition(
                output, 5)) .|> 
                join,
                " ")
end



function decode(input)
    input = lowercase(input)
    output = ""

    for letter ∈ input
        if letter ∈ alphabet
            output *= alphabet[indexin(letter, reverse_alphabet)[1]] 
        elseif isnumeric(letter)
            output *= letter
        end
    end
    output
end


const alphabet = 'a':'z'
const reverse_alphabet = reverse(alphabet)