class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string   :cid, :name, :gender, :firstelectoff, :party, :office, :lastname, :state
      t.timestamps
    end
  end
end
