FactoryGirl.define do
  factory :offer do
    product 'Nike fuelband'
    product_description 'Fitness tracker' 
    price 90
    users_time_availablity 30
    conversions { Array.new(3) { FactoryGirl.build(:conversion) } }
    available_from "13/12/2013"
    available_to "29/12/2013"
    business 
  end
end