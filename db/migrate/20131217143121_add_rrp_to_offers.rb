class AddRrpToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :RRP, :integer
  end
end
