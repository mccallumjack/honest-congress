get '/' do
  erb :index
end

get '/politicians/new' do

end

get '/locations/new' do
  erb :'forms/_location_info', layout: false
end

post '/politicians'
  state = params[:state]
  @legislators = OpenSecrets.get_legislators_by_state(state)
  puts @legislators
  @legislators = OpenSecrets.get_legislators_by_state(state)
end