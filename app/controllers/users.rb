get '/users' do
  erb :'/users/index'
end

get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  erb :'/decks/index' #if successful
  erb :'/users/new' #if unsuccessful
end

