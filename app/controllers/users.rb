get '/users' do
  erb :'/users/index'
end

get '/users/new' do
  erb :'/users/new'
end


post '/users' do
  user = User.new(email: params[:email], password: params[:password])
  if user.save
    session[:user_id] =  user.id
    session.delete(:signup_errors)
    erb :'/decks/index'
     #if successful
  else
    session[:signup_errors] = user.errors
    erb :'/users/new' #if unsuccessful
  end
end

