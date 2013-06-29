get '/rounds' do
  erb :'/rounds/index'
end

post '/rounds' do 
  @round = Round.create(params[:round].merge(user_id: session[:user_id]))
  redirect "/rounds/#{@round.id}/cards"
end

get '/rounds/:id' do |id|
  erb :'/rounds/show'
end
