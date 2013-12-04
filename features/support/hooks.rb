Before ('@sign_in') do 
  FactoryGirl.create(:user)
  visit '/users/sign_in'
  fill_in 'Email', with: 'michaelbottjer@hotmail.com'
  fill_in 'Password', with: 'devesh1234'
  click_button 'sign in'
  expect(current_path).to eq '/'
end