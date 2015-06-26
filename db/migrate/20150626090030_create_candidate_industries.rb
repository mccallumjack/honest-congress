class CreateCandidateIndustries < ActiveRecord::Migration
  def change
    create_table :candidate_industries do |t|
      t.integer  :politician_id
      t.string   :cid, :cycle, :origin, :industry_name, :indivs, :pacs, :total
    end
  end
end
