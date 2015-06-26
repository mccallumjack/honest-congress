get '/' do
  erb :index
end

get '/politicians/new' do

end

get '/locations/new' do
  erb :'forms/_location_info', layout: false
end