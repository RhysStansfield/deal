class AddTimeToBuyToConversions < ActiveRecord::Migration
  def change
    add_column :conversions, :time_taken_to_buy, :integer
  end
end
