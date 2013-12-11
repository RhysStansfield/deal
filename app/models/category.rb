class Category < ActiveRecord::Base

  has_and_belongs_to_many :customers,
    join_table: "categories_customers"
  
end
