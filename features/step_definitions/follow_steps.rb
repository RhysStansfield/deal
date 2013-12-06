Given(/^I have added Nike as a business$/) do
  FactoryGirl.create(:business_user)
  visit '/'
end

When(/^I go to the participating businesses page$/) do
 click_link 'Participating Businesses'
end

When(/^I follow Nike$/) do
  click_link 'Follow'
end

Then(/^Nike should have "(.*?)" follower$/) do |arg1|
  expect(page).to have_content 1 
end