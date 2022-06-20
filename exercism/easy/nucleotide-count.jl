"""
count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.
Invalid strands raise a `DomainError`.
"""
function count_nucleotides(strand)
    
    # first check strand is valid DNA
    if length(replace(strand, r"[ACGT]" => "")) > 0
        throw(DomainError(:strand))
    end

    # count each nucleotide
    nucleotides = Dict('A'=>0, 'C'=>0, 'G'=>0, 'T'=>0)
    for letter = strand
        nucleotides[letter] += 1
    end

    return nucleotides
end
