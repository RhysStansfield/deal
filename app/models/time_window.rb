class TimeWindow < ActiveRecord::Base
  belongs_to :offer
  belongs_to :user

  validates :offer_id, uniqueness: {scope: :user_id}

  after_create :set_start_time_end_time

  def set_start_time_end_time
    self.start_time = Time.now
    offer_length = self.offer.users_time_availablity
    if offer_length > 120
      self.end_time = 120.seconds.from_now
    else
      self.end_time = offer_length.seconds.from_now
    end
    save
  end
end
