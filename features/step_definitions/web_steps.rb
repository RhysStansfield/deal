Then(/^I should not see "(.*?)"$/) do |content|
  expect(page).not_to have_content content
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content content
end

Given(/^I should see the page$/) do
  save_and_open_page
end

When(/^I follow "(.*?)"$/) do |link|
  click_link link
end

When(/^I click sign out$/) do
  click_link "Sign Out"
  expect(page).to have_content "Signed out successfully"
end

Given(/^show me the page$/) do
  save_and_open_page
end