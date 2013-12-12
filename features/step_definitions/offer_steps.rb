And(/^"(.*?)" has added an offer$/) do |business|
	FactoryGirl.create(:offer)
	visit '/offers'
end


Given(/^I am on the create offer page$/) do
  visit '/offers/new'
end

Given(/^I am on the offers page$/) do
  visit '/offers'
end

When(/^I follow "(.*?)"$/) do |link|
  click_link link
end

Then(/^I should see purchase button$/) do
  page.has_css? '.stripe-button'
end