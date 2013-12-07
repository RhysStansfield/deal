class AddFollowersToUsers < ActiveRecord::Migration
  def change
    add_column :users, :followers, :string, array: true, default: []
  end
end
