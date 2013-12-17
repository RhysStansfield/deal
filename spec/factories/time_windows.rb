# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :time_window do
    start_time "2013-12-09 23:42:56"
    end_time "2013-12-09 23:42:56"
  end

  factory :with_user_and_offer_id, parent: :time_window do
    user_id 1
    offer_id 1
  end
end
