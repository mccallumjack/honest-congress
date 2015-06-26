module OpenSecret

  MEMBER = OpenSecrets::Member.new
  CANDIDATE = OpenSecrets::Candidate.new


  def get_legislators_by_state(state)
    MEMBER.get_legislators({:id => state})["response"]
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

end
