class Character < ActiveRecord::Base
	belongs_to :user
	belongs_to :race

	def new_ability_scores
		scores = []
		6.times do
			roll = []
				5.times do
					roll.push(rand(1...7))
				end
			roll.sort!.reverse!
			roll.pop
			roll.pop
			scores.push roll.reduce(:+)
		end
		return scores.sort!.reverse!
	end
end
