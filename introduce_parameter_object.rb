# introduce_parameter_object.rb
#http://refactoring.com/catalog/introduceParameterObject.html

class GamePackageCalculator

	BASIC_PACKAGE_FACTOR = 1.0
	PREMIUM_PACKAGE_FACTOR = 2.1
	BASIC_RATE = 1
	PREMIUM_RATE = 2
	GOLD_LIFE_RATIO = 0.2
	POWERUPS_LIFE_RATIO = 0.5


	#calculates the cost of a gamer who wants to get X gold, Y powerup and number of lives derived from X gold and Y powerup. 
	def calculate_cost(gold, powerups, premium = nil)

		lives = calculate_lives(data_params) 
		
		if premium
			premium_cost(data_params) 
		else
			basic_cost(data_params)
		end
	end	

	private 

	def calculate_lives(data_params)
		(data_params[:gold] * GOLD_LIFE_RATIO ).round(0) + (data_params[:powerups] * POWERUPS_LIFE_RATIO).round(0) 
	end


	def premium_cost(data_params)
		PREMIUM_PACKAGE_FACTOR * data_params[:lives] + PREMIUM_RATE * (data_params[:gold] + data_params[:powerups])
	end

	def basic_cost(data_params)
		BASIC_PACKAGE_FACTOR * data_params[:lives] + BASIC_RATE * (data_params[:gold] + data_params[:powerups])
	end

end



