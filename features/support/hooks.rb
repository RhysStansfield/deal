Before ('@sign_in') do 
  FactoryGirl.create(:customer)
  visit '/users/sign_in'
  fill_in 'Email', with: 'michaelbottjer@hotmail.com'
  fill_in 'Password', with: 'devesh1234'
  click_button 'Sign in'
  expect(current_path).to eq '/offers'
end

Before ('@business_sign_in') do
  business = FactoryGirl.create(:with_offer)
  visit '/users/sign_in'
  fill_in 'Email', with: business.email
  fill_in 'Password', with: business.password
  click_button 'Sign in'
  expect(current_path).to eq dashboard_business_path(business.id)
end