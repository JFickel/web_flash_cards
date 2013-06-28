get '/users' do
  erb :'/users/index'
end

get '/users/new' do
  erb :'/users/new'
end

get '/users/:id' do |id|
  @user=User.find(id)
  erb :'/users/show'
end

post '/users' do
  user = User.new(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
  if user.save
    session[:user_id] =  user.id
    session.delete(:signup_errors)
    redirect '/decks'
     #if successful
  else
    session[:signup_errors] = user.errors
    erb :'/users/new' #if unsuccessful
  end
end

