FactoryGirl.define do

  sequence :company_name do |n|
    "Nike#{n}"
  end

  sequence :email do |n|
    "ceo#{n}@nike.com" 
  end

  factory :business do
    company_name 
    email
    password '12345678'
    password_confirmation '12345678'
    type 'Business'
    offers []
    category
  end
  
  factory :with_conversions, parent: :business do
    offers { Array.new(2) { FactoryGirl.create(:offer) } }
  end

  factory :with_offer, parent: :business do
    offers { Array.new(1) { FactoryGirl.create(:offer) } }
  end

  factory :with_stats, parent: :business do
    offers { Array.new(2) { FactoryGirl.create(:with_dashboard_stats) } }
    customers { Array.new(1) { FactoryGirl.create(:customer) } }
  end
  
end
