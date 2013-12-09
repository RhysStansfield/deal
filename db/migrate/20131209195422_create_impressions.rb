class CreateImpressions < ActiveRecord::Migration
  def change
    create_table :impressions do |t|
      t.integer :user_id
      t.integer :offer_id

      t.timestamps
    end
  end
end
