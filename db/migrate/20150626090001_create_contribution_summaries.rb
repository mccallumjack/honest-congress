class CreateContributionSummaries < ActiveRecord::Migration
  def change
    create_table :contribution_summaries do |t|
      t.integer  :politician_id
      t.string   :state, ,:cid, :party, :chamber, :party, :total, :spend, :cash_on_hand, :debt, :origin
      t.timestamps
    end
  end
end
