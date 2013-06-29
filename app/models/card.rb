class Card < ActiveRecord::Base
	belongs_to :deck
  def guess_correct?(guess)
    guess == @answer
  end
  # Remember to create a migration!
end
