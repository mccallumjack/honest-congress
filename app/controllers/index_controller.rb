
get '/' do
  erb :index
end

get '/locations/new' do
  erb :'forms/_location_info', layout: false
end

post '/politicians' do
  state = params[:state]
  @legislators = get_legislators_by_state(state)
  Politician.create_politicians_from_json(@legislators)
  @politicians = Politician.pull_by_state(state).reverse
  erb :'politicians/index', locals: {politicians: @politicians},layout: false
end

get '/politicians/:politician_id' do
  @politician = Politician.find_by_id(params[:politician_id])

  #Hit API for updated info
  @summary = get_candidate_summaries_by_cid(@politician.cid)
  @top_contributors = get_top_contributors_by_cid(@politician.cid)
  @top_industries = get_top_industries_by_cid(@politician.cid)

  #Creat if they don't already exist
  ContributionSummary.create_summaries(@summary,@politician)
  TopContributor.create_contributors(@top_contributors,@politician)
  CandidateIndustry.create_industry(@top_industries,@politician)

  erb :'politicians/show', locals:{politician: @politician}, layout:false
end




MEMBER = OpenSecrets::Member.new
CANDIDATE = OpenSecrets::Candidate.new


def get_legislators_by_state(state)
  MEMBER.get_legislators({:id => state})["response"]["legislator"]
end

def get_top_contributors_by_cid(cid)
  CANDIDATE.contributors({:cid => cid})["response"]["contributors"]["contributor"]
end

def get_candidate_summaries_by_cid(cid)
  CANDIDATE.summary({:cid => cid})["response"]["summary"]
end

def get_top_industries_by_cid(cid)
  CANDIDATE.industries({:cid => cid})["response"]["industries"]["industry"]
end
