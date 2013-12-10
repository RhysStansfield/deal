class AddColumnsToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :available_from, :datetime
    add_column :offers, :available_to, :datetime
    add_column :offers, :users_time_availablity, :datetime
  end
end
