class Card < ActiveRecord::Base
	
	belongs_to :deck

  def guess_correct?(guess)
    guess == self.answer
  end
  
end
