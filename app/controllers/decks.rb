get '/decks' do
  if session[:user_id]
    erb :'decks/index'
  else
    erb :index
  end
end


