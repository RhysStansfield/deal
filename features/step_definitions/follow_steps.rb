Given(/^I have added Nike as a business$/) do
  FactoryGirl.create(:business)
  visit '/'
end

When(/^I go to the participating businesses page$/) do
 click_link 'Participating Businesses'
end

When(/^I follow Nike$/) do
  click_button 'Follow'
end

Then(/^Nike should have "(.*?)" follower$/) do |arg1|
  expect(page).to have_content 1 
end

Given(/^I have pressed follow Nike$/) do
  FactoryGirl.create(:business)
  visit '/businesses'
  click_button 'Follow'
  expect(page).not_to have_content 0
  expect(page).to have_content 1
end

When(/^I press "(.*?)"$/) do |button|
  click_button button
end

Then(/^Nike should have "(.*?)" followers$/) do |arg1|
  expect(page).not_to have_content 1
  expect(page).to have_content 0
end