class CreateTopContributors < ActiveRecord::Migration
  def change
    create_table :top_contributors do |t|
      t.integer  :politician_id
      t.string   :cid, :cycle, :origin, :org_name, :total, :pacs, :indivs
      t.timestamps
    end
  end
end
