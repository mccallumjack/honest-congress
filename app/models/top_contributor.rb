class TopContributor < ActiveRecord::Base
  belongs_to :politician

  def self.create_contributors(contributors,politician)
    contributors.each do |contr|
      self.create(org_name: contr["org_name"],
                                 indivs: contr["indivs"],
                                 pacs: contr["pacs"],
                                 total: contr["total"],
                                 politician: politician
                                 )
    end
  end

end
