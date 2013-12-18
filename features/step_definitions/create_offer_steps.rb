When(/^I create an offer$/) do
  fill_in 'offer_product', with: "Fuelband"
  fill_in 'offer_product_description', with: "Fitness tracker"
  fill_in 'offer_price', with: 90
  fill_in 'offer_users_time_availablity', with: 50
  date_now = DateTime.now.strftime('%d/%m/%Y')
  date_then = DateTime.new(2050,12,12).strftime('%d/%m/%Y')
  fill_in 'When should the offer be available from?', with: date_now
  fill_in 'When should the offer stop being available?', with: date_then
  click_button 'Activate Offer'
end

Then(/^I should see the brand's post on the offers page$/) do
  visit '/offers'
  expect(page).to have_content "Nike"
end

Given(/^I have added a product, the Nike fuelband$/) do
  FactoryGirl.create(:offer)
  visit '/offers'
end

When(/^I follow the see offer link on the offers page$/) do
  expect(current_path).to eq '/offers'
  click_button "Show/Change Preferences"
  sleep 0.5
  check 'category_10'
  sleep 0.5
  first(".follow").click
  visit '/offers'
  sleep 0.5
  click_link 'See offer'
end

Then(/^I should see the product details$/) do
  expect(page).to have_content "fuelband"
  expect(page).to have_content "Fitness tracker"
  expect(page).to have_content "£90.00"
end

Given(/^I have added an offer$/) do
  FactoryGirl.create(:offer)
end

When(/^I personalize my available offers$/) do
  click_button "Show/Change Preferences"
  sleep 0.5
  check 'category_10'
  sleep 0.5
  first(".follow").click
  visit '/offers'
  sleep 0.5
end
