FactoryGirl.define do

  factory :business do
    company_name 'Nike'
    email 'ceo@nike.com'
    password '12345678'
    password_confirmation '12345678'
    type 'Business'
    offers []
    category
  end

  factory :business2, class: Business do
    company_name 'Nike'
    email 'ceo@nike.com'
    password '12345678'
    password_confirmation '12345678'
    type 'Business'
  	offers { Array.new(2) { FactoryGirl.build(:offer) } }
    category
  end



end
