#extract_method.rb
#use this as tips for the first one : http://refactoring.com/catalog/extractMethod.html

# username = "Alice"

# if ( username.length > 3 && username.length <= 10 ) || ( username.downcase.start_with?("a", "e", "i", "o", "u") )
# 	puts "Congratulations #{username}! You won 10 dollars!"
# else
# 	puts "Thanks for joining!"
# end

# username = "Bobby"

# if ( username.length > 3 && username.length <= 10 ) || ( username.downcase.start_with?("b", "g", "l", "p") )
# 	puts "Congratulations #{username}! You won 50 dollars!"
# else
# 	puts "Thanks for joining!"
# end

# username = "Xena"

# if ( username.length > 3 && username.length <= 10 ) || ( username.downcase.start_with?("q", "u", "x", "y", "z") )
# 	puts "Congratulations #{username}! You won 100 dollars!"
# else
# 	puts "Thanks for joining!"
# end

def winner(username, prize_money, alphabets)
	name_length = (username.length > 3 && username.length <= 10)
	name_starts_with = username.downcase.start_with?(*alphabets) # *make it into an array

	if ( name_length || name_starts_with )
		puts "Congratulations #{username}! You won #{prize_money} dollars!"
	else
		puts "Thanks for joining"
	end
end

winner("Alice", 10, ["a", "e", "i", "o", "u"])
winner("Bobby", 50, ["b", "g", "l", "p"])
winner("Xena", 100, ["q", "u", "x", "y", "z"])