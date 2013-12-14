Given(/^I visit the business sign up page$/) do
  visit '/business/sign_up'
end

When(/^I fill in the form$/) do
  fill_in 'Email', with: 'a@a.com'
  fill_in 'Password', with: 'abcdefghij', match: :prefer_exact
  fill_in 'Password confirmation', with: 'abcdefghij'
  fill_in 'Company name', with: 'Nike'
  choose 'Books'
  click_button 'Sign up'
end

When(/^I fill in the form with non matching passwords$/) do
  fill_in 'Email', with: 'a@a.com'
  fill_in 'Password', with: 'abcdefghij', match: :prefer_exact
  fill_in 'Password confirmation', with: 'abcdefghiz'
  fill_in 'Company name', with: 'Nike'
  choose 'Books'
  click_button 'Sign up'
end

Then(/^I should not see a follow button$/) do 
  expect(page).not_to have_button 'Follow'
end
