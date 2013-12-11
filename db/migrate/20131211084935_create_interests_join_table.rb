class CreateInterestsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :customers, :categories do |t|
      # t.index [:customer_id, :category_id]
      # t.index [:category_id, :customer_id]
    end
  end
end
