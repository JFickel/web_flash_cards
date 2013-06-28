class Card < ActiveRecord::Base
  def guess_correct?(guess)
    guess == @answer
  end
  # Remember to create a migration!
end
