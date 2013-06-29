helpers  do

	def start_game
		@pile = []
		@pile = @round.deck.cards
		@pile.shuffle!

		card = @pile.pop
		until @pile.empty?
			if card.guess_correct?(@guess)
				card = @pile.pop
				@round.correct_guesses += 1
			else
				@round.incorrect_guesses += 1
				@pile.unshift(card)
			end
		end
	end
	
end