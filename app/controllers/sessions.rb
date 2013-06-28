get '/sessions/new' do
  erb :'/sessions/new'
end

post '/sessions' do
  if user = User.authenticate(params[:email],params[:password])
    session[:user_id] = user.id
    erb :'decks/index'
  else
    erb :'/sessions/new'
  end
end

delete '/sessions' do
  session.clear
  redirect '/'
end
