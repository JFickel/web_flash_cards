get '/rounds/:round_id/cards' do
	@guesses = Guess.where(user_id: session[:user_id], round_id: params[:round_id])
	card_ids = @guesses.empty? ? [0] : @guesses.map(&:card_id)
	@card = Card.where('id not in (?)', card_ids).first
	erb :'cards/show', layout: !request.xhr?
end