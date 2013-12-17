Given(/^I have signed up as a business$/) do
  click_link 'Sign Out'
  visit '/users/sign_in'
end

When(/^I log in$/) do
  expect(current_path).to eq '/users/sign_in'
  business = Business.last
  fill_in 'Email', with: business.email
  fill_in 'Password', with: '12345678'
  click_button 'Login'
end

Then(/^I should see my dashboard$/) do
  business = Business.last
  expect(current_path).to eq dashboard_business_path(business.id)
end

When(/^a user visits the offers page and sees that offer$/) do
  visit '/offers'
  click_button 'Show/Change Preferences'
  sleep 0.5
  check 'category_10'
  sleep 0.5
  first(".follow").click
  sleep 0.5
  visit '/offers'
  page.evaluate_script "$('.example-basic:first').trigger('inview')"
  sleep 0.5
  click_link 'Sign Out'
end

Then(/^I should see the offer impressions increase by one$/) do
  visit '/users/sign_in'
  business = Business.last
  fill_in 'Email', with: business.email
  fill_in 'Password', with: '12345678'
  click_button 'Login'
  expect(page).to have_content "Impressions: 1"
end

When(/^I visit the offer page and see that offer$/) do
  visit '/offers'
  page.evaluate_script "$('.example-basic:first').trigger('inview')"
  sleep 0.5
end

Then(/^I should not see the offer impressions increase by one$/) do
  business = Business.last
  visit dashboard_business_path(business)
  expect(page).to have_content "Impressions: 0"
end