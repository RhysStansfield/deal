FactoryGirl.define do

  factory :business do
    company_name 'Nike'
    email 'ceo@nike.com'
    password '12345678'
    password_confirmation '12345678'
    type 'Business'
  end

end
