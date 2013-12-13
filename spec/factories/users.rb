# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'michaelbottjer@hotmail.com'
    password 'devesh1234'
    password_confirmation 'devesh1234'

    factory :facebook_user do
      uid '1234'
      provider 'facebook'
    end

    factory :google_user do
      uid '1234'
      provider 'google_oauth2'
    end


  end
end