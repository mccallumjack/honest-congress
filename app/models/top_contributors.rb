class TopContributors < ActiveRecord::Base
  belongs_to :politician

  def self.create_contributors(summary,politician)
    TopContributors.create(industry_name: summary["industry_name"],
                                 indivs: summary["indivs"],
                                 pacs: summary["pacs"],
                                 total: summary["total"],
                                 politician: politician
                                 )
  end

end
