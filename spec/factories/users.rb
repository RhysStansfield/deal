FactoryGirl.define do

  factory :user do
    email 'michaelbottjer@hotmail.com'
    password 'devesh1234'
    password_confirmation 'devesh1234'
  end

  factory :business_user, class: User do
    company_name 'Nike'
    email 'ceo@nike.com'
    password '12345678'
    password_confirmation '12345678'
    type 'Business'
  end

end