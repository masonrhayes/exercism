# Write the function that simply returns the RNA nucleotide that is the complement of a given DNA nucleotide.

function to_rna(nucleotide::Char)
    nucleotide == 'C' ? 'G' : 
        nucleotide == 'G' ? 'C' : 
        nucleotide == 'A' ? 'U' : 
        nucleotide == 'T' ? 'A' : 
        error("Invalid nucleotide")
end

to_rna(dna_strand::String) = map(nucleotide -> to_rna(nucleotide), dna_strand)

