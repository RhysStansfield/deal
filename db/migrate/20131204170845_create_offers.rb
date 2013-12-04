class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :business

      t.timestamps
    end
  end
end
