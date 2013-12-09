class Offer < ActiveRecord::Base
  belongs_to :business
  has_many :impressions



end
