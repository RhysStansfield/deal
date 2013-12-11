class Business < User

  has_and_belongs_to_many :customers, -> { uniq }
  
  has_many :offers

  belongs_to :category

end
