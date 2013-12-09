class AddBusinessRefToOffer < ActiveRecord::Migration
  def change
    add_reference :offers, :business, index: true
  end
end
