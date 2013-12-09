class CreateJoinTableBusinessCustomer < ActiveRecord::Migration
  def change
    create_join_table :businesses, :customers, table_name: 'users_users' do |t|
      # t.index [:business_id, :customer_id]
      # t.index [:customer_id, :business_id]
    end
  end
end
