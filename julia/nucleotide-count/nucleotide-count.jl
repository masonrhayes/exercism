"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
using DataStructures

function count_nucleotides(strand::String)
    A_count = 0
    C_count = 0
    G_count = 0
    T_count = 0

    for character in strand
        if contains("A", character)
            A_count +=1
        elseif contains("C", character)
            C_count +=1
        elseif contains("G", character)
            G_count +=1
        elseif contains("T", character)
            T_count +=1
        end
    end
    if 0 <= A_count + C_count + G_count + T_count === length(strand)
        return Dict('A' => A_count, 'C' => C_count, 'G' => G_count, 'T' => T_count)
    else throw(DomainError(strand, "this is not a valid nucleotide sequence"))
    end
end

strand = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"

count_nucleotides("AGXXACT")

## Or you can just do this

function nucleotide_count(strand::String)
    for character in strand
        if character != 'A' && character != 'G' && character != 'C' && character != 'T'
            return DomainError
        else
            return DataStructures.counter(strand)
        end
    end
end

nucleotide_count(strand)



