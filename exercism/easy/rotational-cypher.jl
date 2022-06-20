function rotate(shift::Int64, input::Char)
    
    # Only change letters
    if !isletter(input)
        return input
    end
    
    base = Int(isuppercase(input) ? 'A' : 'a')
    code = Int(input)

    return Char(mod(code - base + shift, 26) + base)
end

function rotate(shift::Int, input::String)
    return input |> input -> map(letter -> rotate(shift, letter), input) |> join
end
