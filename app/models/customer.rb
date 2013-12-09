class Customer < User

  has_and_belongs_to_many :businesses

end
