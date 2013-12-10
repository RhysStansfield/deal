class Offer < ActiveRecord::Base
  belongs_to :business

  has_many :time_windows
  has_many :impressions

end
