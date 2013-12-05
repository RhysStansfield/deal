class AddPriceToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :price, :decimal
  end
end
