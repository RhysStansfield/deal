class Offer < ActiveRecord::Base
  belongs_to :business

  has_many :time_windows
  has_many :impressions
  has_many :clicks
  has_many :conversions

  validates :users_time_availablity, presence: true
  validates :available_from, presence: true
  validates :available_to, presence: true

  has_attached_file :avatar, styles: {
    large: "500x500>", medium: "300x300>", thumb: "100x100>"
  }

end
