get '/' do
  erb :index
end

get '/politicians/new' do

end

get '/location/new' do
  erb :'forms/_location_info.erb', layout: false
end