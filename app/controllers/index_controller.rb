
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
  p @legislators
  Politician.create_politicians_from_json(@legislators)
end

MEMBER = OpenSecrets::Member.new
CANDIDATE = OpenSecrets::Candidate.new


def get_legislators_by_state(state)
  MEMBER.get_legislators({:id => state})["response"]["legislator"]
end

def get_top_contributors_by_cid(cid)
  CANDIDATE.industries({:cid => CID})["response"]
end

def get_candidate_summaries_by_cid(cid)
  CANDIDATE.summary({:cid => CID})["response"]
end

def get_top_industries_by_cid(cid)
  CANDIDATE.industries({:cid => CID})["response"]
end
