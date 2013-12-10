class TimeWindow < ActiveRecord::Base
  belongs_to :offer
  belongs_to :user

  validates :offer_id, uniqueness: {scope: :user_id}

  after_create :set_start_time_end_time

  def set_start_time_end_time
    self.start_time = Time.now
    if self.users_time_availablity != nil
      self.end_time = (self.users_time_availablity).seconds.from_now
    else
      self.end_time = 30.seconds.from_now
    end
    save
  end
end
