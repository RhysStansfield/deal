When(/^I create an offer$/) do
  fill_in 'Product', with: "Fuelband"
  fill_in 'Description', with: "Fitness tracker"
  fill_in 'Price', with: 90
  fill_in 'How long should customers get', with: 50
  click_button 'Activate Offer'
end

Then(/^I should see the brand's post on the offers page$/) do
  click_link 'Sign out'
  visit '/users/sign_in'
  customer = FactoryGirl.create(:customer)
  fill_in 'Email', with: customer.email
  fill_in 'Password', with: customer.password
  visit '/offers'
  expect(page).to have_content "Nike"
end

Given(/^I have added a product, the Nike fuelband$/) do
  FactoryGirl.create(:offer)
  visit '/offers'
end

When(/^I follow the see offer link on the offers page$/) do
  expect(current_path).to eq '/offers'
  click_link 'See offer'
end

Then(/^I should see the product details$/) do
  expect(page).to have_content "Nike"
  expect(page).to have_content "Nike"
  expect(page).to have_content "N"
  expect(page).to have_content "£90.00"
end

Given(/^I have added an offer$/) do
  FactoryGirl.create(:offer)
end
