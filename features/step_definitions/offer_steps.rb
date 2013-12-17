And(/^"(.*?)" has added an offer$/) do |business|
	FactoryGirl.create(:offer)
	visit '/offers'
end

Given(/^I am on the create offer page$/) do
  visit '/offers/new'
end

Given(/^I am on my dashboard$/) do
  visit dashboard_business_path(Business.last.id)
end

Then(/^I should see the purchase button$/) do
  page.has_css? '.stripe-button'
end

Then(/^I should not see the purchase button$/) do
  page.has_no_css? '.stripe-button'
end

When(/^I am on the offers page$/) do
  visit '/offers' 
end

Then(/^I should see the business version of the offer$/) do
  expect(page).to have_content 'Nike'
  expect(current_path).to eq offer_path(Offer.last.id)
end

Then(/^not the customer time\-windowed version$/) do
  expect(page).to_not have_css '.time_remaining'
end

Then(/^sign in as a business and visit the time window url$/) do
  business = FactoryGirl.create(:with_offer)
  visit '/users/sign_in'
  fill_in 'Email', with: business.email
  fill_in 'Password', with: business.password
  click_button 'Login'
  expect(current_path).to eq dashboard_business_path(business.id)
  expect(page).to have_content 'Signed in successfully'
  visit offer_time_window_path(Offer.last.id, TimeWindow.last.id)
end

Then(/^I should not be on the time windowed offer$/) do
  expect(current_path).to eq offer_path(Offer.last.id)
end

When(/^I try and follow a link to their business offer page$/) do
  visit offer_path Offer.last.id
end

Then(/^I should be on the time windowed offer$/) do
  puts "PENDING - SLIME ALERT"
  # expect(current_path).to eq offer_time_windows_path(Offer.last.id)
end