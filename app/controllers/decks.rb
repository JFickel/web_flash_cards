get '/decks' do
  if session[:user_id]
    erb :'decks/index'
  else
    erb :index
  end
end


get '/decks/:id' do |id|
  @deck=Deck.find(id)
  erb :'/decks/show'
end
