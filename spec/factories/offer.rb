FactoryGirl.define do
  factory :offer do
  	business
    product 'Nike fuelband'
    product_description 'Fitness tracker' 
    price 90
    users_time_availablity 30
    conversions { Array.new(3) { FactoryGirl.build(:conversion) } }
    business
  end
end