class AddIdsToTimeWindows < ActiveRecord::Migration
  def change
    add_column :time_windows, :user_id, :integer
    add_column :time_windows, :offer_id, :integer
  end
end
