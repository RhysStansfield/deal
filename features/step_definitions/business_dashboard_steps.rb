Given(/^I have signed up as a business$/) do
  click_link 'Sign Out'
  visit '/users/sign_in'
end

When(/^I log in$/) do
  expect(current_path).to eq '/users/sign_in'
  business = Business.last
  fill_in 'Email', with: business.email
  fill_in 'Password', with: '12345678'
  click_button 'Sign in'
end

Then(/^I should see my dashboard$/) do
  business = Business.last
  expect(current_path).to eq dashboard_business_path(business.id)
end

When(/^A user visits the Offers page$/) do 
  visit '/offers'
  page.evaluate_script "$('.example-basic:first').trigger('inview')"
  sleep 0.5

  expect(page).to have_content "Nike"
  click_link 'Sign Out'
end

Then(/^I should see the offer impressions increase by one$/) do
  visit '/users/sign_in'
  business = Business.last
  fill_in 'Email', with: business.email
  fill_in 'Password', with: '12345678'
  click_button 'Sign in'

  expect(current_path).to eq dashboard_business_path(business.id)
  expect(page).to have_content 1
end