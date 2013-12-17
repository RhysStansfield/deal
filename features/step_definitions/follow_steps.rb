Given(/^I have added Nike as a business$/) do
  FactoryGirl.create(:business)
  visit '/'
end

When(/^I go to the participating businesses page$/) do
 click_link 'Participating Businesses'
end

When(/^I follow Nike$/) do
  find("form:last-of-type input[type='submit']").click
  sleep 0.5
end


Given(/^I have pressed follow Nike$/) do
  FactoryGirl.create(:business)
  visit '/businesses'
  find("form:first-of-type input[type='submit']").click
  expect("form:first-of-type input[type='submit']").not_to have_content 0
  expect(page).to have_content 1
end

When(/^I press "(.*?)"$/) do |button|
  click_button button
end

Then(/^Nike should have 1 follower$/) do 
  expect(page).to have_content(/Nike\d* 1/)
end

Then(/^Nike should have 0 followers$/) do 
  expect(page).to have_content(/Nike\d* 0/)
end

