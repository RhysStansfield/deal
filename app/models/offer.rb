class Offer < ActiveRecord::Base
  belongs_to :business

  has_many :time_windows
  has_many :impressions
  has_many :clicks

  validates :users_time_availablity, presence: true

end
