class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  def correct_count
  	Guess.where(user_id: self.user_id, round_id: self.id, correct: true).count
  end

  def incorrect_count
  	Guess.where(user_id: self.user_id, round_id: self.id, correct: false).count
  end

end

