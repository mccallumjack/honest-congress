class ContributionSummary < ActiveRecord::Base
  belongs_to :politician
  validates :cid, uniqueness: {scope: :cycle}

  def self.create_summaries(summary,politician)
    return if ContributionSummary.all.map(&:cid).include?(summary["cid"])
    ContributionSummary.create(cycle: summary["cycle"],
                                 chamber: summary["chamber"],
                                 total: summary["total"],
                                 spend: summary["spend"],
                                 debt: summary["debt"],
                                 cash_on_hand: summary["cash_on_hand"],
                                 politician: politician
                                 )
  end




end
