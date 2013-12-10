class TimeWindow < ActiveRecord::Base
  belongs_to :offer
  belongs_to :users
end
