Given(/^that I click the sign up button$/) do
  visit '/'
  click_link 'Sign Up'
end

When(/^I enter my details and submit$/) do
  fill_in 'Email', with: 'a@a.com'
  fill_in 'Password', with: 'abcdefghij', match: :prefer_exact
  fill_in 'Password confirmation', with: 'abcdefghij'
  click_button 'Sign up'
end

Then(/^I should be signed up$/) do
  expect(page).to have_content("You have signed up successfully")
end

Given(/^that I click the sign in button$/) do
  visit '/'
  click_link 'Sign In'
  expect(current_path).to eq '/users/sign_in'
end

When(/^I enter my details and click sign in$/) do
  FactoryGirl.create(:customer)
  fill_in 'Email', with: 'michaelbottjer@hotmail.com'
  fill_in 'Password', with: 'devesh1234'
  click_button 'Sign in'
end

Then(/^I should be signed in$/) do
  expect(page).to have_content "Signed in successfully"
end

Given(/^that I click sign out$/) do
  click_link 'Sign Out'
end

Then(/^I should be signed out$/) do
  expect(page).to have_content "Signed out successfully"
end
