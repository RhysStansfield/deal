class TimeWindow < ActiveRecord::Base
  belongs_to :offer
  belongs_to :user

  validates :offer_id, uniqueness: {scope: :user_id}

  after_create :set_start_time_end_time

  def set_start_time_end_time
    self.start_time = Time.now
    self.end_time = 30.seconds.from_now
    save
  end

  def had_offer_opportunity?

  end

end
