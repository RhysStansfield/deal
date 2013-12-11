Given(/^I have signed up$/) do
  visit '/'
  click_link 'Sign Up'
  fill_in 'Email', with: 'a@a.com'
  fill_in 'Password', with: 'abcdefghij', match: :prefer_exact
  fill_in 'Password confirmation', with: 'abcdefghij'
  click_button 'Sign up'
end

When(/^I choose the categories I am interested in$/) do
  expect(current_path).to eq '/'
  check 'Books'
  check 'Sports & Outdoors'
end