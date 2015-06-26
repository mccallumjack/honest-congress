class ContributionSummary < ActiveRecord::Base
  belongs_to :politician

  def self.create_summaries(summary,politician)
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
