class AddUserTypeDefault < ActiveRecord::Migration
  def change
    change_column_default(:users,:type,"Customer")
  end
end
