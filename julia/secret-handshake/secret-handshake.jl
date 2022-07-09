function secret_handshake(code)
    potential_actions = ["wink", "double blink", "close your eyes", "jump"]
    # values = [1, 10, 100, 1000]
    actions = []
    bitnum = parse_bitstring(code)
    bitnum_digits = digits(bitnum)
    
    length(bitnum_digits) == 5 ? bitnum_digits = first(bitnum_digits, 4) : ()
    length(digits(bitnum)) > 5 ? [] : 
        for (digit, action) in zip(bitnum_digits, potential_actions)
            if digit == 1
                push!(actions, action)
            end
        end
    length(digits(bitnum)) == 5 ? reverse(actions) : actions
end

parse_bitstring(number) = parse(Int, bitstring(number))

