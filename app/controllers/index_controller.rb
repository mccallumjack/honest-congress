get '/' do
  erb :index
end

get '/politicians/new' do

end

get '/locations/new' do
  erb :'forms/_location_info', layout: false
end

post '/politicians' do
  state = params[:state]
  @legislators = get_legislators_by_state(state)
end


MEMBER = OpenSecrets::Member.new

def get_legislators_by_state(state)
  MEMBER.get_legislators({:id => state})["response"]
end
