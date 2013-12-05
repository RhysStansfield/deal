class AddProductToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :product, :string
  end
end
