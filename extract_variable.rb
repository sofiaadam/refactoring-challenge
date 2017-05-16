# extract_variable.rb
#https://refactoring.com/catalog/extractVariable.html

username = "Alice"
username_validations = ( username.length > 3 && username.length <= 7 ) 
username_starts_with = ( username.downcase.start_with?("a", "e", "i", "o", "u") )

# if ( username.length > 3 && username.length <= 7 ) || ( username.downcase.start_with?("a", "e", "i", "o", "u") )
# 	puts "Congratulations #{username}! You won 1 million dollars!"
# else
# 	puts "Please try again!"


if username_validations || username_starts_with
	puts "Congratulations #{username}! You won 1 million dollars!"
else
	puts "Please try again!"
end


