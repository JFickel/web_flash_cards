get '/rounds' do
  erb :'/rounds/index'
end

post '/rounds' do 
  @round = Round.create(guesses: 10, deck_id: params[:deck_id], user_id: session[:user_id])
  erb :'/rounds/show'
end

get '/rounds/:id' do |id|
  erb :'/rounds/show'
end
