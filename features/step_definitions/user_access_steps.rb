Given(/^that I click the sign up button$/) do
  visit '/'
  click_link 'Sign Up'
end

When(/^I enter my details and submit$/) do
  fill_in 'Email', with: 'a@a.com'
  fill_in 'Password', with: 'abcdefghij'
  fill_in 'Password confirmation', with: 'abcdefghij'
  click_button 'Sign up'

end

Then(/^I should be signed in$/) do
  expect(page).to have_content("You have signed up successfully")
end