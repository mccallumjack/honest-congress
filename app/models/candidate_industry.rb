class CandidateIndustry < ActiveRecord::Base
  belongs_to :politician

  def self.create_industry(industries,politician)
    industries.each do |industry|
      self.create(industry_name: industry["industry_name"],
                                 indivs: industry["indivs"],
                                 pacs: industry["pacs"],
                                 total: industry["total"],
                                 politician: politician
                                 )
    end
  end

end
