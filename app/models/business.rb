class Business < User

  has_and_belongs_to_many :customers
  
end
