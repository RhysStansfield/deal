class CreateConversions < ActiveRecord::Migration
  def change
    create_table :conversions do |t|
      t.integer :customer_id
      t.integer :offer_id

      t.timestamps
    end
  end
end
