"Calculating the Hamming Distance of two (DNA) strings"

function distance(stranda, strandb)
    hamming = 0
    acgt = ['A', 'C', 'G', 'T']
    if length(stranda) == length(strandb)
        for (a,b) in zip(stranda,strandb)
            if a ∉ acgt || b ∉ acgt
                throw(ArgumentError("Not a valid pair of DNA strands"))
            elseif a != b
                hamming +=1
            else 
            end
        end
        hamming
    else 
        throw(ArgumentError("The strands are not of the same length"))
    end

end

# strand1 = "GTAAACCCTTTTCATTTGGACAGATCGACTCCTTATCCATTCTCAGAGATGTGTTGCTGGTCGCCG"
# strand2 = "GTAAACGCTTTTCATTTGGAGAGATCGACGCCTTATCCAGCTCAGAGATGGGTTGCTGGTGGCCCG"

# hamming_distance(strand1, strand2)