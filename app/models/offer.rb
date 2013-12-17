class Offer < ActiveRecord::Base
  belongs_to :business

  has_many :time_windows
  has_many :impressions
  has_many :clicks
  has_many :conversions

  validates :users_time_availablity, presence: true
  validates :available_from, presence: true
  validates :available_to, presence: true
  validates :price, presence: true
  validates :product, presence: true
  validates :RRP, presence: true
  validates :product_description, presence: true, length: {minimum: 5, maximum: 320}

  has_attached_file :avatar, styles: {
    large: "430x230>"
  }

  def num_of_impressions
    impressions.size
  end

  def unique_impressions
    impressions.map(&:user_id).uniq.size
  end

  def num_of_clicks
    clicks.size
  end

  def num_of_conversions
    conversions.size
  end

  def average_time_to_conversion
    conversions.average(:time_taken_to_buy)
  end

  def active?
    Time.now < self.available_to and Time.now > self.available_from
  end

  def eligible_for?(user)
    window = self.time_windows.find_by(user: user)

    if active?
      return true if window.nil?
      (window.end_time > Time.now)
    else
      return false
    end

  end

end
