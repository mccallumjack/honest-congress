class ContributionSummary < ActiveRecord::Base
  belongs_to :politician
  validates :cid, uniqueness: {scope: :cycle}

  def self.create_summaries(json_array)
    json_array.each do |summary|
    next if ContributionSummary.all.map{|entry| [entry.cid, entry.cycle]}.include?([summary.cid,summary.cycle])
    ContributionSummary.create(cycle: summary.cycle,
                                 chamber: summary.chamber,
                                 total: summary.total,
                                 spent: summary.spent,
                                 debt: summary.debt,
                                 cash_on_hand: summary.cash_on_hand
                                 )
    end
  end




end
