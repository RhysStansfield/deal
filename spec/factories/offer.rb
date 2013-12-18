FactoryGirl.define do
  factory :offer do
    product 'Nike fuelband'
    product_description 'Fitness tracker' 
    price 90
    users_time_availablity 30
    conversions { Array.new(3) { FactoryGirl.build(:conversion) } }
    available_from "13/12/2013"
    available_to "14/12/2013"
    RRP 120
    business 
  end

  factory :with_dashboard_stats, parent: :offer do
    impressions { Array.new(2) { FactoryGirl.create(:impression) } }
    clicks { Array.new(2) { FactoryGirl.create(:click) } }
    conversions { [FactoryGirl.create(:conversion)] }
  end

  factory :future_end_time, parent: :offer do
    users_time_availablity 30
    available_from "13/12/2013"
    available_to "31/12/2999"
  end

end