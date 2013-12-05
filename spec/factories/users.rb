# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'michaelbottjer@hotmail.com'
    password 'devesh1234'
    password_confirmation 'devesh1234'
  end
end