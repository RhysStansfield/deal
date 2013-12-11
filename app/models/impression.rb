class Impression < ActiveRecord::Base
  belongs_to :offer
  belongs_to :user


end
