get '/rounds' do
  erb :'/rounds/index'
end

post '/rounds' do 
  erb :'/rounds/show'
end

get '/rounds/:id' do |id|
  erb :'/rounds/show'
end
