class AddProductDescriptionToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :product_description, :text
  end
end
