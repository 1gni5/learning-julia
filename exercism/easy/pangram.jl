"""
ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).
"""

function ispangram(input)

	# Case insensitive
	lowered = lowercase(input) 
	letters = Set(replace(lowered, r"[^a-z]" => ""))
	
	return (length(letters) == 26)
end

println(ispangram("Hello, World!"))
println(ispangram("The quick brown fox jumps over the lazy dog."))
